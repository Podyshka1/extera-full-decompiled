package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzfo extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzfp zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfo(zzfp zzfpVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzfpVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzfo zzfoVar = new zzfo(this.zzd, continuation);
        zzfoVar.zze = obj;
        return zzfoVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzfo) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a6, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r13).zza(r1, r12) != r0) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzfp zzfpVar;
        Mutex mutex;
        zzmg zzmgVar2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zze;
                zzfpVar = this.zzd;
                mutex = zzfpVar.zze;
                this.zze = zzmgVar;
                this.zza = mutex;
                this.zzb = zzfpVar;
                this.zzc = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                zzfpVar = (zzfp) this.zzb;
                mutex = (Mutex) this.zza;
                zzmg zzmgVar3 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                zzmgVar = zzmgVar3;
            } else {
                if (i != 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                zzmgVar2 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                this.zze = null;
                this.zzc = 3;
            }
            if (!Intrinsics.areEqual(zzfpVar.zzc, zzfq.zza)) {
                Unit unit = Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            zzfpVar.zzc = zzfq.zzb;
            zzfpVar.zza = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            Unit unit2 = Unit.INSTANCE;
            mutex.unlock(null);
            zzfp zzfpVar2 = this.zzd;
            BuildersKt__Builders_commonKt.launch$default(zzfpVar2.zzg.zzd(), null, null, new zzfn(zzmgVar, zzfpVar2, null), 3, null);
            this.zze = zzmgVar;
            this.zza = null;
            this.zzb = null;
            this.zzc = 2;
            zzmc zzmcVar = new zzmc(new zzfm(zzfpVar2, null));
            if (zzmcVar != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
                obj = zzmcVar;
                this.zze = null;
                this.zzc = 3;
            }
            return coroutine_suspended;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
