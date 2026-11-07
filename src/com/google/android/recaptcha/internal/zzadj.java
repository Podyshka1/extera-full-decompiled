package com.google.android.recaptcha.internal;

import java.security.KeyPairGenerator;
import java.security.Provider;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadj implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? KeyPairGenerator.getInstance(str) : KeyPairGenerator.getInstance(str, provider);
    }
}
