package com.google.android.recaptcha.internal;

import java.util.UUID;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmd {
    private final zzlj zza;
    private final zzht zzb;
    private final String zzc;
    private final String zzd = UUID.randomUUID().toString();
    private final int zze;

    public zzmd(zzlj zzljVar, zzht zzhtVar, String str, int i) {
        this.zza = zzljVar;
        this.zzb = zzhtVar;
        this.zzc = str;
        this.zze = i;
    }

    public final String zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final Object zzc(Function2 function2, Continuation continuation) {
        return function2.invoke(new zzmg(this.zza, this.zzb, this), continuation);
    }

    public final int zzd() {
        return this.zze;
    }
}
