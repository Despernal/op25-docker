#!/bin/sh
cd /op25/op25/gr-op25_repeater/apps/
./rx.py \
    --nocrypt \
    --crypt-behavior=2 \
    --args "rtl" \
    --gains 'lna:41' \
    --sample-rate 1960000  \
    --freq-error-tracking \
    --freq-corr 0 \
    --verbosity 0 \
    --phase2-tdma \
    --vocoder \
    --udp-player \
    --terminal-type=http:*:8765 \
    -T trunk.tsv
