package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import j$.time.Duration;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzdr extends zzdk {
    private Context zza;
    private ExecutorService zzb;
    private Executor zzc;
    private boolean zzd;
    private Duration zze;
    private ScheduledExecutorService zzf;
    private Optional zzg = Optional.empty();
    private byte zzh;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zza(ExecutorService executorService) {
        if (executorService != null) {
            this.zzb = executorService;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null workerExecutor");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zzb(Executor executor) {
        if (executor != null) {
            this.zzc = executor;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null callbackExecutor");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zzc(boolean z) {
        this.zzd = true;
        this.zzh = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zzd(Duration duration) {
        if (duration != null) {
            this.zze = duration;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null autoUnbindTimeoutMs");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zze(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService != null) {
            this.zzf = scheduledExecutorService;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null autoUnbindScheduledExecutor");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdk zzf(Optional optional) {
        if (optional != null) {
            this.zzg = optional;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null autoDownloadEnabled");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final Optional zzg() {
        ExecutorService executorService = this.zzb;
        return executorService == null ? Optional.empty() : Optional.of(executorService);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final Optional zzh() {
        ScheduledExecutorService scheduledExecutorService = this.zzf;
        return scheduledExecutorService == null ? Optional.empty() : Optional.of(scheduledExecutorService);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdk
    public final zzdn zzj() {
        Context context;
        ExecutorService executorService;
        Executor executor;
        Duration duration;
        ScheduledExecutorService scheduledExecutorService;
        if (this.zzh == 1 && (context = this.zza) != null && (executorService = this.zzb) != null && (executor = this.zzc) != null && (duration = this.zze) != null && (scheduledExecutorService = this.zzf) != null) {
            return new zzds(context, executorService, executor, this.zzd, duration, scheduledExecutorService, this.zzg, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" context");
        }
        if (this.zzb == null) {
            sb.append(" workerExecutor");
        }
        if (this.zzc == null) {
            sb.append(" callbackExecutor");
        }
        if (this.zzh == 0) {
            sb.append(" bindImportantEnabled");
        }
        if (this.zze == null) {
            sb.append(" autoUnbindTimeoutMs");
        }
        if (this.zzf == null) {
            sb.append(" autoUnbindScheduledExecutor");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }

    public final zzdk zzk(Context context) {
        if (context != null) {
            this.zza = context;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null context");
        return null;
    }
}
