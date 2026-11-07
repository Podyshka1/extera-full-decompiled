package com.google.android.recaptcha.internal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzqx implements zzrf {
    @Override // com.google.android.recaptcha.internal.zzrf
    public zzre zza(CharSequence charSequence, Charset charset) {
        zzrg zzrgVarZzc = zzc();
        zzrgVarZzc.zzd(charSequence, charset);
        return zzrgVarZzc.zzf();
    }

    public zzre zzb(byte[] bArr, int i, int i2) {
        throw null;
    }
}
