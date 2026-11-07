package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzayd {
    private static final zzayd zza = new zzayd();
    private final ConcurrentMap zzb = new ConcurrentHashMap();

    private zzayd() {
        zzawt.zza();
    }

    public static zzayd zza() {
        return zza;
    }

    private <T extends zzawy> zzayg<T> zzc(Class<T> cls) {
        Class<T> cls2;
        zzayg<T> zzaygVarZzj;
        int i = zzayh.$r8$clinit;
        if (!zzawy.class.isAssignableFrom(cls)) {
            int i2 = zzavq.$r8$clinit;
        }
        int i3 = zzavq.$r8$clinit;
        if (!zzawy.class.isAssignableFrom(cls)) {
            f$$ExternalSyntheticBUOutline1.m215m("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            zzaxu zzaxuVar = (zzaxu) zzawy.zzM(cls.asSubclass(zzawy.class)).zzb(3, null, null);
            if (zzaxuVar.zza()) {
                zzaygVarZzj = zzaya.zze(zzayh.zza(), zzawo.zza(), zzaxuVar.zzb());
                cls2 = cls;
            } else {
                cls2 = cls;
                zzaygVarZzj = zzaxz.zzj(cls2, zzaxuVar, zzayc.zza(), zzaxo.zza(), zzayh.zza(), zzaxuVar.zzc() + (-1) != 1 ? zzawo.zza() : null, zzaxt.zza());
            }
            zzayg<T> zzaygVar = (zzayg) this.zzb.putIfAbsent(cls2, zzaygVarZzj);
            return zzaygVar != null ? zzaygVar : zzaygVarZzj;
        } catch (Exception e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Unable to get message info for ".concat(cls.getName()), e);
            return null;
        }
    }

    public final zzayg zzb(Class cls) {
        Object obj = this.zzb.get(cls);
        return obj == null ? zzc(cls) : (zzayg) obj;
    }
}
