package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zznw extends zztp implements zzuy {
    private static final zznw zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zznw zznwVar = new zznw();
        zzb = zznwVar;
        zztp.zzH(zznw.class, zznwVar);
    }

    private zznw() {
    }

    public static zznv zza() {
        return (zznv) zzb.zzv();
    }

    static /* synthetic */ void zzd(zznw zznwVar, int i) {
        zznwVar.zzd |= 2;
        zznwVar.zzf = i;
    }

    static /* synthetic */ void zze(zznw zznwVar, int i) {
        zznwVar.zzd |= 4;
        zznwVar.zzg = i;
    }

    static /* synthetic */ void zzf(zznw zznwVar, int i) {
        zznwVar.zzd |= 8;
        zznwVar.zzh = i;
    }

    static /* synthetic */ void zzg(zznw zznwVar, int i) {
        zznwVar.zze = i - 1;
        zznwVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzd", "zze", zzlk.zza(), "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zznw();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznv(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
