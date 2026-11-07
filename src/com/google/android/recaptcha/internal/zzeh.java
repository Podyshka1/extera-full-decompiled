package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzeh implements zzev {
    private boolean zza = true;

    @Override // com.google.android.recaptcha.internal.zzev
    public final int zza() {
        return 25;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final boolean zzb() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzef(zzakaVar, this, null));
    }

    public final void zze(boolean z) {
        this.zza = false;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzk(zzakk zzakkVar, Continuation continuation) {
        return new zzmc(new zzeg(zzakkVar, this, null));
    }
}
