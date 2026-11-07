package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzbw extends SuspendLambda implements Function1 {
    Object zza;
    int zzb;
    final /* synthetic */ zzby zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbw(zzby zzbyVar, Continuation continuation) {
        super(1, continuation);
        this.zzc = zzbyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzbw(this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzbw) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Exception e;
        WebView webView;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zzb != 0) {
            webView = (WebView) this.zza;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Exception e2) {
                e = e2;
                webView.stopLoading();
                webView.destroy();
                throw e;
            }
        } else {
            ResultKt.throwOnFailure(obj);
            zzby zzbyVar = this.zzc;
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            WebView webViewZze = zzby.zze(zzbyVar, completableDeferredCompletableDeferred$default);
            try {
                zzbv zzbvVar = new zzbv(completableDeferredCompletableDeferred$default, null);
                this.zza = webViewZze;
                this.zzb = 1;
                Object objWithTimeout = TimeoutKt.withTimeout(15000L, zzbvVar, this);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                obj = objWithTimeout;
                webView = webViewZze;
            } catch (Exception e3) {
                e = e3;
                webView = webViewZze;
                webView.stopLoading();
                webView.destroy();
                throw e;
            }
        }
        return webView;
    }
}
