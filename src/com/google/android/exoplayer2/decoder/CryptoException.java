package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes4.dex */
public class CryptoException extends Exception {
    public final int errorCode;

    public CryptoException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
