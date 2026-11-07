package com.google.android.recaptcha.internal;

import java.security.Provider;
import java.security.Signature;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadm implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
