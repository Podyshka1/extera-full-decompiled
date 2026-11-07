package com.google.android.recaptcha.internal;

import java.security.Provider;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes5.dex */
public final class zzadk implements zzadn {
    @Override // com.google.android.recaptcha.internal.zzadn
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        return provider == null ? Mac.getInstance(str) : Mac.getInstance(str, provider);
    }
}
