#!/usr/bin/env python3
# The visibility of the text is assessed using
# 1) Contrast ratio calculation (as it is defined in WCAG 2.x)
# 2) Advanced Perceptual Contrast Algorithm (draft of WCAG 3)
#    It claims to be a contrast for readability of text on
#    self-illuminated displays.
#    https://github.com/Myndex

import argparse
import sys


def decode(hex_str):
    # print(f'decode {hex_str}')
    hex = hex_str.strip(' #')
    r = int(hex[0:2], 16)
    g = int(hex[2:4], 16)
    b = int(hex[4:6], 16)
    return r, g, b


def prt_in_clrs(msg, fg, bg):
    """
    Print in terminal
    :msg: message
    :fg:  r,g,b color for text
    :bg:  r,g,b color for backgrond
    """
    # background<F8>
    r0, g0, b0 = bg
    ebg = f'\033[48;2;{r0};{g0};{b0}m'

    # foreground
    r1, g1, b1 = fg
    efg = f'\033[38;2;{r1};{g1};{b1}m'

    # end of escape
    eend = '\033[0m'
    print(ebg + efg + f'{msg} ' + eend)


def luminance(rgb):
    """
    Spectrally Weighted Luminance in [0,1]
        https://en.wikipedia.org/wiki/SRGB
    :rgb:    r,g,b color for text
    """
    weights = (0.2126, 0.7152, 0.0722)
    lumi = 0
    for i, x in enumerate(rgb):
        x /= 255
        if x <= 0.04045:
            lumi += weights[i] * x/12.92
        else:
            lumi += weights[i] * ((x+0.055)/1.055)**2.4
    return lumi


def contrast_ratio_WCAG2(rgb_fg, rgb_bg):
    """
    Contrast ratio calculation (WCAG 2.x) [1,21]
    https://www.w3.org/TR/WCAG20/#contrast-ratiodef
    :rgb_fg, rgb_bg: foreground and background colors
    """
    Lumi_fg = luminance(rgb_fg)
    Lumi_bg = luminance(rgb_bg)
    ratio = 1.
    if Lumi_fg > Lumi_bg:
        ratio = (Lumi_fg + 0.05) / (Lumi_bg + 0.05)
    else:
        ratio = (Lumi_bg + 0.05) / (Lumi_fg + 0.05)
    return ratio


def perceptual_lightness(rgb):
    """
    Perceptual Lightness (aka Lstar) in [0,100]
    Lstar is based on perception, and so is nonlinear in terms
    of light quantities, with a curve intended to match the human
    eye's photopic vision (approx. gamma is ^0.33):
    Lstar = 50% correspons to Lumi = 0.184
    """
    Lstar = luminance(rgb)
    if Lstar <= 0.008856:
        Lstar *= 903.3
    else:
        Lstar = Lstar**(1/3) * 116 - 16
    return Lstar


def LAB_difference(rgb_fg, rgb_bg):
    Lstar_fg = perceptual_lightness(rgb_fg)
    Lstar_bg = perceptual_lightness(rgb_bg)
    diff = abs(Lstar_bg - Lstar_fg)
    return diff


def Ys(rgb):
    """
    Estimated screen luminance (see APCA formulas)
    """
    weights = (0.2126729, 0.7151522, 0.0721750)
    Strc = 2.4
    Y = 0.
    for i, x in enumerate(rgb):
        x /= 255.
        Y += weights[i] * x**Strc
    return Y


def Fsc(Y):
    """
    Soft clip function (see APCA formulas)
    """
    B_thrsh = 0.022
    B_clip = 1.414
    fsc = 0.0
    if Y >= 0:
        if Y < B_thrsh:
            fsc = Y + (B_thrsh-Y)**B_clip
        else:
            fsc = Y
    return fsc


def Sapc(rgb_txt, rgb_bg):
    """
    Lightness difference according to 'polarity' (see APCA formulas)
    """
    Wscale = 1.14
    Ntx = 0.57
    Nbg = 0.56
    Rtx = 0.62
    Rbg = 0.65

    Ys_txt = Ys(rgb_txt)
    Ys_bg = Ys(rgb_bg)
    Ytxt = Fsc(Ys_txt)
    Ybg = Fsc(Ys_bg)
    s = 0.
    if Ybg > Ytxt:
        # normal polarity: dark text/light bg
        s = (Ybg**Nbg - Ytxt**Ntx) * Wscale
    else:
        # reverse polarity: light text/dark bg
        s = (Ybg**Rbg - Ytxt**Rtx) * Wscale
    return s


def Lc(rgb_txt, rgb_bg):
    """
    Lightness contrast (see APCA formulas) [-108,106]
    """
    Wclamp = 0.1
    Woffset = 0.027
    S_apc = Sapc(rgb_txt, rgb_bg)
    # print('S_apc=',S_apc,rgb_txt,rgb_bg)
    L_c = 0.
    if abs(S_apc) >= Wclamp:
        if S_apc > 0:
            L_c = (S_apc - Woffset)*100
        else:
            L_c = (S_apc + Woffset)*100
    return L_c


def main():
    parser = argparse.ArgumentParser(
        description='The visibility of text of a given color on '
        'a given background (white by default) is evaluated')
    parser.add_argument(
        'color', help='24bit hex color for text, eg #0000ff')
    parser.add_argument(
        '-b', '--background', default='#ffffff',
        help='background color, default #ffffff (white)')
    parser.add_argument(
        '-t', '--template', default='example text: ',
        help='text template to display in specified colors')
    args = parser.parse_args()

    # print('color=', args.color)
    # print('background=', args.background)
    # print('template=', args.template)

    hex_fg = args.color
    hex_bg = args.background
    text = args.template + f'fg {hex_fg} vs bg {hex_bg}'

    rgb_fg = decode(hex_fg)
    rgb_bg = decode(hex_bg)
    prt_in_clrs(text, rgb_fg, rgb_bg)

    ratio_WCAG2 = contrast_ratio_WCAG2(rgb_fg, rgb_bg)
    print(f'contrast ratio WCAG2= {ratio_WCAG2:.1f}')

    # check perceptual_lightness()
    # #777777 -> L=0.184, L*=50.0%
    # #9d5fb0 -> L=0.185, L*=50.1%
    # #318261 -> L=0.175, L*=48.9%
    # L = luminance(rgb_fg)
    # Lstar = perceptual_lightness(rgb_fg)
    # print(f'{hex_fg} -> L={L:.3f}, L*={Lstar:.1f}%')
    # Lstar_diff = LAB_difference(rgb_fg, rgb_bg)
    # print(f'LAB_difference: {Lstar_diff:.2f}')

    APCA_Lc = Lc(rgb_fg, rgb_bg)
    print(f'contrast APCA Lc= {APCA_Lc:.1f}')


if __name__ == "__main__":
    main()
