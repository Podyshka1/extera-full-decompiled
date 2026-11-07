package com.google.android.recaptcha.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class zzjz extends FunctionReferenceImpl implements Function1 {
    public zzjz(Object obj) {
        super(1, obj, zzke.class, "isRetriable", "isRetriable(Ljava/lang/Exception;)Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return Boolean.valueOf(zzke.zze((zzke) this.receiver, (Exception) obj));
    }
}
