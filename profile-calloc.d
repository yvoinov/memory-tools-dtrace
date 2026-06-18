#!/usr/sbin/dtrace -qs

#pragma D option quiet
#pragma D option aggrate=0

dtrace:::BEGIN
{
    start_ts = timestamp;
}

pid$1::calloc:entry
{
    @sizes = quantize(arg0 * arg1);
}

dtrace:::END
{
    printa(@sizes);

    this->elapsed_sec = (timestamp - start_ts) / 1000000000;

    printf("\nElapsed time: %02d:%02d:%02d\n",
        (int)(this->elapsed_sec / 3600),
        (int)((this->elapsed_sec % 3600) / 60),
        (int)(this->elapsed_sec % 60));
}
