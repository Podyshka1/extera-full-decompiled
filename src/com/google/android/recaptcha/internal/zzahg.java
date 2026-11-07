package com.google.android.recaptcha.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzahg {
    private static final zzahg zza = new zzahg();
    private final ConcurrentMap zzb = new ConcurrentHashMap();

    private zzahg() {
        zzafp.zza();
    }

    public static zzahg zza() {
        return zza;
    }

    private <T extends zzafv> zzahn<T> zzc(Class<T> cls) {
        Class<T> cls2;
        zzahn<T> zzahnVarZzm;
        int i = zzaho.$r8$clinit;
        if (!zzafv.class.isAssignableFrom(cls)) {
            int i2 = zzaef.$r8$clinit;
        }
        int i3 = zzaef.$r8$clinit;
        if (!zzafv.class.isAssignableFrom(cls)) {
            f$$ExternalSyntheticBUOutline1.m215m("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            zzagv zzagvVar = (zzagv) zzafv.zzK(cls.asSubclass(zzafv.class)).zzf(3, null, null);
            if (zzagvVar.zza()) {
                zzahnVarZzm = zzahb.zzh(zzaho.zzA(), zzafk.zza(), zzagvVar.zzb());
                cls2 = cls;
            } else {
                cls2 = cls;
                zzahnVarZzm = zzaha.zzm(cls2, zzagvVar, zzahd.zza(), zzagp.zza(), zzaho.zzA(), zzagvVar.zzc() + (-1) != 1 ? zzafk.zza() : null, zzagu.zza());
            }
            zzahn<T> zzahnVar = (zzahn) this.zzb.putIfAbsent(cls2, zzahnVarZzm);
            return zzahnVar != null ? zzahnVar : zzahnVarZzm;
        } catch (Exception e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    public final zzahn zzb(Class cls) {
        Object obj = this.zzb.get(cls);
        return obj == null ? zzc(cls) : (zzahn) obj;
    }
}
