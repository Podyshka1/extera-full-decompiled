package com.google.android.recaptcha.internal;

import android.app.Application;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzec implements zzev {
    private final Application zza;
    private final zzhr zzb;

    public zzec(Application application, zzgp zzgpVar, zzhr zzhrVar) {
        this.zza = application;
        this.zzb = zzhrVar;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzeb(this, null));
    }
}
