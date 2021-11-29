#! /usr/bin/env python3

import os
import sys


def compile(tex_file_name):
    os.system("xelatex -output-directory=./tex --shell-escape " +
              tex_file_name)


def full(tex_file_name):
    bcf_file_name = tex_file_name[:-3] + "bcf"
    compile(tex_file_name)
    compile(tex_file_name)
    os.system("biber " + bcf_file_name)
    compile(tex_file_name)
    compile(tex_file_name)


def once(tex_file_name):
    compile(tex_file_name)


def main():
    tex_file_name = sys.argv[2]
    print(f"{sys.argv[1]} {sys.argv[2]}")
    os.makedirs("tex", exist_ok=True)
    if sys.argv[1] == "once":
        once(tex_file_name)
    elif sys.argv[1] == "full":
        full(tex_file_name)
    else:
        raise ValueError(
            "First command line option should be 'once' or 'full'!")


if __name__ == "__main__":
    main()
