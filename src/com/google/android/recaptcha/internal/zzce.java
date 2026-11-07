package com.google.android.recaptcha.internal;

import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes5.dex */
public final class zzce implements zzcf {
    private final CompletableDeferred zza;

    public zzce(CompletableDeferred completableDeferred) {
        this.zza = completableDeferred;
    }

    public final CompletableDeferred zza() {
        return this.zza;
    }
}
