#!/usr/sbin/dtrace -s

    pid$1::calloc:entry
    {
        self->trace = 1;
        self->size = arg0;

        @ = quantize(arg0);
    }

    pid$1::calloc:return
    {
        self->trace = 0;
        self->size = 0;
    }
