package com.google.android.recaptcha.internal;

import java.util.concurrent.Executors;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhu {
    private final CoroutineScope zza = CoroutineScopeKt.MainScope();
    private final CoroutineScope zzb = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newSingleThreadExecutor(new zzhw("r1", 8))));
    private final CoroutineScope zzc = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newCachedThreadPool(new zzhw("rIo", null))));
    private final CoroutineScope zzd = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newSingleThreadExecutor(new zzhw("r2", null))));
    private final CoroutineScope zze = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newSingleThreadExecutor(new zzhw("r3", 8))));
    private final CoroutineScope zzf = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(Executors.newSingleThreadExecutor(new zzhw("rM", null))));

    public final CoroutineScope zza() {
        return this.zza;
    }

    public final CoroutineScope zzb() {
        return this.zzb;
    }

    public final CoroutineScope zzc() {
        return this.zzc;
    }

    public final CoroutineScope zzd() {
        return this.zzd;
    }

    public final CoroutineScope zze() {
        return this.zze;
    }

    public final CoroutineScope zzf() {
        return this.zzf;
    }
}
