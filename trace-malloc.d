#!/usr/sbin/dtrace -s

    pid$1::malloc:entry
    {
        self->trace = 1;
        self->size = arg0;
    }

    pid$1::malloc:return
    {
        printf("<__%i;%Y;%d;malloc;0x%x;%d;\n", i++, walltimestamp, tid, arg1, self->size);
        ustack(50);
        printf("__>\n\n");

        self->trace = 0;
        self->size = 0;
    }
