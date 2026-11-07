package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
final class zzgn extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzgo zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgn(zzgo zzgoVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzgoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgn zzgnVar = new zzgn(this.zzc, continuation);
        zzgnVar.zzd = obj;
        return zzgnVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgn) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        if (r10 != r1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r2).zza(r0, r9) != r1) goto L49;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        Exception exc;
        Exception exc2;
        zzhg zzhgVar;
        zzmg zzmgVar2;
        Object objZzk;
        zzmg zzmgVar3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (zzhg e) {
            zzhgVar = e;
            zzmgVar2 = zzmgVar3;
            zzgo zzgoVar = this.zzc;
            Job.cancel$default(zzgoVar.zzi(), null, 1, null);
            zzakg zzakgVar = zzgoVar.zzj;
            if (zzakgVar != null) {
                this.zzd = zzhgVar;
                this.zza = zzmgVar2;
                this.zzb = 2;
                objZzk = zzgo.zzk(zzgoVar, zzakgVar, this);
                if (objZzk != coroutine_suspended) {
                    this.zzd = zzhgVar;
                    this.zza = null;
                    this.zzb = 3;
                }
            }
            throw zzhgVar;
        } catch (TimeoutCancellationException e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzar, e2.getMessage(), null, 8, null);
        } catch (Exception e3) {
            zzmgVar = zzmgVar3;
            zzgo zzgoVar2 = this.zzc;
            Job.cancel$default(zzgoVar2.zzi(), null, 1, null);
            zzakg zzakgVar2 = zzgoVar2.zzj;
            if (zzakgVar2 == null) {
                exc = e3;
                throw new zzhg(zzhf.zzb, zzhe.zzak, exc.getMessage(), null, 8, null);
            }
            this.zzd = e3;
            this.zza = zzmgVar;
            this.zzb = 4;
            Object objZzk2 = zzgo.zzk(zzgoVar2, zzakgVar2, this);
            if (objZzk2 != coroutine_suspended) {
                exc2 = e3;
                obj = objZzk2;
            }
            return coroutine_suspended;
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar3 = (zzmg) this.zzd;
            Deferred deferredZzi = this.zzc.zzi();
            this.zzd = zzmgVar3;
            this.zzb = 1;
            obj = deferredZzi.await(this);
        } else if (i == 1) {
            zzmgVar3 = (zzmg) this.zzd;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                if (i == 3) {
                    zzhg zzhgVar2 = (zzhg) this.zzd;
                    ResultKt.throwOnFailure(obj);
                    throw zzhgVar2;
                }
                if (i != 4) {
                    exc = (Exception) this.zzd;
                    ResultKt.throwOnFailure(obj);
                    throw new zzhg(zzhf.zzb, zzhe.zzak, exc.getMessage(), null, 8, null);
                }
                zzmgVar = (zzmg) this.zza;
                exc2 = (Exception) this.zzd;
                ResultKt.throwOnFailure(obj);
                this.zzd = exc2;
                this.zza = null;
                this.zzb = 5;
                if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
                    exc = exc2;
                    throw new zzhg(zzhf.zzb, zzhe.zzak, exc.getMessage(), null, 8, null);
                }
                return coroutine_suspended;
            }
            zzmgVar2 = (zzmg) this.zza;
            zzhg zzhgVar3 = (zzhg) this.zzd;
            ResultKt.throwOnFailure(obj);
            objZzk = obj;
            zzhgVar = zzhgVar3;
            this.zzd = zzhgVar;
            this.zza = null;
            this.zzb = 3;
        }
        ResultKt.throwOnFailure(((Result) obj).getValue());
        return Unit.INSTANCE;
    }
}
