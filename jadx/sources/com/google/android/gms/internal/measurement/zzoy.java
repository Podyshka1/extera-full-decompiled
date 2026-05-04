package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoy implements zzox {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zza = zzkgVarZzb.zzd("measurement.service.ad_impression.convert_value_to_double", true);
        zzkgVarZzb.zzd("measurement.service.separate_public_internal_event_blacklisting", true);
        zzkgVarZzb.zzd("measurement.service.ad_impression", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzox
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
