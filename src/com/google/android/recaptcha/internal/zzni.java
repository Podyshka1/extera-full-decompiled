package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzni extends zzoa {
    private final zzne zza;

    public zzni(zzne zzneVar, zznf zznfVar) {
        super(zzneVar, zznfVar, zzoc.zza.zza(), 59, 57, 61, 72, zzaki.zze(), null);
        this.zza = zzneVar;
    }

    public final zzne zza() {
        return this.zza;
    }

    public final Object zzb(String str, Continuation continuation) {
        return new zzmc(new zznh(this, str, null));
    }
}
