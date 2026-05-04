package com.google.android.gms.internal.measurement;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfh extends zzmf implements zznn {
    private static final zzfh zzh;
    private int zzb;
    private zzfr zzd;
    private zzfl zze;
    private boolean zzf;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzfh zzfhVar = new zzfh();
        zzh = zzfhVar;
        zzmf.zzcp(zzfh.class, zzfhVar);
    }

    private zzfh() {
    }

    public static zzfh zzi() {
        return zzh;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final zzfr zzb() {
        zzfr zzfrVar = this.zzd;
        return zzfrVar == null ? zzfr.zzh() : zzfrVar;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final zzfl zzd() {
        zzfl zzflVar = this.zze;
        return zzflVar == null ? zzfl.zzj() : zzflVar;
    }

    public final boolean zze() {
        return (this.zzb & 4) != 0;
    }

    public final boolean zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        return (this.zzb & 8) != 0;
    }

    public final String zzh() {
        return this.zzg;
    }

    final /* synthetic */ void zzj(String str) {
        this.zzb |= 8;
        this.zzg = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzfh();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfg(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }
}
