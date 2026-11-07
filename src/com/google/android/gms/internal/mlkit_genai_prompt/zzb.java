package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzb extends zzawy implements zzaxx {
    private static final zzb zze;
    private int zzb;
    private int zzd;

    static {
        zzb zzbVar = new zzb();
        zze = zzbVar;
        zzawy.zzN(zzb.class, zzbVar);
    }

    private zzb() {
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzb", "zzd", zzazd.zza()});
        }
        if (i2 == 3) {
            return new zzb();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zza(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        throw null;
    }
}
