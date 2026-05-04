package com.android.p003dx.p006io.instructions;

/* JADX INFO: loaded from: classes4.dex */
public final class ShortArrayCodeOutput extends BaseCodeCursor implements CodeOutput {
    private final short[] array;

    public ShortArrayCodeOutput(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("maxSize < 0");
        }
        this.array = new short[i];
    }

    public short[] getArray() {
        int iCursor = cursor();
        short[] sArr = this.array;
        if (iCursor == sArr.length) {
            return sArr;
        }
        short[] sArr2 = new short[iCursor];
        System.arraycopy(sArr, 0, sArr2, 0, iCursor);
        return sArr2;
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short s) {
        this.array[cursor()] = s;
        advance(1);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short s, short s2) {
        write(s);
        write(s2);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short s, short s2, short s3) {
        write(s);
        write(s2);
        write(s3);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short s, short s2, short s3, short s4) {
        write(s);
        write(s2);
        write(s3);
        write(s4);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short s, short s2, short s3, short s4, short s5) {
        write(s);
        write(s2);
        write(s3);
        write(s4);
        write(s5);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void writeInt(int i) {
        write((short) i);
        write((short) (i >> 16));
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void writeLong(long j) {
        write((short) j);
        write((short) (j >> 16));
        write((short) (j >> 32));
        write((short) (j >> 48));
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(byte[] bArr) {
        int i = 0;
        boolean z = true;
        for (byte b : bArr) {
            if (z) {
                i = b & 255;
                z = false;
            } else {
                int i2 = (b << 8) | i;
                write((short) i2);
                i = i2;
                z = true;
            }
        }
        if (z) {
            return;
        }
        write((short) i);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(short[] sArr) {
        for (short s : sArr) {
            write(s);
        }
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(int[] iArr) {
        for (int i : iArr) {
            writeInt(i);
        }
    }

    @Override // com.android.p003dx.p006io.instructions.CodeOutput
    public void write(long[] jArr) {
        for (long j : jArr) {
            writeLong(j);
        }
    }
}
