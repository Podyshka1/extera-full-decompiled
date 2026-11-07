package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzkc extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzke zzb;
    final /* synthetic */ CompletableDeferred zzc;
    final /* synthetic */ zzmg zzd;
    final /* synthetic */ long zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkc(zzke zzkeVar, CompletableDeferred completableDeferred, zzmg zzmgVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzkeVar;
        this.zzc = completableDeferred;
        this.zzd = zzmgVar;
        this.zze = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzkc(this.zzb, this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkc) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        zzhg zzhgVar;
        zzkc zzkcVar;
        zzhg e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.zza != 0) {
            try {
                ResultKt.throwOnFailure(obj);
                zzkcVar = this;
            } catch (zzhg e2) {
                zzhgVar = e2;
                zzkcVar = this;
                zzkcVar.zzb.zzd = zzkm.zzd;
                zzkcVar.zzc.completeExceptionally(zzhgVar);
            }
        } else {
            ResultKt.throwOnFailure(obj);
            try {
                zzhp zzhpVar = zzhp.zza;
                zzke zzkeVar = this.zzb;
                zzjz zzjzVar = new zzjz(zzkeVar);
                zzkb zzkbVar = new zzkb(this.zzd, zzkeVar, this.zze, this.zzc, null);
                this.zza = 1;
                zzkcVar = this;
                try {
                    obj = zzhpVar.zzc(zzjzVar, (10 & 2) != 0 ? 100L : 0L, (10 & 4) != 0 ? 1000L : 0L, 2.0d, zzkbVar, zzkcVar);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (zzhg e3) {
                    e = e3;
                    zzhgVar = e;
                    zzkcVar.zzb.zzd = zzkm.zzd;
                    zzkcVar.zzc.completeExceptionally(zzhgVar);
                }
            } catch (zzhg e4) {
                e = e4;
                zzkcVar = this;
                zzhgVar = e;
                zzkcVar.zzb.zzd = zzkm.zzd;
                zzkcVar.zzc.completeExceptionally(zzhgVar);
            }
        }
        ((Boolean) obj).getClass();
        return Unit.INSTANCE;
    }
}
