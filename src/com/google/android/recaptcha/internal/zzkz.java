package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzkz extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzlf zzc;
    final /* synthetic */ zzamf zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkz(long j, zzlf zzlfVar, zzamf zzamfVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = j;
        this.zzc = zzlfVar;
        this.zzd = zzamfVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzkz zzkzVar = new zzkz(this.zzb, this.zzc, this.zzd, continuation);
        zzkzVar.zze = obj;
        return zzkzVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkz) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                zzlp zzlpVar = (zzlp) this.zze;
                long j = this.zzb;
                Boxing.boxLong(j);
                zzky zzkyVar = new zzky(zzlpVar, this.zzc, this.zzd, null);
                this.zza = 1;
                obj = TimeoutKt.withTimeout(j, zzkyVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return (zzakg) obj;
        } catch (zzhg e) {
            if (Intrinsics.areEqual(e.zza(), zzhf.zzc)) {
                throw this.zzc.zzd.zza(e, e);
            }
            throw e;
        } catch (TimeoutCancellationException e2) {
            throw this.zzc.zzd.zza(e2, new zzhg(zzhf.zzc, zzhe.zzb, e2.getMessage(), null, 8, null));
        } catch (Exception e3) {
            throw this.zzc.zzd.zza(e3, new zzhg(zzhf.zzc, zzhe.zzL, e3.getMessage(), null, 8, null));
        }
    }
}
