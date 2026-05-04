package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzql implements zzqk {
    public static final zzkm zza;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zzkgVarZzb.zzd("measurement.sdk.collection.enable_extend_user_property_size", true);
        zza = zzkgVarZzb.zzd("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        zzkgVarZzb.zzc("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzqk
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }
}
