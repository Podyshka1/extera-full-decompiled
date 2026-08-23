package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqx extends zzyd implements zzzj {
    private static final zzqx zzi;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private long zzh;

    static {
        zzqx zzqxVar = new zzqx();
        zzi = zzqxVar;
        zzyd.zzG(zzqx.class, zzqxVar);
    }

    private zzqx() {
    }

    public static zzqw zza() {
        return (zzqw) zzi.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzi, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004ဇ\u0003\u0006ဂ\u0004", new Object[]{"zzb", "zzd", zzos.zza(), "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzqx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzqw(bArr);
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

    public final /* synthetic */ void zze(boolean z) {
        this.zzb |= 8;
        this.zzg = z;
    }

    public final /* synthetic */ void zzf(long j) {
        this.zzb |= 16;
        this.zzh = j;
    }

    public final /* synthetic */ void zzh(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
