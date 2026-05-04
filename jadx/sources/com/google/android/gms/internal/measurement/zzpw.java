package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpw implements zzpv {
    public static final zzkm zza;
    public static final zzkm zzb;
    public static final zzkm zzc;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zzkgVarZzb.zzd("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        zza = zzkgVarZzb.zzd("measurement.audience.refresh_event_count_filters_timestamp", false);
        zzb = zzkgVarZzb.zzd("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        zzc = zzkgVarZzb.zzd("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzpv
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpv
    public final boolean zzb() {
        return ((Boolean) zza.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpv
    public final boolean zzc() {
        return ((Boolean) zzb.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpv
    public final boolean zzd() {
        return ((Boolean) zzc.zzd()).booleanValue();
    }
}
