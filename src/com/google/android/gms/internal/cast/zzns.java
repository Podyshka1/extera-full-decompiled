package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzns extends zztp implements zzuy {
    private static final zzns zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;

    static {
        zzns zznsVar = new zzns();
        zzb = zznsVar;
        zztp.zzH(zzns.class, zznsVar);
    }

    private zzns() {
    }

    public static zznr zza() {
        return (zznr) zzb.zzv();
    }

    static /* synthetic */ void zzd(zzns zznsVar, int i) {
        zznsVar.zzd |= 2;
        zznsVar.zzf = i;
    }

    static /* synthetic */ void zze(zzns zznsVar, int i) {
        zznsVar.zzd |= 4;
        zznsVar.zzg = i;
    }

    static /* synthetic */ void zzf(zzns zznsVar, boolean z) {
        zznsVar.zzd |= 8;
        zznsVar.zzh = z;
    }

    static /* synthetic */ void zzg(zzns zznsVar, int i) {
        zznsVar.zze = i - 1;
        zznsVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004ဇ\u0003", new Object[]{"zzd", "zze", zzlh.zza(), "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzns();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznr(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
