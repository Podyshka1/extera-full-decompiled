package com.googlecode.mp4parser.h264.read;

import com.googlecode.mp4parser.h264.CharCache;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BitstreamReader {
    protected static int bitsRead;
    private int curByte;
    protected CharCache debugBits = new CharCache(50);

    /* JADX INFO: renamed from: is */
    private InputStream f599is;
    int nBit;
    private int nextByte;

    public BitstreamReader(InputStream inputStream) {
        this.f599is = inputStream;
        this.curByte = inputStream.read();
        this.nextByte = inputStream.read();
    }

    public boolean readBool() {
        return read1Bit() == 1;
    }

    public int read1Bit() {
        if (this.nBit == 8) {
            advance();
            if (this.curByte == -1) {
                return -1;
            }
        }
        int i = this.curByte;
        int i2 = this.nBit;
        int i3 = (i >> (7 - i2)) & 1;
        this.nBit = i2 + 1;
        this.debugBits.append(i3 == 0 ? '0' : '1');
        bitsRead++;
        return i3;
    }

    public long readNBit(int i) {
        if (i > 64) {
            throw new IllegalArgumentException("Can not readByte more then 64 bit");
        }
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 1) | ((long) read1Bit());
        }
        return j;
    }

    private void advance() {
        this.curByte = this.nextByte;
        this.nextByte = this.f599is.read();
        this.nBit = 0;
    }

    public int readByte() {
        if (this.nBit > 0) {
            advance();
        }
        int i = this.curByte;
        advance();
        return i;
    }
}
