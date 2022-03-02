#!/bin/sh
./rx.py \
    --nocrypt \
    --args "rtl" \
    --gains 'lna:41' \
    --sample-rate 1960000  \
    --freq-error-tracking \
    --freq-corr 0 \
    --verbosity 1 \
    --phase2-tdma \
    --vocoder \
    --wireshark \
    --wireshark-host=localhost \
    --wireshark-port=4455 \
    --terminal-type=http:*:8765 \
    -T trunk.tsv
