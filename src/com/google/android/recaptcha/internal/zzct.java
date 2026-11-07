package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzct {
    private final List zza;

    public zzct(List list) {
        this.zza = list;
    }

    public final List zza() {
        return this.zza;
    }

    public final Object zzb(long j, zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzcs(this, j, zzakgVar, null));
    }

    public final Object zzc(String str, zzaka zzakaVar, long j, Continuation continuation) {
        return new zzmc(new zzcp(this, str, zzakaVar, j, null));
    }
}
