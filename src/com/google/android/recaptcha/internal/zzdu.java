package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzdu extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdv zzb;
    final /* synthetic */ zzalg zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdu(zzdv zzdvVar, long j, zzalg zzalgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzdvVar;
        this.zzc = zzalgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdu zzduVar = new zzdu(this.zzb, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, this.zzc, continuation);
        zzduVar.zzd = obj;
        return zzduVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdu) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzlp zzlpVar = (zzlp) this.zzd;
        zzdv zzdvVar = this.zzb;
        CoroutineContext coroutineContext = zzdvVar.zzc.zzc().getCoroutineContext();
        zzdt zzdtVar = new zzdt(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, zzdvVar, zzlpVar, this.zzc, null);
        this.zza = 1;
        Object objWithContext = BuildersKt.withContext(coroutineContext, zzdtVar, this);
        return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
    }
}
