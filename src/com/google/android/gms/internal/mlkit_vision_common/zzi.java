package com.google.android.gms.internal.mlkit_vision_common;

import java.util.Objects;
import okhttp3.internal.http.RealInterceptorChain$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzi {
    public static void zza(Object obj, Object obj2) {
        if (obj == null) {
            Objects.toString(obj2);
            f$$ExternalSyntheticBUOutline2.m216m("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            RealInterceptorChain$$ExternalSyntheticBUOutline0.m958m("null value in entry: ", obj, "=null");
        }
    }
}
