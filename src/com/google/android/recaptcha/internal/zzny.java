package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzny extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    int zzd;
    final /* synthetic */ zzoa zze;
    final /* synthetic */ zzagx zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzny(zzoa zzoaVar, zzagx zzagxVar, Continuation continuation) {
        super(2, continuation);
        this.zze = zzoaVar;
        this.zzf = zzagxVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzny zznyVar = new zzny(this.zze, this.zzf, continuation);
        zznyVar.zzg = obj;
        return zznyVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzny) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzlp zzlpVar;
        zzagx zzagxVar;
        Mutex mutexZzd;
        zzoa zzoaVar;
        Throwable th;
        Mutex mutex;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzd;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zzg;
                zzoa zzoaVar2 = this.zze;
                zzagxVar = this.zzf;
                mutexZzd = zzoaVar2.zzd();
                this.zzg = zzlpVar;
                this.zza = mutexZzd;
                this.zzb = zzoaVar2;
                this.zzc = zzagxVar;
                this.zzd = 1;
                if (mutexZzd.lock(null, this) != coroutine_suspended) {
                    zzoaVar = zzoaVar2;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                mutex = (Mutex) this.zzg;
                try {
                    ResultKt.throwOnFailure(obj);
                    Unit unit = Unit.INSTANCE;
                    mutex.unlock(null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            zzagxVar = (zzagx) this.zzc;
            zzoaVar = (zzoa) this.zzb;
            mutexZzd = (Mutex) this.zza;
            zzlpVar = (zzlp) this.zzg;
            ResultKt.throwOnFailure(obj);
            String strZza = zzlpVar.zza().zza().zza();
            this.zzg = mutexZzd;
            this.zza = null;
            this.zzb = null;
            this.zzc = null;
            this.zzd = 2;
            if (zzoaVar.zza(zzagxVar, strZza, this) != coroutine_suspended) {
                mutex = mutexZzd;
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            th = th3;
            mutex = mutexZzd;
            mutex.unlock(null);
            throw th;
        }
    }
}
