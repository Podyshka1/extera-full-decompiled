package com.google.android.recaptcha.internal;

import java.util.List;
import java.util.Optional;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzgg extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzgo zzd;
    final /* synthetic */ zzalm zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgg(zzmg zzmgVar, zzgo zzgoVar, zzalm zzalmVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzgoVar;
        this.zze = zzalmVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgg(this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgg) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzgo zzgoVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar = this.zzc;
                zzgf zzgfVar = new zzgf(this.zzd, this.zze, null);
                this.zzb = 1;
                if (zzmgVar.zze(50, null, zzgfVar, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    ResultKt.throwOnFailure(obj);
                    ResultKt.throwOnFailure(((Result) obj).getValue());
                    return Unit.INSTANCE;
                }
                zzgoVar = (zzgo) this.zza;
                ResultKt.throwOnFailure(obj);
                zzgoVar.zza = (List) obj;
                zzgo zzgoVar2 = this.zzd;
                zzgoVar2.zzE(this.zzc.zza());
                Deferred deferredZzD = zzgoVar2.zzD(Boxing.boxLong(((Number) zzgoVar2.zzh().get(0)).longValue()), Optional.of(zzgoVar2.zzi));
                this.zza = null;
                this.zzb = 3;
                obj = deferredZzD.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ResultKt.throwOnFailure(((Result) obj).getValue());
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            zzgoVar = this.zzd;
            zzgo.zzs(zzgoVar, this.zze);
            this.zza = zzgoVar;
            this.zzb = 2;
            obj = zzgoVar.zzF(this);
            if (obj != coroutine_suspended) {
                zzgoVar.zza = (List) obj;
                zzgo zzgoVar22 = this.zzd;
                zzgoVar22.zzE(this.zzc.zza());
                Deferred deferredZzD2 = zzgoVar22.zzD(Boxing.boxLong(((Number) zzgoVar22.zzh().get(0)).longValue()), Optional.of(zzgoVar22.zzi));
                this.zza = null;
                this.zzb = 3;
                obj = deferredZzD2.await(this);
                if (obj == coroutine_suspended) {
                }
                ResultKt.throwOnFailure(((Result) obj).getValue());
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzak, e2.getMessage(), null, 8, null);
        }
    }
}
