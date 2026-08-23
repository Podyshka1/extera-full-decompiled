package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwx implements AsyncCallable {
    final /* synthetic */ zzws zza;
    final /* synthetic */ AsyncCallable zzb;

    public zzwx(zzws zzwsVar, AsyncCallable asyncCallable) {
        this.zza = zzwsVar;
        this.zzb = asyncCallable;
    }

    @Override // com.google.common.util.concurrent.AsyncCallable
    public final ListenableFuture call() {
        zzws zzwsVarZzc = zzvy.zzc(zzvy.zzd(), this.zza);
        try {
            return this.zzb.call();
        } finally {
        }
    }

    public final String toString() {
        AsyncCallable asyncCallable = this.zzb;
        StringBuilder sb = new StringBuilder(asyncCallable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(asyncCallable);
        sb.append("]");
        return sb.toString();
    }
}
