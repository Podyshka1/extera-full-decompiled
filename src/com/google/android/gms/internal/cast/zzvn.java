package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvn extends zzyd implements zzzj {
    private static final zzvn zzf;
    private int zzb;
    private int zzd;
    private zztd zze;

    static {
        zzvn zzvnVar = new zzvn();
        zzf = zzvnVar;
        zzyd.zzG(zzvn.class, zzvnVar);
    }

    private zzvn() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001", new Object[]{"zzb", "zzd", zzsb.zza, "zze"});
        }
        if (i2 == 3) {
            return new zzvn();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzvm(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
