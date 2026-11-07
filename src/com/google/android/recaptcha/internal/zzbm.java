package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzbm extends SuspendLambda implements Function2 {
    final /* synthetic */ zzbp zza;
    final /* synthetic */ WebView zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbm(zzbp zzbpVar, WebView webView, Continuation continuation) {
        super(2, continuation);
        this.zza = zzbpVar;
        this.zzb = webView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzbm(this.zza, this.zzb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzbm) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.zza.zzo(this.zzb);
        return Unit.INSTANCE;
    }
}
