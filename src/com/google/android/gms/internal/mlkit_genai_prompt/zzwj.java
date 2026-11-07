package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwj implements Function1 {
    final /* synthetic */ ListenableFuture zza;

    public zzwj(ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        this.zza.cancel(false);
        return Unit.INSTANCE;
    }
}
