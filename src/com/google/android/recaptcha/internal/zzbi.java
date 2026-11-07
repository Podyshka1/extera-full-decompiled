package com.google.android.recaptcha.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbi {
    private final AtomicReference zza = new AtomicReference(null);

    public final void zzb() {
        this.zza.set(null);
    }

    public final boolean zzc() {
        return this.zza.get() != null;
    }

    public final void zzd() {
        zzbq zzbqVar = (zzbq) this.zza.get();
        if (zzbqVar != null) {
            zzbqVar.zzg();
        }
    }
}
