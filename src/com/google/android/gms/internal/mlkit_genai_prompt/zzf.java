package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzf extends zzawy implements zzaxx {
    private static final zzf zze;
    private int zzb = 0;
    private Object zzd;

    static {
        zzf zzfVar = new zzf();
        zze = zzfVar;
        zzawy.zzN(zzf.class, zzfVar);
    }

    private zzf() {
    }

    public static zzf zzd(byte[] bArr, zzawl zzawlVar) {
        return (zzf) zzawy.zzR(zze, bArr, zzawlVar);
    }

    public static zzf zze() {
        return zze;
    }

    public final boolean zza() {
        return this.zzb == 1;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zze, "\u0001\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"zzd", "zzb", zzj.class, zzb.class});
        }
        if (i2 == 3) {
            return new zzf();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zze(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }

    public final zzj zzc() {
        return this.zzb == 1 ? (zzj) this.zzd : zzj.zze();
    }
}
