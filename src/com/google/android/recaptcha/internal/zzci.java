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
            throw new zzae(4, 6, null);
        }
        if (!(obj instanceof String)) {
            throw new zzae(4, 5, null);
        }
        try {
            String str = (String) obj;
            Class<?> cls2 = Class.forName(str);
            if (zzcb.zzb(str)) {
                return cls2;
            }
            throw new zzae(6, 47, null);
        } catch (Exception e) {
            throw new zzae(6, 8, e);
        }
    }
}
