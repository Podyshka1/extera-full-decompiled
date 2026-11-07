package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzme {
    public static final Object zza(int i, int i2, Function2 function2, Continuation continuation) {
        return new zzmb(i, function2, Boxing.boxInt(i2));
    }
}
