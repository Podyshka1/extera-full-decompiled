package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwi implements Runnable, zzwt {
    private zzws zza;
    private final boolean zzb = zzrn.zza(Thread.currentThread());
    private boolean zzc;
    private boolean zzd;
    private boolean zze;

    public zzwi(zzws zzwsVar, boolean z) {
        this.zze = false;
        this.zza = zzwsVar;
        this.zze = z;
    }

    private final void zzb() {
        this.zzc = true;
        if (!this.zzb || this.zzd) {
            return;
        }
        zzrn.zza(Thread.currentThread());
    }

    public final ListenableFuture zza(ListenableFuture listenableFuture) {
        if (this.zzc) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
            return null;
        }
        if (this.zzd) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Signal is already attached to future");
            return null;
        }
        this.zzd = true;
        listenableFuture.addListener(this, MoreExecutors.directExecutor());
        return listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzc && this.zzd) {
            zzb();
        } else {
            zzrn.zzb().post(zzwh.zza);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzwt, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzws zzwsVar = this.zza;
        try {
            this.zza = null;
            if (!this.zzd) {
                if (this.zzc) {
                    throw new IllegalStateException("Span was already closed!");
                }
                zzb();
            }
            if (zzwsVar != null) {
                zzwsVar.close();
            }
            if (this.zze) {
                zzvy.zzc(zzvy.zzd(), zzwg.zza);
            }
        } catch (Throwable th) {
            if (zzwsVar != null) {
                try {
                    zzwsVar.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
