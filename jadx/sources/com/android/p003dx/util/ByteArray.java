package com.android.p003dx.util;

import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class ByteArray {
    private final byte[] bytes;
    private final int size;
    private final int start;

    public interface GetCursor {
        int getCursor();
    }

    public ByteArray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("bytes == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i2 < i) {
            throw new IllegalArgumentException("end < start");
        }
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("end > bytes.length");
        }
        this.bytes = bArr;
        this.start = i;
        this.size = i2 - i;
    }

    public ByteArray(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public int size() {
        return this.size;
    }

    public ByteArray slice(int i, int i2) {
        checkOffsets(i, i2);
        return new ByteArray(Arrays.copyOfRange(this.bytes, i, i2));
    }

    public int underlyingOffset(int i) {
        return this.start + i;
    }

    public int getByte(int i) {
        checkOffsets(i, i + 1);
        return getByte0(i);
    }

    public int getShort(int i) {
        checkOffsets(i, i + 2);
        return getUnsignedByte0(i + 1) | (getByte0(i) << 8);
    }

    public int getInt(int i) {
        checkOffsets(i, i + 4);
        return getUnsignedByte0(i + 3) | (getByte0(i) << 24) | (getUnsignedByte0(i + 1) << 16) | (getUnsignedByte0(i + 2) << 8);
    }

    public long getLong(int i) {
        checkOffsets(i, i + 8);
        int byte0 = (getByte0(i) << 24) | (getUnsignedByte0(i + 1) << 16) | (getUnsignedByte0(i + 2) << 8) | getUnsignedByte0(i + 3);
        return (((long) (getUnsignedByte0(i + 7) | (getByte0(i + 4) << 24) | (getUnsignedByte0(i + 5) << 16) | (getUnsignedByte0(i + 6) << 8))) & 4294967295L) | (((long) byte0) << 32);
    }

    public int getUnsignedByte(int i) {
        checkOffsets(i, i + 1);
        return getUnsignedByte0(i);
    }

    public int getUnsignedShort(int i) {
        checkOffsets(i, i + 2);
        return getUnsignedByte0(i + 1) | (getUnsignedByte0(i) << 8);
    }

    public void getBytes(byte[] bArr, int i) {
        int length = bArr.length - i;
        int i2 = this.size;
        if (length < i2) {
            throw new IndexOutOfBoundsException("(out.length - offset) < size()");
        }
        System.arraycopy(this.bytes, this.start, bArr, i, i2);
    }

    private void checkOffsets(int i, int i2) {
        if (i < 0 || i2 < i || i2 > this.size) {
            throw new IllegalArgumentException("bad range: " + i + ".." + i2 + "; actual size " + this.size);
        }
    }

    private int getByte0(int i) {
        return this.bytes[this.start + i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getUnsignedByte0(int i) {
        return this.bytes[this.start + i] & 255;
    }

    public MyDataInputStream makeDataInputStream() {
        return new MyDataInputStream(makeInputStream());
    }

    public MyInputStream makeInputStream() {
        return new MyInputStream();
    }

    public class MyInputStream extends InputStream {
        private int cursor = 0;
        private int mark = 0;

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        public MyInputStream() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.cursor >= ByteArray.this.size) {
                return -1;
            }
            int unsignedByte0 = ByteArray.this.getUnsignedByte0(this.cursor);
            this.cursor++;
            return unsignedByte0;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (i + i2 > bArr.length) {
                i2 = bArr.length - i;
            }
            int i3 = ByteArray.this.size - this.cursor;
            if (i2 > i3) {
                i2 = i3;
            }
            System.arraycopy(ByteArray.this.bytes, this.cursor + ByteArray.this.start, bArr, i, i2);
            this.cursor += i2;
            return i2;
        }

        @Override // java.io.InputStream
        public int available() {
            return ByteArray.this.size - this.cursor;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.mark = this.cursor;
        }

        @Override // java.io.InputStream
        public void reset() {
            this.cursor = this.mark;
        }
    }

    public static class MyDataInputStream extends DataInputStream {
        private final MyInputStream wrapped;

        public MyDataInputStream(MyInputStream myInputStream) {
            super(myInputStream);
            this.wrapped = myInputStream;
        }
    }
}
