package com.google.android.recaptcha.internal;

import java.security.Provider;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadg implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Cipher.getInstance(str) : Cipher.getInstance(str, provider);
    }
}
