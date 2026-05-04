package com.google.android.recaptcha.internal;

import android.app.Application;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzah extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ Application zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzah(Application application, String str, long j, zzbq zzbqVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = application;
        this.zzc = str;
        this.zzd = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzah(this.zzb, this.zzc, this.zzd, null, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzah) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        Application application = this.zzb;
        String str = this.zzc;
        long j = this.zzd;
        zzam zzamVar = zzam.zza;
        this.zza = 1;
        Object objZza = zzamVar.zza(application, str, j, new zzab("https://www.recaptcha.net/recaptcha/api3"), null, null, zzam.zze, this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
