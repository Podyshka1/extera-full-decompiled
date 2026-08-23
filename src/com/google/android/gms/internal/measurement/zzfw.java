package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfw extends zzmf implements zznn {
    private static final zzfw zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        zzfw zzfwVar = new zzfw();
        zzf = zzfwVar;
        zzmf.zzcp(zzfw.class, zzfwVar);
    }

    private zzfw() {
    }

    public final int zzb() {
        int iZza = zzga.zza(this.zzd);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    public final int zzc() {
        int iZza = zzga.zza(this.zze);
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
            zzmk zzmkVar = zzfz.zza;
            return zzmf.zzcq(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzb", "zzd", zzmkVar, "zze", zzmkVar});
        }
        if (i2 == 3) {
            return new zzfw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfv(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
