package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
final class zzpm extends zzol implements RunnableFuture {
    private volatile zzpa zza;

    public zzpm(Callable callable) {
        this.zza = new zzpl(this, callable);
    }

    public static zzpm zza(Runnable runnable, Object obj) {
        return new zzpm(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzpa zzpaVar = this.zza;
        if (zzpaVar != null) {
            zzpaVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final void zzc() {
        zzpa zzpaVar;
        if (zzg() && (zzpaVar = this.zza) != null) {
            zzpaVar.zze();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzoc
    public final String zzd() {
        zzpa zzpaVar = this.zza;
        if (zzpaVar == null) {
            return super.zzd();
        }
        String string = zzpaVar.toString();
        StringBuilder sb = new StringBuilder(string.length() + 7);
        sb.append("task=[");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }
}
