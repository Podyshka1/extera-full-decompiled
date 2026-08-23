package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzet extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzez zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzet(String str, zzez zzezVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzezVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzet(this.zzb, this.zzc, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzet) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzez zzezVar = this.zzc;
        String str = this.zzb;
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        zzezVar.zzl.put(str, completableDeferredCompletableDeferred$default);
        String str2 = this.zzb;
        zzou zzouVarZzf = zzov.zzf();
        zzouVarZzf.zzd(str2);
        byte[] bArrZzd = ((zzov) zzouVarZzf.zzj()).zzd();
        BuildersKt__Builders_commonKt.launch$default(this.zzc.zzq.zzb(), null, null, new zzes(this.zzc, zzfy.zzh().zzi(bArrZzd, 0, bArrZzd.length), null), 3, null);
        this.zza = 1;
        Object objAwait = completableDeferredCompletableDeferred$default.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
