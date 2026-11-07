package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import j$.time.Duration;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes5.dex */
final class zzds extends zzdn {
    private final Context zza;
    private final ExecutorService zzb;
    private final Executor zzc;
    private final boolean zzd;
    private final Duration zze;
    private final ScheduledExecutorService zzf;
    private final Optional zzg;

    public /* synthetic */ zzds(Context context, ExecutorService executorService, Executor executor, boolean z, Duration duration, ScheduledExecutorService scheduledExecutorService, Optional optional, byte[] bArr) {
        this.zza = context;
        this.zzb = executorService;
        this.zzc = executor;
        this.zzd = z;
        this.zze = duration;
        this.zzf = scheduledExecutorService;
        this.zzg = optional;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdn) {
            zzdn zzdnVar = (zzdn) obj;
            if (this.zza.equals(zzdnVar.zza()) && this.zzb.equals(zzdnVar.zzb()) && this.zzc.equals(zzdnVar.zzc()) && this.zzd == zzdnVar.zzd() && this.zze.equals(zzdnVar.zze()) && this.zzf.equals(zzdnVar.zzf()) && this.zzg.equals(zzdnVar.zzg())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzg.hashCode() ^ ((((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ (true != this.zzd ? 1237 : 1231)) * 1000003) ^ this.zze.hashCode()) * 1000003) ^ this.zzf.hashCode()) * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        int length2 = string2.length();
        String string3 = this.zzc.toString();
        int length3 = string3.length();
        Optional optional = this.zzg;
        ScheduledExecutorService scheduledExecutorService = this.zzf;
        String string4 = this.zze.toString();
        String string5 = scheduledExecutorService.toString();
        String strValueOf = String.valueOf(optional);
        boolean z = this.zzd;
        int length4 = String.valueOf(z).length();
        int length5 = string4.length();
        StringBuilder sb = new StringBuilder(length + 45 + length2 + 19 + length3 + 23 + length4 + 22 + length5 + 30 + string5.length() + 22 + strValueOf.length() + 1);
        sb.append("AiCoreClientOptions{context=");
        sb.append(string);
        sb.append(", workerExecutor=");
        sb.append(string2);
        sb.append(", callbackExecutor=");
        sb.append(string3);
        sb.append(", bindImportantEnabled=");
        sb.append(z);
        sb.append(", autoUnbindTimeoutMs=");
        sb.append(string4);
        sb.append(", autoUnbindScheduledExecutor=");
        sb.append(string5);
        sb.append(", autoDownloadEnabled=");
        sb.append(strValueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final ExecutorService zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final Executor zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final boolean zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final Duration zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final ScheduledExecutorService zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdn
    public final Optional zzg() {
        return this.zzg;
    }
}
