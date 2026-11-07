package com.google.android.recaptcha.internal;

import java.security.KeyFactory;
import java.security.Provider;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadi implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? KeyFactory.getInstance(str) : KeyFactory.getInstance(str, provider);
    }
}
