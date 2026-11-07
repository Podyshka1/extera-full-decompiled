package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzjc extends zzawy implements zzaxx {
    private static final zzjc zzf;
    private int zzb;
    private int zzd;
    private int zze;

    static {
        zzjc zzjcVar = new zzjc();
        zzf = zzjcVar;
        zzawy.zzN(zzjc.class, zzjcVar);
    }

    private zzjc() {
    }

    public final int zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzjc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzjb(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    public final int zzc() {
        return this.zze;
    }
}
