package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes5.dex */
final class zzjg extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    Object zzc;
    long zzd;
    int zze;
    final /* synthetic */ zzjj zzf;
    final /* synthetic */ long zzg;
    final /* synthetic */ RecaptchaAction zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjg(zzjj zzjjVar, long j, RecaptchaAction recaptchaAction, Continuation continuation) {
        super(2, continuation);
        this.zzf = zzjjVar;
        this.zzg = j;
        this.zzh = recaptchaAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzjg(this.zzf, this.zzg, this.zzh, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjg) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        zzjj zzjjVar;
        long j;
        RecaptchaAction recaptchaAction;
        Mutex mutex;
        RecaptchaAction recaptchaAction2;
        Throwable th;
        Mutex mutex2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zze;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzjjVar = this.zzf;
                j = this.zzg;
                recaptchaAction = this.zzh;
                mutex = zzjjVar.zzd;
                this.zza = mutex;
                this.zzb = zzjjVar;
                this.zzc = recaptchaAction;
                this.zzd = j;
                this.zze = 1;
                if (mutex.lock(null, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                mutex2 = (Mutex) this.zza;
                try {
                    ResultKt.throwOnFailure(obj);
                    Result resultM3607boximpl = Result.m3607boximpl(((Result) obj).getValue());
                    mutex2.unlock(null);
                    return resultM3607boximpl;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            long j2 = this.zzd;
            recaptchaAction = (RecaptchaAction) this.zzc;
            zzjjVar = (zzjj) this.zzb;
            Mutex mutex3 = (Mutex) this.zza;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            j = j2;
            zzmd zzmdVar = zzjjVar.zzc;
            zzjf zzjfVar = new zzjf(zzjjVar, j, recaptchaAction2, null);
            this.zza = mutex;
            this.zzb = null;
            this.zzc = null;
            this.zze = 2;
            Object objInvoke = zzjfVar.invoke(zzmdVar, this);
            if (objInvoke != coroutine_suspended) {
                Mutex mutex4 = mutex;
                obj = objInvoke;
                mutex2 = mutex4;
                Result resultM3607boximpl2 = Result.m3607boximpl(((Result) obj).getValue());
                mutex2.unlock(null);
                return resultM3607boximpl2;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            Mutex mutex5 = mutex;
            th = th3;
            mutex2 = mutex5;
            mutex2.unlock(null);
            throw th;
        }
        recaptchaAction2 = recaptchaAction;
    }
}
