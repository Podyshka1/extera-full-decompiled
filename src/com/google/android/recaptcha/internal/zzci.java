package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzci {
    public static final zzci zza = new zzci();

    private zzci() {
    }

    public static final Class zza(Object obj) throws zzae {
        if (obj instanceof Class) {
            return (Class) obj;
        }
        if (obj instanceof Integer) {
            int iIntValue = ((Number) obj).intValue();
            Class cls = iIntValue == 1 ? Integer.TYPE : iIntValue == 2 ? Short.TYPE : iIntValue == 3 ? Byte.TYPE : iIntValue == 4 ? Long.TYPE : iIntValue == 5 ? Character.TYPE : iIntValue == 6 ? Float.TYPE : iIntValue == 7 ? Double.TYPE : iIntValue == 8 ? Boolean.TYPE : null;
            if (cls != null) {
                return cls;
            }
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 6, null);
            return null;
        }
        if (!(obj instanceof String)) {
            zzca$$ExternalSyntheticBUOutline0.m440m(4, 5, null);
            return null;
        }
        try {
            String str = (String) obj;
            Class<?> cls2 = Class.forName(str);
            if (zzcb.zzb(str)) {
                return cls2;
            }
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 47, null);
            return null;
        } catch (Exception e) {
            zzca$$ExternalSyntheticBUOutline0.m440m(6, 8, e);
            return null;
        }
    }
}
