package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrd implements zzrc {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zza = zzkgVarZzb.zzd("measurement.session_stitching_token_enabled", false);
        zzkgVarZzb.zzd("measurement.link_sst_to_sid", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzrc
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzrc
    public final boolean zzb() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
