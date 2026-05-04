package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzca {
    public static final /* synthetic */ int $r8$clinit = 0;
    static final zzca zza;

    static {
        zzbt zzbtVar = new zzbt();
        zzbtVar.zza(_UrlKt.FRAGMENT_ENCODE_SET);
        zzbtVar.zzb(false);
        zzbtVar.zzd(1);
        zzbtVar.zze(1);
        zzbtVar.zzc();
        zzbt zzbtVar2 = new zzbt();
        zzbtVar2.zza(_UrlKt.FRAGMENT_ENCODE_SET);
        zzbtVar2.zzb(false);
        zzbtVar2.zzd(4);
        zzbtVar2.zze(1);
        zza = zzbtVar2.zzc();
        zzbt zzbtVar3 = new zzbt();
        zzbtVar3.zza(_UrlKt.FRAGMENT_ENCODE_SET);
        zzbtVar3.zzb(false);
        zzbtVar3.zzd(2);
        zzbtVar3.zze(1);
        zzbtVar3.zzc();
    }

    public abstract String zza();

    public abstract boolean zzb();

    public abstract zzbr zzc();

    public abstract zzbs zzd();

    public abstract int zze();

    public abstract int zzf();
}
