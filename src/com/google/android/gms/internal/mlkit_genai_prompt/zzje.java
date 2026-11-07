package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class zzje extends zzawy implements zzaxx {
    private static final zzje zzh;
    private int zzb;
    private long zzd;
    private zzaxh zze = zzawy.zzQ();
    private zzawi zzf;
    private float zzg;

    static {
        zzje zzjeVar = new zzje();
        zzh = zzjeVar;
        zzawy.zzN(zzje.class, zzjeVar);
    }

    private zzje() {
    }

    public static zzje zzf(byte[] bArr, zzawl zzawlVar) {
        return (zzje) zzawy.zzR(zzh, bArr, zzawlVar);
    }

    public static zzje zzg() {
        return zzh;
    }

    public final long zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawy
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzawy.zzO(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဃ\u0000\u0002\u001b\u0003ဉ\u0001\u0004ခ\u0002", new Object[]{"zzb", "zzd", "zze", zzjc.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzje();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzjd(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }

    public final List zzc() {
        return this.zze;
    }

    public final zzawi zzd() {
        zzawi zzawiVar = this.zzf;
        return zzawiVar == null ? zzawi.zzc() : zzawiVar;
    }

    public final float zze() {
        return this.zzg;
    }
}
