package com.android.p003dx.p006io.instructions;

import java.io.EOFException;

/* JADX INFO: loaded from: classes4.dex */
public final class ShortArrayCodeInput extends BaseCodeCursor implements CodeInput {
    private final short[] array;

    public ShortArrayCodeInput(short[] sArr) {
        if (sArr == null) {
            throw new NullPointerException("array == null");
        }
        this.array = sArr;
    }

    @Override // com.android.p003dx.p006io.instructions.CodeInput
    public boolean hasMore() {
        return cursor() < this.array.length;
    }

    @Override // com.android.p003dx.p006io.instructions.CodeInput
    public int read() throws EOFException {
        try {
            short s = this.array[cursor()];
            advance(1);
            return s & 65535;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new EOFException();
        }
    }

    @Override // com.android.p003dx.p006io.instructions.CodeInput
    public int readInt() {
        return read() | (read() << 16);
    }

    @Override // com.android.p003dx.p006io.instructions.CodeInput
    public long readLong() {
        return ((long) read()) | (((long) read()) << 16) | (((long) read()) << 32) | (((long) read()) << 48);
    }
}
