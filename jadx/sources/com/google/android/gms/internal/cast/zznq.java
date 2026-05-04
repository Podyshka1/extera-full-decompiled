package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zznq extends zztp implements zzuy {
    private static final zznq zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        zznq zznqVar = new zznq();
        zzb = zznqVar;
        zztp.zzH(zznq.class, zznqVar);
    }

    private zznq() {
    }

    public static zznp zza() {
        return (zznp) zzb.zzv();
    }

    static /* synthetic */ void zzd(zznq zznqVar, int i) {
        zznqVar.zzd |= 2;
        zznqVar.zzf = i;
    }

    static /* synthetic */ void zze(zznq zznqVar, int i) {
        zznqVar.zzd |= 4;
        zznqVar.zzg = i;
    }

    static /* synthetic */ void zzf(zznq zznqVar, int i) {
        zznqVar.zzd |= 8;
        zznqVar.zzh = i;
    }

    static /* synthetic */ void zzg(zznq zznqVar, int i) {
        zznqVar.zzd |= 16;
        zznqVar.zzi = i;
    }

    static /* synthetic */ void zzh(zznq zznqVar, int i) {
        zznqVar.zze = i - 1;
        zznqVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzd", "zze", zzle.zza(), "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zznq();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznp(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
