package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqu implements zzqt {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zza = zzkgVarZzb.zzd("measurement.add_first_launch_logging_timestamp.service", false);
        zzkgVarZzb.zzc("measurement.id.add_first_launch_logging_timestamp.service", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzqt
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
