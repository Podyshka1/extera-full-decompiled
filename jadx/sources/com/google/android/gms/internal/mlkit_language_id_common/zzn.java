package com.google.android.gms.internal.mlkit_language_id_common;

import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class zzn {
    static void zza(Object obj, Object obj2) {
        if (obj == null) {
            Objects.toString(obj2);
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 != null) {
            return;
        }
        throw new NullPointerException("null value in entry: " + obj + "=null");
    }
}
