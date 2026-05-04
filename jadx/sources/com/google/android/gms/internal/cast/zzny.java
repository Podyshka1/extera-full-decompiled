package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzny extends zztp implements zzuy {
    private static final zzny zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzny zznyVar = new zzny();
        zzb = zznyVar;
        zztp.zzH(zzny.class, zznyVar);
    }

    private zzny() {
    }

    public static zznx zza() {
        return (zznx) zzb.zzv();
    }

    static /* synthetic */ void zzd(zzny zznyVar, int i) {
        zznyVar.zzd |= 2;
        zznyVar.zzf = i;
    }

    static /* synthetic */ void zze(zzny zznyVar, int i) {
        zznyVar.zze = i - 1;
        zznyVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", zzlt.zza(), "zzf"});
        }
        if (i2 == 3) {
            return new zzny();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznx(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
