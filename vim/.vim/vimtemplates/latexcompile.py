#! /usr/bin/env python3

import os
import sys


def main():
    tex_file_name = sys.argv[1]
    bcf_file_name = tex_file_name[:-3] + "bcf"
    os.system("pdflatex --shell-escape " + tex_file_name)
    os.system("pdflatex --shell-escape " + tex_file_name)
    os.system("biber " + bcf_file_name)
    os.system("pdflatex --shell-escape " + tex_file_name)
    os.system("pdflatex --shell-escape " + tex_file_name)


if __name__ == "__main__":
    main()
