package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzom extends zzou {
    public static zzom zzv(ListenableFuture listenableFuture) {
        return listenableFuture instanceof zzom ? (zzom) listenableFuture : new zzon(listenableFuture);
    }
}
