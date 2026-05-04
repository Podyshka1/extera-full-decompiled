package org.mvel2.asm;

/* JADX INFO: loaded from: classes.dex */
public class ByteVector {
    byte[] data;
    int length;

    public ByteVector() {
        this.data = new byte[64];
    }

    public ByteVector(int i) {
        this.data = new byte[i];
    }

    ByteVector(byte[] bArr) {
        this.data = bArr;
        this.length = bArr.length;
    }

    public int size() {
        return this.length;
    }

    public ByteVector putByte(int i) {
        int i2 = this.length;
        int i3 = i2 + 1;
        if (i3 > this.data.length) {
            enlarge(1);
        }
        this.data[i2] = (byte) i;
        this.length = i3;
        return this;
    }

    final ByteVector put11(int i, int i2) {
        int i3 = this.length;
        if (i3 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        bArr[i3] = (byte) i;
        bArr[i3 + 1] = (byte) i2;
        this.length = i3 + 2;
        return this;
    }

    public ByteVector putShort(int i) {
        int i2 = this.length;
        if (i2 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
        this.length = i2 + 2;
        return this;
    }

    final ByteVector put12(int i, int i2) {
        int i3 = this.length;
        if (i3 + 3 > this.data.length) {
            enlarge(3);
        }
        byte[] bArr = this.data;
        bArr[i3] = (byte) i;
        bArr[i3 + 1] = (byte) (i2 >>> 8);
        bArr[i3 + 2] = (byte) i2;
        this.length = i3 + 3;
        return this;
    }

    final ByteVector put112(int i, int i2, int i3) {
        int i4 = this.length;
        if (i4 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] bArr = this.data;
        bArr[i4] = (byte) i;
        bArr[i4 + 1] = (byte) i2;
        bArr[i4 + 2] = (byte) (i3 >>> 8);
        bArr[i4 + 3] = (byte) i3;
        this.length = i4 + 4;
        return this;
    }

    public ByteVector putInt(int i) {
        int i2 = this.length;
        if (i2 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] bArr = this.data;
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
        this.length = i2 + 4;
        return this;
    }

    final ByteVector put122(int i, int i2, int i3) {
        int i4 = this.length;
        if (i4 + 5 > this.data.length) {
            enlarge(5);
        }
        byte[] bArr = this.data;
        bArr[i4] = (byte) i;
        bArr[i4 + 1] = (byte) (i2 >>> 8);
        bArr[i4 + 2] = (byte) i2;
        bArr[i4 + 3] = (byte) (i3 >>> 8);
        bArr[i4 + 4] = (byte) i3;
        this.length = i4 + 5;
        return this;
    }

    public ByteVector putLong(long j) {
        int i = this.length;
        if (i + 8 > this.data.length) {
            enlarge(8);
        }
        byte[] bArr = this.data;
        int i2 = (int) (j >>> 32);
        bArr[i] = (byte) (i2 >>> 24);
        bArr[i + 1] = (byte) (i2 >>> 16);
        bArr[i + 2] = (byte) (i2 >>> 8);
        bArr[i + 3] = (byte) i2;
        int i3 = (int) j;
        bArr[i + 4] = (byte) (i3 >>> 24);
        bArr[i + 5] = (byte) (i3 >>> 16);
        bArr[i + 6] = (byte) (i3 >>> 8);
        bArr[i + 7] = (byte) i3;
        this.length = i + 8;
        return this;
    }

    public ByteVector putUTF8(String str) {
        int length = str.length();
        if (length > 65535) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i = this.length;
        if (i + 2 + length > this.data.length) {
            enlarge(length + 2);
        }
        byte[] bArr = this.data;
        int i2 = i + 1;
        bArr[i] = (byte) (length >>> 8);
        int i3 = i + 2;
        bArr[i2] = (byte) length;
        int i4 = 0;
        while (i4 < length) {
            char cCharAt = str.charAt(i4);
            if (cCharAt >= 1 && cCharAt <= 127) {
                bArr[i3] = (byte) cCharAt;
                i4++;
                i3++;
            } else {
                this.length = i3;
                return encodeUtf8(str, i4, 65535);
            }
        }
        this.length = i3;
        return this;
    }

    final ByteVector encodeUtf8(String str, int i, int i2) {
        int length = str.length();
        int i3 = i;
        int i4 = i3;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            i4 = (cCharAt < 1 || cCharAt > 127) ? cCharAt <= 2047 ? i4 + 2 : i4 + 3 : i4 + 1;
            i3++;
        }
        if (i4 > i2) {
            throw new IllegalArgumentException("UTF8 string too large");
        }
        int i5 = this.length;
        int i6 = i5 - i;
        int i7 = i6 - 2;
        if (i7 >= 0) {
            byte[] bArr = this.data;
            bArr[i7] = (byte) (i4 >>> 8);
            bArr[i6 - 1] = (byte) i4;
        }
        if ((i5 + i4) - i > this.data.length) {
            enlarge(i4 - i);
        }
        int i8 = this.length;
        while (i < length) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 >= 1 && cCharAt2 <= 127) {
                this.data[i8] = (byte) cCharAt2;
                i8++;
            } else if (cCharAt2 <= 2047) {
                byte[] bArr2 = this.data;
                int i9 = i8 + 1;
                bArr2[i8] = (byte) (((cCharAt2 >> 6) & 31) | 192);
                i8 += 2;
                bArr2[i9] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                byte[] bArr3 = this.data;
                bArr3[i8] = (byte) (((cCharAt2 >> '\f') & 15) | com.android.p003dx.p006io.Opcodes.SHL_INT_LIT8);
                int i10 = i8 + 2;
                bArr3[i8 + 1] = (byte) (((cCharAt2 >> 6) & 63) | 128);
                i8 += 3;
                bArr3[i10] = (byte) ((cCharAt2 & '?') | 128);
            }
            i++;
        }
        this.length = i8;
        return this;
    }

    public ByteVector putByteArray(byte[] bArr, int i, int i2) {
        if (this.length + i2 > this.data.length) {
            enlarge(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.data, this.length, i2);
        }
        this.length += i2;
        return this;
    }

    private void enlarge(int i) {
        int i2 = this.length;
        byte[] bArr = this.data;
        if (i2 > bArr.length) {
            throw new AssertionError("Internal error");
        }
        int length = bArr.length * 2;
        int i3 = i + i2;
        if (length <= i3) {
            length = i3;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.data = bArr2;
    }
}
