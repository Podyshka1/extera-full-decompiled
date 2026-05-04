package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zznf {
    private final zzne zza;

    private zznf(zzot zzotVar, Object obj, zzot zzotVar2, Object obj2) {
        this.zza = new zzne(zzotVar, _UrlKt.FRAGMENT_ENCODE_SET, zzotVar2, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public static zznf zza(zzot zzotVar, Object obj, zzot zzotVar2, Object obj2) {
        return new zznf(zzotVar, _UrlKt.FRAGMENT_ENCODE_SET, zzotVar2, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    static void zzb(zzlm zzlmVar, zzne zzneVar, Object obj, Object obj2) {
        zzlw.zzf(zzlmVar, zzneVar.zza, 1, obj);
        zzlw.zzf(zzlmVar, zzneVar.zzc, 2, obj2);
    }

    static int zzc(zzne zzneVar, Object obj, Object obj2) {
        return zzlw.zzh(zzneVar.zza, 1, obj) + zzlw.zzh(zzneVar.zzc, 2, obj2);
    }

    public final int zzd(int i, Object obj, Object obj2) {
        zzne zzneVar = this.zza;
        int iZzz = zzlm.zzz(i << 3);
        int iZzc = zzc(zzneVar, obj, obj2);
        return iZzz + zzlm.zzz(iZzc) + iZzc;
    }

    final zzne zze() {
        return this.zza;
    }
}
