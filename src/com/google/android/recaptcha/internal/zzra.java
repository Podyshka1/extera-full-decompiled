package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzra extends zzqx {
    @Override // com.google.android.recaptcha.internal.zzqx, com.google.android.recaptcha.internal.zzrf
    public final zzre zza(CharSequence charSequence, Charset charset) {
        byte[] bytes = charSequence.toString().getBytes(charset);
        return zzb(bytes, 0, bytes.length);
    }

    @Override // com.google.android.recaptcha.internal.zzrf
    public final zzrg zzc() {
        return new zzqz(this, 32);
    }
}
