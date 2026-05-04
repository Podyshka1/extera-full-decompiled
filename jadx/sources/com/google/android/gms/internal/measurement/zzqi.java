package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqi implements zzqh {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zzkgVarZzb.zzd("measurement.gmscore_feature_tracking", true);
        zza = zzkgVarZzb.zzd("measurement.gmscore_client_telemetry", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzqh
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
