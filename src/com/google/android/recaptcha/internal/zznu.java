package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zznu extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzoa zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zznu(zzoa zzoaVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzoaVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zznu zznuVar = new zznu(this.zzd, continuation);
        zznuVar.zze = obj;
        return zznuVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zznu) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzlp zzlpVar;
        zzoa zzoaVar;
        Mutex mutexZzd;
        Throwable th;
        Mutex mutex;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zze;
                zzoaVar = this.zzd;
                mutexZzd = zzoaVar.zzd();
                this.zze = zzlpVar;
                this.zza = mutexZzd;
                this.zzb = zzoaVar;
                this.zzc = 1;
                if (mutexZzd.lock(null, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                mutex = (Mutex) this.zze;
                try {
                    ResultKt.throwOnFailure(obj);
                    zzagx zzagxVar = (zzagx) obj;
                    mutex.unlock(null);
                    return zzagxVar;
                } catch (Throwable th2) {
                    th = th2;
                    mutex.unlock(null);
                    throw th;
                }
            }
            zzoaVar = (zzoa) this.zzb;
            Mutex mutex2 = (Mutex) this.zza;
            zzlpVar = (zzlp) this.zze;
            ResultKt.throwOnFailure(obj);
            mutexZzd = mutex2;
            String strZza = zzlpVar.zza().zza().zza();
            this.zze = mutexZzd;
            this.zza = null;
            this.zzb = null;
            this.zzc = 2;
            Object objZzb = zzoaVar.zzb(strZza, this);
            if (objZzb != coroutine_suspended) {
                Mutex mutex3 = mutexZzd;
                obj = objZzb;
                mutex = mutex3;
                zzagx zzagxVar2 = (zzagx) obj;
                mutex.unlock(null);
                return zzagxVar2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex4 = mutexZzd;
            th = th3;
            mutex = mutex4;
            mutex.unlock(null);
            throw th;
        }
    }
}
