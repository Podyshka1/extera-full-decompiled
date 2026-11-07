package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj extends zzawy implements zzaxx {
    private static final zzj zzj;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private float zzg;
    private float zzh;
    private float zzi;

    static {
        zzj zzjVar = new zzj();
        zzj = zzjVar;
        zzawy.zzN(zzj.class, zzjVar);
    }

    private zzj() {
    }

    public static zzj zze() {
        return zzj;
    }

    public final float zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004ခ\u0003\u0005ခ\u0004\u0006ခ\u0005", new Object[]{"zzb", "zzd", zzazj.zza(), "zze", zzazh.zza(), "zzf", zzazf.zza(), "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new zzj();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzi(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    public final float zzc() {
        return this.zzh;
    }

    public final float zzd() {
        return this.zzi;
    }

    public final int zzg() {
        int iZzb = zzazj.zzb(this.zzd);
        if (iZzb == 0) {
            return 1;
        }
        return iZzb;
    }

    public final int zzh() {
        int iZzb = zzazh.zzb(this.zze);
        if (iZzb == 0) {
            return 1;
        }
        return iZzb;
    }

    public final int zzi() {
        int iZzb = zzazf.zzb(this.zzf);
        if (iZzb == 0) {
            return 1;
        }
        return iZzb;
    }
}
