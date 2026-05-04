package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqf implements zzqe {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zzkgVarZzb.zzd("measurement.gbraid_campaign.gbraid.client", true);
        zza = zzkgVarZzb.zzd("measurement.gbraid_campaign.stop_lgclid", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzqe
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
