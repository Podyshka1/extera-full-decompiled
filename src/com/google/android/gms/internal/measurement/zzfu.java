package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfu extends zzmf implements zznn {
    private static final zzfu zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzfu zzfuVar = new zzfu();
        zzg = zzfuVar;
        zzmf.zzcp(zzfu.class, zzfuVar);
    }

    private zzfu() {
    }

    public final int zzb() {
        int iZza = zzga.zza(this.zzd);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    public final int zzc() {
        int iZza = zzfy.zza(this.zze);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    public final int zzd() {
        int iZza = zzge.zza(this.zzf);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", zzfz.zza, "zze", zzfx.zza, "zzf", zzgd.zza});
        }
        if (i2 == 3) {
            return new zzfu();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzft(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
