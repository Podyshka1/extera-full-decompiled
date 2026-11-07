package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzbx extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzby zzb;
    final /* synthetic */ CompletableDeferred zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbx(zzby zzbyVar, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzbyVar;
        this.zzc = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzbx(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzbx) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Exception exc;
        zzbx zzbxVar;
        Exception e;
        zzhp zzhpVar;
        zzbw zzbwVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zza != 0) {
            try {
                ResultKt.throwOnFailure(obj);
                zzbxVar = this;
            } catch (Exception e2) {
                exc = e2;
                zzbxVar = this;
                zzby zzbyVar = zzbxVar.zzb;
                CompletableDeferred completableDeferred = zzbxVar.zzc;
                zzbyVar.zze.zzd(completableDeferred);
                completableDeferred.completeExceptionally(exc);
            }
        } else {
            ResultKt.throwOnFailure(obj);
            try {
                zzhpVar = zzhp.zza;
                zzbwVar = new zzbw(this.zzb, null);
                this.zza = 1;
                zzbxVar = this;
            } catch (Exception e3) {
                e = e3;
                zzbxVar = this;
                exc = e;
                zzby zzbyVar2 = zzbxVar.zzb;
                CompletableDeferred completableDeferred2 = zzbxVar.zzc;
                zzbyVar2.zze.zzd(completableDeferred2);
                completableDeferred2.completeExceptionally(exc);
            }
            try {
                obj = zzhpVar.zza(3, 100L, 1000L, 2.0d, zzbwVar, zzbxVar);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Exception e4) {
                e = e4;
                exc = e;
                zzby zzbyVar22 = zzbxVar.zzb;
                CompletableDeferred completableDeferred22 = zzbxVar.zzc;
                zzbyVar22.zze.zzd(completableDeferred22);
                completableDeferred22.completeExceptionally(exc);
            }
        }
        WebView webView = (WebView) obj;
        zzbxVar.zzb.zze.zzc(webView);
        zzbxVar.zzc.complete(webView);
        return Unit.INSTANCE;
    }
}
