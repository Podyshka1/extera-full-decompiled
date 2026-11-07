package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzqy implements zzrg {
    public zzrg zzb(byte[] bArr) {
        zzc(bArr, 0, bArr.length);
        return this;
    }

    public abstract zzrg zzc(byte[] bArr, int i, int i2);

    @Override // com.google.android.recaptcha.internal.zzrg
    public final zzrg zzd(CharSequence charSequence, Charset charset) {
        zzb(charSequence.toString().getBytes(charset));
        return this;
    }
}
