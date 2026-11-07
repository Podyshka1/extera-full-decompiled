package com.google.android.recaptcha.internal;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
final class zztb implements zztd {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    public zztb(boolean z) {
    }

    @Override // com.google.android.recaptcha.internal.zztd
    public final boolean zza() {
        return this.zza.get();
    }
}
