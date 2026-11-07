package com.google.android.gms.internal.cast;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzhm {
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            f$$ExternalSyntheticBUOutline2.m213m("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            String string = obj.toString();
            zzhm$$ExternalSyntheticBUOutline0.m309m(string.length() + 26, string);
        }
    }
}
