package com.google.zxing;

import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    protected LuminanceSource(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String toString() {
        int i = this.width;
        byte[] row = new byte[i];
        StringBuilder sb = new StringBuilder(this.height * (i + 1));
        for (int i2 = 0; i2 < this.height; i2++) {
            row = getRow(i2, row);
            for (int i3 = 0; i3 < this.width; i3++) {
                int i4 = row[i3] & 255;
                sb.append(i4 < 64 ? '#' : i4 < 128 ? SignatureVisitor.EXTENDS : i4 < 192 ? '.' : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
