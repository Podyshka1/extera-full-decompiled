package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DecoderException extends Exception {
    public DecoderException(String str) {
        super(str);
    }

    public DecoderException(Throwable th) {
        super(th);
    }

    public DecoderException(String str, Throwable th) {
        super(str, th);
    }
}
