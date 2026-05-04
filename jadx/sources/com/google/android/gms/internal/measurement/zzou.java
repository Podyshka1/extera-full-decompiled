package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public enum zzou {
    INT(0),
    LONG(0L),
    FLOAT(Float.valueOf(0.0f)),
    DOUBLE(Double.valueOf(0.0d)),
    BOOLEAN(Boolean.FALSE),
    STRING(_UrlKt.FRAGMENT_ENCODE_SET),
    BYTE_STRING(zzlh.zzb),
    ENUM(null),
    MESSAGE(null);

    zzou(Object obj) {
    }
}
