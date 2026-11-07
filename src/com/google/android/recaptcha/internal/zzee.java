package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzee implements zzev {
    public static final /* synthetic */ zzama zze(zzee zzeeVar, String str) {
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzc(str);
        return (zzama) zzalzVarZza.zzp();
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzev
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzed(this, null));
    }
}
