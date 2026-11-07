package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzk implements zzj {
    @Override // com.google.android.recaptcha.internal.zzj
    public final byte zza(zzv zzvVar, int i) {
        return zzvVar.zzb(i);
    }

    @Override // com.google.android.recaptcha.internal.zzj
    public final zzv zzb(zzv zzvVar, int i, int i2) {
        byte[] bArr;
        int length;
        if (i < 0 || i > i2 || i2 > (length = (bArr = zzvVar.zza).length) || i > i2 || i2 > length) {
            throw new IndexOutOfBoundsException();
        }
        return new zzv(zzv.zzh(bArr, i, i2 - i));
    }

    @Override // com.google.android.recaptcha.internal.zzj
    public final zzj zzc() {
        return new zzk();
    }
}
