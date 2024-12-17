#!/usr/sbin/dtrace -s

    pid$1::malloc:entry
    {
        self->trace = 1;
        self->size = arg0;

        @ = quantize(arg0);
    }

    pid$1::malloc:return
    {
        self->trace = 0;
        self->size = 0;
    }
