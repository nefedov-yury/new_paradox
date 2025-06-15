#!/usr/bin/env python3

import argparse
import sys


def decode(hex_str):
    # print(f'decode {hex_str}')
    hex = hex_str.strip(' #')
    r = int(hex[0:2], 16)
    g = int(hex[2:4], 16)
    b = int(hex[4:6], 16)
    return r, g, b


def rgb_hsl(r, g, b):
    # rgb -> hue, saturation, lightness
    R = r/255
    G = g/255
    B = b/255
    M = max(R, G, B)
    m = min(R, G, B)
    C = M-m  # Croma
    H = 0.   # Hue
    if C > 0:
        if M == R:
            H = (G-B)/C
            if H < 0:
                H += 6
        if M == G:
            H = 2 + (B-R)/C
        if M == B:
            H = 4 + (R-G)/C
    L = (M+m)/2  # Lightness
    SL = 0.      # Saturation
    tmp = 1 - abs(2*L-1)
    if tmp > 0:
        SL = C/tmp

    H *= 60       # Hue in [0,360]°
    SL *= 100     # Saturation in [0,100]
    L *= 100      # Lightness in [0,100]
    return [H, SL, L]


def rgb_hsv(r, g, b):
    # rgb -> hue, saturation, value
    # here the saturation is different from the saturation in HSL
    R = r/255
    G = g/255
    B = b/255
    M = max(R, G, B)
    m = min(R, G, B)
    C = M-m  # Croma
    H = 0.   # Hue
    if C > 0:
        if M == R:
            H = (G-B)/C
            if H < 0:
                H += 6
        if M == G:
            H = 2 + (B-R)/C
        if M == B:
            H = 4 + (R-G)/C
    V = M       # Value
    SV = 0.     # Saturation
    if V > 0:
        SV = C/V

    H *= 60      # Hue in [0,360]°
    SV *= 100    # Saturation in [0,100]
    V *= 100     # Value in [0,100]
    return [H, SV, V]


def Pstr(hex_rgb):
    rgb = decode(hex_rgb)
    hsl = rgb_hsl(*rgb)
    hsv = rgb_hsv(*rgb)

    lpr = lambda h,s,l: f'{round(h)}°,{round(s)},{round(l)}'
    # text to print
    pstr = f'{hex_rgb} HSL({lpr(*hsl)}) HSV({lpr(*hsv)})'


    # background
    r, g, b = rgb
    bg = f'\033[48;2;{r};{g};{b}m'

    # foreground: color for text
    fg = f'\033[38;2;0;0;0m'  # black
    # simplified formula for luminance: range: [0,1]
    L = (0.1*r + 0.7*g + 0.2*b)/255
    if L < 0.5:
        fg = f'\033[38;2;255;255;255m'  # white

    # end of escape
    ee = '\033[0m'
    return bg + fg + f' {pstr} ' + ee


def main():
    parser = argparse.ArgumentParser(
        description='displays the specified color in the terminal')
    parser.add_argument('color',
                        help='24bit hex color, eg #c8c8c8')
    args = parser.parse_args()

    # print('color=', args.color)
    hex_rgb = args.color
    print(Pstr(hex_rgb))


if __name__ == "__main__":
    main()
