package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public interface zzdi extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    ListenableFuture zza(int i, int i2);

    ListenableFuture zzb(zzdq zzdqVar);

    ListenableFuture zzc(zzdq zzdqVar, zzdy zzdyVar);

    ListenableFuture zzd();

    zzpc zze();

    Executor zzf();

    Context zzg();

    boolean zzh();
}
