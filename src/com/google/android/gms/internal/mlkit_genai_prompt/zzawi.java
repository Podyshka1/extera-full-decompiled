package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzawi extends zzawy implements zzaxx {
    private static final zzawi zze;
    private long zzb;
    private int zzd;

    static {
        zzawi zzawiVar = new zzawi();
        zze = zzawiVar;
        zzawy.zzN(zzawi.class, zzawiVar);
    }

    private zzawi() {
    }

    public static zzawi zzc() {
        return zze;
    }

    public final long zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new zzayf(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"zzb", "zzd"});
        }
        if (i2 == 3) {
            return new zzawi();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzawh(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
