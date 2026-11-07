package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zziu extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zziv zzc;
    final /* synthetic */ zzdp zzd;
    final /* synthetic */ zzakg zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziu(long j, zziv zzivVar, zzdp zzdpVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = j;
        this.zzc = zzivVar;
        this.zzd = zzdpVar;
        this.zze = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zziu zziuVar = new zziu(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zziuVar.zzf = obj;
        return zziuVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zziu) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar = (zzmg) this.zzf;
                long j = this.zzb;
                zzit zzitVar = new zzit(zzmgVar, this.zzc, this.zzd, this.zze, j, null);
                this.zza = 1;
                if (TimeoutKt.withTimeout(j, zzitVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        } catch (zzhg e) {
            throw e;
        } catch (TimeoutCancellationException e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzb, e2.getMessage(), null, 8, null);
        } catch (Exception e3) {
            throw new zzhg(zzhf.zzb, zzhe.zzz, e3.getMessage(), null, 8, null);
        }
    }
}
