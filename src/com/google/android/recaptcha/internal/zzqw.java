package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzqw extends zzqy {
    public abstract void zza(byte[] bArr, int i, int i2);

    @Override // com.google.android.recaptcha.internal.zzqy
    public final zzrg zzc(byte[] bArr, int i, int i2) {
        zzoq.zzg(0, i2, bArr.length);
        zza(bArr, 0, i2);
        return this;
    }

    @Override // com.google.android.recaptcha.internal.zzqy
    public final zzrg zzb(byte[] bArr) {
        bArr.getClass();
        zza(bArr, 0, bArr.length);
        return this;
    }
}
