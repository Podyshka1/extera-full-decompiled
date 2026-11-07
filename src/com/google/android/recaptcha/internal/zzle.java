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
final class zzle extends SuspendLambda implements Function2 {
    final /* synthetic */ zzlf zza;
    final /* synthetic */ zzamf zzb;
    final /* synthetic */ long zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzle(zzlf zzlfVar, zzamf zzamfVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zza = zzlfVar;
        this.zzb = zzamfVar;
        this.zzc = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzle zzleVar = new zzle(this.zza, this.zzb, this.zzc, continuation);
        zzleVar.zzd = obj;
        return zzleVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzle) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferred;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzmg zzmgVar = (zzmg) this.zzd;
        zzlf zzlfVar = this.zza;
        zzamf zzamfVar = this.zzb;
        long j = this.zzc;
        synchronized (zzmgVar) {
            try {
                if (zzlfVar.zze == null || ((deferred = zzlfVar.zze) != null && deferred.isCompleted())) {
                    zzlfVar.zze = BuildersKt__Builders_commonKt.async$default(zzlfVar.zzf.zzc(), null, null, new zzld(zzmgVar, zzlfVar, zzamfVar, j, null), 3, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return Unit.INSTANCE;
    }
}
