package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpn implements zzpm {
    public static final zzkm zza;
    public static final zzkm zzb;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zza = zzkgVarZzb.zzd("measurement.set_default_event_parameters_propagate_clear.client.dev", true);
        zzb = zzkgVarZzb.zzd("measurement.set_default_event_parameters_propagate_clear.service", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzpm
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpm
    public final boolean zzb() {
        return ((Boolean) zzb.zzd()).booleanValue();
    }
}
