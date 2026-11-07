package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaev {
    private final zzaeu zza;

    private zzaev(zzagm zzagmVar, Object obj, zzagm zzagmVar2, Object obj2) {
        this.zza = new zzaeu(zzagmVar, _UrlKt.FRAGMENT_ENCODE_SET, zzagmVar2, obj2);
    }

    public static zzaev zza(zzagm zzagmVar, Object obj, zzagm zzagmVar2, Object obj2) {
        return new zzaev(zzagmVar, _UrlKt.FRAGMENT_ENCODE_SET, zzagmVar2, obj2);
    }

    public static void zzb(zzada zzadaVar, zzaeu zzaeuVar, Object obj, Object obj2) {
        zzadk.zzf(zzadaVar, zzaeuVar.zza, 1, obj);
        zzadk.zzf(zzadaVar, zzaeuVar.zzc, 2, obj2);
    }

    public static int zzc(zzaeu zzaeuVar, Object obj, Object obj2) {
        return zzadk.zzh(zzaeuVar.zza, 1, obj) + zzadk.zzh(zzaeuVar.zzc, 2, obj2);
    }

    public final int zzd(int i, Object obj, Object obj2) {
        zzaeu zzaeuVar = this.zza;
        int iZzE = zzada.zzE(i << 3);
        int iZzc = zzc(zzaeuVar, obj, obj2);
        return iZzE + zzada.zzE(iZzc) + iZzc;
    }

    public final zzaeu zze() {
        return this.zza;
    }
}
