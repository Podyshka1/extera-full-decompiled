package org.telegram.messenger.audioinfo.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class PositionInputStream extends FilterInputStream {
    private long position;
    private long positionMark;

    public PositionInputStream(InputStream inputStream) {
        this(inputStream, 0L);
    }

    public PositionInputStream(InputStream inputStream, long j) {
        super(inputStream);
        this.position = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        this.positionMark = this.position;
        super.mark(i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        super.reset();
        this.position = this.positionMark;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = super.read();
        if (i >= 0) {
            this.position++;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.position;
        int i3 = super.read(bArr, i, i2);
        if (i3 > 0) {
            this.position = j + ((long) i3);
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = this.position;
        long jSkip = super.skip(j);
        this.position = j2 + jSkip;
        return jSkip;
    }

    public long getPosition() {
        return this.position;
    }
}
