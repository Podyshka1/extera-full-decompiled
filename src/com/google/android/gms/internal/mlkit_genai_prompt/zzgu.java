package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgu {
    private final Object zza = new Object();
    private final List zzb = new ArrayList();
    private boolean zzc;

    public final ListenableFuture zza(final ListenableFuture listenableFuture, final zzlc zzlcVar) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgt
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.zza.zzc(listenableFuture, zzlcVar, completer);
            }
        });
    }

    public final void zzb() {
        zzml zzmlVarZzq;
        synchronized (this.zza) {
            this.zzc = true;
            List list = this.zzb;
            zzmlVarZzq = zzml.zzq(list);
            list.clear();
        }
        int size = zzmlVarZzq.size();
        for (int i = 0; i < size; i++) {
            ((Runnable) zzmlVarZzq.get(i)).run();
        }
    }

    public final /* synthetic */ Object zzc(final ListenableFuture listenableFuture, final zzlc zzlcVar, final CallbackToFutureAdapter.Completer completer) {
        completer.addCancellationListener(new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                listenableFuture.cancel(false);
            }
        }, zzpi.zza());
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzgs
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                completer.setException((Throwable) zzlcVar.zza());
            }
        };
        synchronized (this.zza) {
            try {
                if (this.zzc) {
                    runnable.run();
                } else {
                    this.zzb.add(runnable);
                }
            } finally {
            }
        }
        zzot.zzh(listenableFuture, new zzgq(this, completer, runnable), zzpi.zza());
        return "FailureSignal.propagate";
    }

    public final /* synthetic */ void zzd(Runnable runnable) {
        synchronized (this.zza) {
            try {
                if (!this.zzb.remove(runnable) && !this.zzc) {
                    throw new zzld();
                }
            } finally {
            }
        }
    }
}
