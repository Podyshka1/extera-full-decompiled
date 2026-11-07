package com.google.android.gms.internal.mlkit_vision_label;

import com.google.common.collect.CollectPreconditions$$ExternalSyntheticBUOutline0;
import java.util.Objects;
import okhttp3.internal.http.RealInterceptorChain$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzal {
    public static int zza(int i, String str) {
        if (i >= 0) {
            return i;
        }
        CollectPreconditions$$ExternalSyntheticBUOutline0.m457m(str, i);
        return 0;
    }

    public static void zzb(Object obj, Object obj2) {
        if (obj == null) {
            Objects.toString(obj2);
            f$$ExternalSyntheticBUOutline2.m213m("null key in entry: null=".concat(String.valueOf(obj2)));
        } else {
            if (obj2 != null) {
                return;
            }
            RealInterceptorChain$$ExternalSyntheticBUOutline0.m910m("null value in entry: ", obj, "=null");
        }
    }
}
