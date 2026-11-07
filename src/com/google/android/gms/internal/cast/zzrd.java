package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrd extends zzyd implements zzzj {
    private static final zzrd zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        zzrd zzrdVar = new zzrd();
        zzf = zzrdVar;
        zzyd.zzG(zzrd.class, zzrdVar);
    }

    private zzrd() {
    }

    public static zzrc zza() {
        return (zzrc) zzf.zzB();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzb", "zzd", zzpa.zza(), "zze"});
        }
        if (i2 == 3) {
            return new zzrd();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzrc(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    public final /* synthetic */ void zzc(int i) {
        this.zzb |= 2;
        this.zze = i;
    }

    public final /* synthetic */ void zze(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
