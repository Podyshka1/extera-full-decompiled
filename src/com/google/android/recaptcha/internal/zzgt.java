package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzgt extends SuspendLambda implements Function2 {
    final /* synthetic */ zzgy zza;
    private /* synthetic */ Object zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgt(zzgy zzgyVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgt zzgtVar = new zzgt(this.zza, continuation);
        zzgtVar.zzb = obj;
        return zzgtVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgt) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferred;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzmg zzmgVar = (zzmg) this.zzb;
        zzgy zzgyVar = this.zza;
        synchronized (zzmgVar) {
            try {
                if (zzgyVar.zzb == null || ((deferred = zzgyVar.zzb) != null && deferred.isCompleted())) {
                    zzgyVar.zzb = BuildersKt__Builders_commonKt.async$default(zzgyVar.zzg().zzc(), null, null, new zzgs(zzmgVar, zzgyVar, null), 3, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Unit.INSTANCE;
    }
}
