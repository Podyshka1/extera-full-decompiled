package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public final class zzji extends zzfi implements zzgm {
    private static final zzji zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private zzis zzg;
    private zziv zzh;

    static {
        zzji zzjiVar = new zzji();
        zzb = zzjiVar;
        zzfi.zzw(zzji.class, zzjiVar);
    }

    private zzji() {
    }

    public static /* synthetic */ void zzA(zzji zzjiVar, zzhx zzhxVar) {
        zzjiVar.zzf = zzhxVar;
        zzjiVar.zze = 2;
    }

    public static /* synthetic */ void zzB(zzji zzjiVar, zzib zzibVar) {
        zzjiVar.zzf = zzibVar;
        zzjiVar.zze = 3;
    }

    public static /* synthetic */ void zzC(zzji zzjiVar, zzij zzijVar) {
        zzijVar.getClass();
        zzjiVar.zzf = zzijVar;
        zzjiVar.zze = 7;
    }

    public static /* synthetic */ void zzD(zzji zzjiVar, zzis zzisVar) {
        zzisVar.getClass();
        zzjiVar.zzg = zzisVar;
        zzjiVar.zzd |= 1;
    }

    public static /* synthetic */ void zzE(zzji zzjiVar, zzjo zzjoVar) {
        zzjoVar.getClass();
        zzjiVar.zzf = zzjoVar;
        zzjiVar.zze = 8;
    }

    public static /* synthetic */ void zzF(zzji zzjiVar, zzjs zzjsVar) {
        zzjiVar.zzf = zzjsVar;
        zzjiVar.zze = 4;
    }

    public static zzjg zzc() {
        return (zzjg) zzb.zzl();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzhx.class, zzib.class, zzjs.class, zzip.class, "zzh", zzij.class, zzjo.class});
        }
        if (i2 == 3) {
            return new zzji();
        }
        zzjh zzjhVar = null;
        if (i2 == 4) {
            return new zzjg(zzjhVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
