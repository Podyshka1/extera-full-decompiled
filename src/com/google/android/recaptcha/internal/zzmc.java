package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmc {
    private final Function2 zza;

    public zzmc(Function2 function2) {
        this.zza = function2;
    }

    public final Object zza(zzmg zzmgVar, Continuation continuation) {
        return this.zza.invoke(zzmgVar, continuation);
    }
}
