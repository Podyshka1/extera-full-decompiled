package com.google.android.gms.internal.measurement;

import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
enum zzabd {
    BOOLEAN,
    STRING,
    LONG,
    DOUBLE;

    public static /* synthetic */ zzabd zza(Object obj) {
        if (obj instanceof String) {
            return STRING;
        }
        if (obj instanceof Boolean) {
            return BOOLEAN;
        }
        if (obj instanceof Long) {
            return LONG;
        }
        if (obj instanceof Double) {
            return DOUBLE;
        }
        Buffer$$ExternalSyntheticBUOutline2.m965m("invalid tag type: ".concat(String.valueOf(obj.getClass())));
        return null;
    }
}
