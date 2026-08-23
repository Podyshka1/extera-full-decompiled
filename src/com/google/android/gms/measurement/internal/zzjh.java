package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.android.dex.EncodedValueReader$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjh {
    public static void zza(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    public static Object zzb(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        EncodedValueReader$$ExternalSyntheticBUOutline0.m184m("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", new Object[]{str, cls.getCanonicalName(), obj2.getClass().getCanonicalName()});
        return null;
    }
}
