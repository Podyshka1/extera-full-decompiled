package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzgk extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zzgo zze;
    final /* synthetic */ zzakg zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgk(zzgo zzgoVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zze = zzgoVar;
        this.zzf = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgk zzgkVar = new zzgk(this.zze, this.zzf, continuation);
        zzgkVar.zzg = obj;
        return zzgkVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgk) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzgo zzgoVar;
        zzmg zzmgVar;
        zzakg zzakgVar;
        Mutex mutex;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zzd != 0) {
            zzakgVar = (zzakg) this.zzc;
            zzgoVar = (zzgo) this.zzb;
            mutex = (Mutex) this.zza;
            zzmgVar = (zzmg) this.zzg;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            zzmg zzmgVar2 = (zzmg) this.zzg;
            zzgoVar = this.zze;
            zzakg zzakgVar2 = this.zzf;
            Mutex mutex2 = zzgoVar.zzl;
            this.zzg = zzmgVar2;
            this.zza = mutex2;
            this.zzb = zzgoVar;
            this.zzc = zzakgVar2;
            this.zzd = 1;
            if (mutex2.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            zzmgVar = zzmgVar2;
            zzakgVar = zzakgVar2;
            mutex = mutex2;
        }
        try {
            if (zzgoVar.zzm) {
                Unit unit = Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            zzgoVar.zzb = BuildersKt__Builders_commonKt.async$default(zzgoVar.zzp.zzc(), null, null, new zzgj(zzmgVar, zzgoVar, zzakgVar, null), 3, null);
            zzgoVar.zzm = true;
            Unit unit2 = Unit.INSTANCE;
            mutex.unlock(null);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
