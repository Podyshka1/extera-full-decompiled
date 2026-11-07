package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqt extends zzyd implements zzzj {
    private static final zzqt zzi;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzqt zzqtVar = new zzqt();
        zzi = zzqtVar;
        zzyd.zzG(zzqt.class, zzqtVar);
    }

    private zzqt() {
    }

    public static zzqs zza() {
        return (zzqs) zzi.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzb", "zzd", zzoo.zza(), "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzqt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzqs(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }

    public final /* synthetic */ void zzc(int i) {
        this.zzb |= 2;
        this.zze = i;
    }

    public final /* synthetic */ void zzd(int i) {
        this.zzb |= 4;
        this.zzf = i;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzb |= 8;
        this.zzg = i;
    }

    public final /* synthetic */ void zzf(int i) {
        this.zzb |= 16;
        this.zzh = i;
    }

    public final /* synthetic */ void zzh(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
