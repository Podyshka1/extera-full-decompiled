package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqo implements zzqn {
    public static final zzkm zza;
    public static final zzkm zzb;
    public static final zzkm zzc;
    public static final zzkm zzd;
    public static final zzkm zze;
    public static final zzkm zzf;

    static {
        zzkg zzkgVarZzb = new zzkg(zzkb.zza("com.google.android.gms.measurement")).zza().zzb();
        zza = zzkgVarZzb.zzd("measurement.test.boolean_flag", false);
        zzb = zzkgVarZzb.zzc("measurement.test.cached_long_flag", -1L);
        zzc = zzkgVarZzb.zze("measurement.test.double_flag", -3.0d);
        zzd = zzkgVarZzb.zzc("measurement.test.int_flag", -2L);
        zze = zzkgVarZzb.zzc("measurement.test.long_flag", -1L);
        zzf = zzkgVarZzb.zzf("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final boolean zza() {
        return ((Boolean) zza.zzd()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final long zzb() {
        return ((Long) zzb.zzd()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final double zzc() {
        return ((Double) zzc.zzd()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final long zzd() {
        return ((Long) zzd.zzd()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final long zze() {
        return ((Long) zze.zzd()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzqn
    public final String zzf() {
        return (String) zzf.zzd();
    }
}
