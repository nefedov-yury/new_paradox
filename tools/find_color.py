#!/usr/bin/env python3
# find color in table "closest" to given usinf KD-tree:
# distanse_RGB = sqrt(ΔR**2 + ΔG**2 + ΔB**2)

import argparse
import sys
import numpy as np                  # import NumPy
from scipy.spatial import KDTree


def decode(hex_str):
    # print(f'decode {hex_str}')
    hex = hex_str.strip(' #')
    r = int(hex[0:2], 16)
    g = int(hex[2:4], 16)
    b = int(hex[4:6], 16)
    return [r, g, b]


def hex_rgb(r, g, b):
    hex = f'#{int(r):02x}{int(g):02x}{int(b):02x}'
    return hex


def Pstr(hex_rgb):
    rgb = decode(hex_rgb)

    # background
    r, g, b = rgb
    bg = f'\033[48;2;{r};{g};{b}m'

    # foreground: color for text
    fg = f'\033[38;2;0;0;0m'  # black
    L = (0.1*r + 0.7*g + 0.2*b)/255  # Luma 'simple'
    if L < 0.5:
        fg = f'\033[38;2;255;255;255m'  # white

    # end of escape
    ee = '\033[0m'
    return bg + fg + f' {hex_rgb} ' + ee


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


def Str(h, s, l):
    s = f'{round(h)}°,{round(s)},{round(l)}'
    return s


def main():
    parser = argparse.ArgumentParser(
        description='given a color, finds the closest one '
        'among 256 terminal colors')
    parser.add_argument('-v', '--verbose', action="store_true",
                        help='increase output verbosity')
    parser.add_argument('color',
                        help='24bit hex color, eg #c8c8c8')
    args = parser.parse_args()

    #  print('verbose=', args.verbose)
    #  print('color=', args.color)

    list_name = []
    list_hex = []
    list_rgb = []
    list_hsl = []
    list_hsv = []
    with open('col_256.txt') as f:
        for line in f:
            ln = line.split()
            list_name.append(ln[1][1:])
            list_hex.append(ln[3][7:])
            trgb = ln[4][5:].split(',')
            rgb = [int(trgb[i]) for i in range(3)]
            list_rgb.append(rgb)

            hsl = rgb_hsl(*rgb)
            list_hsl.append(hsl)

            hsv = rgb_hsv(*rgb)
            list_hsv.append(hsv)

    if args.verbose:
        print('read from file:')
        for i, n in enumerate(list_name):
            print(f' {n} -> {list_rgb[i]}, {list_hex[i]}')

    rgb = decode(args.color)
    hsl = rgb_hsl(*rgb)
    hsv = rgb_hsv(*rgb)

    print(60*'-')
    print(f'color={Pstr(args.color)},'
          f' HSL({Str(*hsl)}), HSV({Str(*hsv)})')
    print(60*'-')

    tree_rgb = KDTree(np.array(list_rgb))
    d, i = tree_rgb.query(np.array(rgb))
    clr_prt = Pstr(f'#{list_hex[i]}')
    clr_rgb = tree_rgb.data[i]
    clr_hsl = rgb_hsl(*clr_rgb)
    clr_hsv = rgb_hsv(*clr_rgb)
    print(f'closest by RGB is {clr_prt}, dist={d:.2f}')
    print(f'{list_name[i]}: {hex_rgb(*clr_rgb)},'
          f' HSL({Str(*clr_hsl)}), HSV({Str(*clr_hsv)})')
    print(60*'-', '\n')

    tree_hsl = KDTree(np.array(list_hsl))
    d, i = tree_hsl.query(np.array(hsl))
    clr_prt = Pstr(f'#{list_hex[i]}')
    clr_rgb = decode(f'#{list_hex[i]}')
    clr_hsl = tree_hsl.data[i]
    clr_hsv = rgb_hsv(*clr_rgb)

    print(f'closest by HSL is {clr_prt}, dist={d:.2f}')
    print(f'{list_name[i]}: {hex_rgb(*clr_rgb)},'
          f' HSL({Str(*clr_hsl)}), HSV({Str(*clr_hsv)})')
    print(60*'-', '\n')

    tree_hsv = KDTree(np.array(list_hsv))
    d, i = tree_hsv.query(np.array(hsv))
    clr_prt = Pstr(f'#{list_hex[i]}')
    clr_rgb = decode(f'#{list_hex[i]}')
    clr_hsl = rgb_hsl(*clr_rgb)
    clr_hsv = tree_hsv.data[i]

    print(f'closest by HSV is {clr_prt}, dist={d:.2f}')
    print(f'{list_name[i]}: {hex_rgb(*clr_rgb)},'
          f' HSL({Str(*clr_hsl)}), HSV({Str(*clr_hsv)})')
    print(60*'-', '\n')


if __name__ == "__main__":
    main()
