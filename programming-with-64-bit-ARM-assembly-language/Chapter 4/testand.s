

.global _start

_start: and w6, w6, #0xFF000000
        lsr w6, w6, #24
        b _start
