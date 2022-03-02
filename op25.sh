#!/bin/sh
./rx.py \
    --nocrypt \
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
