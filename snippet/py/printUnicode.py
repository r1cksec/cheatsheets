# -*- encoding: utf-8 -*-

import sys

def encPrint(string='', encoding='utf8'):
    sys.stdout.buffer.write(string.encode(encoding) + b'\n')

encPrint("Föö")

import codecs

with codecs.open('file', encoding='utf-8') as f:
    for line in f:
        print(repr(line))

