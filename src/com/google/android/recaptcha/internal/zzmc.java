package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public enum zzmc {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(_UrlKt.FRAGMENT_ENCODE_SET),
    BYTE_STRING(zzgw.zzb),
    ENUM(null),
    MESSAGE(null);

    private final Object zzk;

    zzmc(Object obj) {
        this.zzk = obj;
    }
}
