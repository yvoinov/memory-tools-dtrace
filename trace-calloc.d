#!/usr/sbin/dtrace -s

    pid$1::calloc:entry
    {
        self->trace = 1;
        self->size = arg0;
    }

    pid$1::calloc:return
    {
        printf("<__%i;%Y;%d;calloc;0x%x;%d;\n", i++, walltimestamp, tid, arg1, self->size);
        ustack(50);
        printf("__>\n\n");

        self->trace = 0;
        self->size = 0;
    }
