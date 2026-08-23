package com.google.android.gms.internal.clearcut;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public enum zzfq {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(_UrlKt.FRAGMENT_ENCODE_SET),
    BYTE_STRING(zzbb.zzfi),
    ENUM(null),
    MESSAGE(null);

    private final Object zzlj;

    zzfq(Object obj) {
        this.zzlj = obj;
    }
}
