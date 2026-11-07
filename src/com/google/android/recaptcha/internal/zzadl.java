package com.google.android.recaptcha.internal;

import java.security.MessageDigest;
import java.security.Provider;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadl implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? MessageDigest.getInstance(str) : MessageDigest.getInstance(str, provider);
    }
}
