package com.google.android.gms.internal.mlkit_genai_prompt;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdq {
    public static zzdq zzi(zzn zznVar) {
        String strZzi = zznVar.zzi();
        if (strZzi == null) {
            strZzi = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new zzdu(zznVar.zzb(), zznVar.zzc(), zznVar.zzd(), zznVar.zze(), zznVar.zzf(), zznVar.zzg(), zznVar.zzh(), strZzi);
    }

    public abstract String zza();

    public abstract String zzb();

    public abstract int zzc();

    public abstract int zzd();

    public abstract int zze();

    public abstract int zzf();

    public abstract int zzg();

    public abstract String zzh();

    public final zzn zzj() {
        return zzn.zza(zza(), zzb(), zzc(), zzd(), zze(), zzf(), zzg(), zzh());
    }
}
