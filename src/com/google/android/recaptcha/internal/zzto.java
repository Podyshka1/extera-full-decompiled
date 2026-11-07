package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzto {
    final zztn zza;
    final long[] zzb;

    public zzto() {
        this(new zztn(), new long[10]);
    }

    public zzto(zztn zztnVar, long[] jArr) {
        this.zza = zztnVar;
        this.zzb = jArr;
    }

    public static /* synthetic */ zzto zza(zzto zztoVar, zztm zztmVar) {
        zzb(zztoVar, zztmVar);
        return zztoVar;
    }

    private static zzto zzb(zzto zztoVar, zztm zztmVar) {
        zztn zztnVar = zztmVar.zza;
        zztn zztnVar2 = zztoVar.zza;
        long[] jArr = zztnVar2.zza;
        long[] jArr2 = zztnVar.zza;
        long[] jArr3 = zztmVar.zzb;
        zztw.zze(jArr, jArr2, jArr3);
        long[] jArr4 = zztnVar2.zzb;
        long[] jArr5 = zztnVar.zzb;
        long[] jArr6 = zztnVar.zzc;
        zztw.zze(jArr4, jArr5, jArr6);
        zztw.zze(zztnVar2.zzc, jArr6, jArr3);
        zztw.zze(zztoVar.zzb, jArr2, jArr5);
        return zztoVar;
    }

    public zzto(zztm zztmVar) {
        this();
        zzb(this, zztmVar);
    }
}
