package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zztl extends zztk {
    private final long[] zzd;

    @Override // com.google.android.recaptcha.internal.zztk
    public final void zza(long[] jArr, long[] jArr2) {
        zztw.zze(jArr, jArr2, this.zzd);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zztl(zzto zztoVar) {
        super(new long[10], new long[10], new long[10]);
        long[] jArr = new long[10];
        this.zzd = jArr;
        long[] jArr2 = this.zza;
        zztn zztnVar = zztoVar.zza;
        zztw.zza(jArr2, zztnVar.zzb, zztnVar.zza);
        long[] jArr3 = this.zzb;
        zztn zztnVar2 = zztoVar.zza;
        zztw.zzb(jArr3, zztnVar2.zzb, zztnVar2.zza);
        System.arraycopy(zztoVar.zza.zzc, 0, jArr, 0, 10);
        zztw.zze(this.zzc, zztoVar.zzb, zztr.zzb);
    }
}
