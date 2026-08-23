package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqr implements zzqq {
    public static final zzkm zza;
    public static final zzkm zzb;
    public static final zzkm zzc;
    public static final zzkm zzd;
    public static final zzkm zze;
    public static final zzkm zzf;
    public static final zzkm zzg;
    public static final zzkm zzh;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zzkgVarZzb.zzd("measurement.rb.attribution.ad_campaign_info", true);
        zzkgVarZzb.zzd("measurement.rb.attribution.service.bundle_on_backgrounded", true);
        zza = zzkgVarZzb.zzd("measurement.rb.attribution.client2", true);
        zzb = zzkgVarZzb.zzd("measurement.rb.attribution.followup1.service", false);
        zzkgVarZzb.zzd("measurement.rb.attribution.client.get_trigger_uris_async", true);
        zzc = zzkgVarZzb.zzd("measurement.rb.attribution.service.trigger_uris_high_priority", true);
        zzkgVarZzb.zzd("measurement.rb.attribution.index_out_of_bounds_fix", true);
        zzd = zzkgVarZzb.zzd("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", true);
        zze = zzkgVarZzb.zzd("measurement.rb.attribution.retry_disposition", false);
        zzf = zzkgVarZzb.zzd("measurement.rb.attribution.service", true);
        zzg = zzkgVarZzb.zzd("measurement.rb.attribution.enable_trigger_redaction", true);
        zzh = zzkgVarZzb.zzd("measurement.rb.attribution.uuid_generation", true);
        zzkgVarZzb.zzc("measurement.id.rb.attribution.retry_disposition", 0L);
        zzkgVarZzb.zzd("measurement.rb.attribution.improved_retry", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzb() {
        return ((Boolean) zza.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzc() {
        return ((Boolean) zzb.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzd() {
        return ((Boolean) zzc.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zze() {
        return ((Boolean) zzd.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzf() {
        return ((Boolean) zze.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzg() {
        return ((Boolean) zzf.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzh() {
        return ((Boolean) zzg.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqq
    public final boolean zzi() {
        return ((Boolean) zzh.zzd()).booleanValue();
    }
}
