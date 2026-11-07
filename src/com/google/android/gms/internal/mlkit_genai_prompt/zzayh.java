package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzayh {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzayq zzb;

    static {
        int i = zzavq.$r8$clinit;
        zzb = new zzays();
    }

    public static zzayq zza() {
        return zzb;
    }

    public static boolean zzb(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzc(zzawm zzawmVar, Object obj, Object obj2) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj2);
        throw null;
    }

    public static void zzd(zzayq zzayqVar, Object obj, Object obj2) {
        zzawy zzawyVar = (zzawy) obj;
        zzayr zzayrVarZzc = zzawyVar.zzc;
        zzayr zzayrVar = ((zzawy) obj2).zzc;
        if (!zzayr.zza().equals(zzayrVar)) {
            if (zzayr.zza().equals(zzayrVarZzc)) {
                zzayrVarZzc = zzayr.zzc(zzayrVarZzc, zzayrVar);
            } else {
                zzayrVarZzc.zzh(zzayrVar);
            }
        }
        zzawyVar.zzc = zzayrVarZzc;
    }

    public static Object zze(Object obj, int i, int i2, Object obj2, zzayq zzayqVar) {
        Object obj3 = obj2;
        if (obj2 == null) {
            zzawy zzawyVar = (zzawy) obj;
            zzayr zzayrVar = zzawyVar.zzc;
            obj3 = zzayrVar;
            if (zzayrVar == zzayr.zza()) {
                zzayr zzayrVarZzb = zzayr.zzb();
                zzawyVar.zzc = zzayrVarZzb;
                obj3 = zzayrVarZzb;
            }
        }
        ((zzayr) obj3).zzg(i << 3, Long.valueOf(i2));
        return obj3;
    }
}
