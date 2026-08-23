package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class BinaryBitmap {
    private final Binarizer binarizer;
    private BitMatrix matrix;

    public BinaryBitmap(Binarizer binarizer) {
        if (binarizer == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Binarizer must be non-null.");
            throw null;
        }
        this.binarizer = binarizer;
    }

    public BitMatrix getBlackMatrix() {
        if (this.matrix == null) {
            this.matrix = this.binarizer.getBlackMatrix();
        }
        return this.matrix;
    }

    public String toString() {
        try {
            return getBlackMatrix().toString();
        } catch (NotFoundException unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
