package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.SystemClock;
import com.google.mlkit.genai.common.StreamingCallback;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
final class zzatw implements StreamingCallback {
    final /* synthetic */ AtomicLong zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ StreamingCallback zzc;

    public zzatw(zzaun zzaunVar, AtomicLong atomicLong, long j, StreamingCallback streamingCallback) {
        this.zza = atomicLong;
        this.zzb = j;
        this.zzc = streamingCallback;
        Objects.requireNonNull(zzaunVar);
    }

    @Override // com.google.mlkit.genai.common.StreamingCallback
    public final void onNewText(String str) {
        this.zza.compareAndSet(0L, SystemClock.elapsedRealtime() - this.zzb);
        this.zzc.onNewText(str);
    }

    @Override // com.google.mlkit.genai.common.StreamingCallback
    public final void onNewThought(String str) {
        this.zzc.onNewThought(str);
    }
}
