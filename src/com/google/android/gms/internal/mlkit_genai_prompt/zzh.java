package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzh extends zzawy implements zzaxx {
    private static final zzh zze;
    private int zzb;
    private boolean zzd;

    static {
        zzh zzhVar = new zzh();
        zze = zzhVar;
        zzawy.zzN(zzh.class, zzhVar);
    }

    private zzh() {
    }

    public static zzh zzc(byte[] bArr, zzawl zzawlVar) {
        return (zzh) zzawy.zzR(zze, bArr, zzawlVar);
    }

    public static zzh zzd() {
        return zze;
    }

    public final boolean zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zzb", "zzd"});
        }
        if (i2 == 3) {
            return new zzh();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzg(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
