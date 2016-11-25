#!/bin/sh

in_fn='t.txt'

if ! test -e "$in_fn" ; then
    seq 1 1000000 > "$in_fn"
fi
gvim -u NONE -U NONE "$in_fn" +500000 +"normal zz" +"normal VG"
