package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfl extends zzmf implements zznn {
    private static final zzfl zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzfl zzflVar = new zzfl();
        zzi = zzflVar;
        zzmf.zzcp(zzfl.class, zzflVar);
    }

    private zzfl() {
    }

    public static zzfl zzj() {
        return zzi;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final boolean zzb() {
        return (this.zzb & 2) != 0;
    }

    public final boolean zzc() {
        return this.zze;
    }

    public final boolean zzd() {
        return (this.zzb & 4) != 0;
    }

    public final String zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        return (this.zzb & 8) != 0;
    }

    public final String zzg() {
        return this.zzg;
    }

    public final boolean zzh() {
        return (this.zzb & 16) != 0;
    }

    public final String zzi() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", zzfj.zza, "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzfl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfi(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }

    public final int zzm() {
        int iZza = zzfk.zza(this.zzd);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }
}
