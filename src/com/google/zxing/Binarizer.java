package com.google.zxing;

import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Binarizer {
    private final LuminanceSource source;

    public abstract BitMatrix getBlackMatrix();

    public Binarizer(LuminanceSource luminanceSource) {
        this.source = luminanceSource;
    }

    public final LuminanceSource getLuminanceSource() {
        return this.source;
    }
}
