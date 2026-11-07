package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import j$.time.Duration;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdn {
    public static zzdk zzh(Context context) {
        zzdr zzdrVar = new zzdr();
        zzdrVar.zzk(context);
        zzdrVar.zzb(zzdl.zza);
        zzdrVar.zzc(true);
        zzdrVar.zzd(Duration.ZERO);
        zzdrVar.zzf(Optional.empty());
        return zzdrVar;
    }

    public abstract Context zza();

    public abstract ExecutorService zzb();

    public abstract Executor zzc();

    public abstract boolean zzd();

    public abstract Duration zze();

    public abstract ScheduledExecutorService zzf();

    public abstract Optional zzg();
}
