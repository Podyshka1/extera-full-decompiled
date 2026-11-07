package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzjy extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzke zzb;
    final /* synthetic */ long zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjy(zzke zzkeVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzkeVar;
        this.zzc = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjy zzjyVar = new zzjy(this.zzb, this.zzc, continuation);
        zzjyVar.zzd = obj;
        return zzjyVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjy) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d A[Catch: Exception -> 0x0013, TRY_ENTER, TryCatch #0 {Exception -> 0x0013, blocks: (B:6:0x000f, B:20:0x0059, B:25:0x006d, B:26:0x007b, B:17:0x0046), top: B:43:0x0009 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzhg zzhgVar;
        zzmg zzmgVar;
        long jLongValue;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzd;
                zzke zzkeVar = this.zzb;
                long j = this.zzc;
                this.zzd = zzmgVar;
                this.zza = 1;
                obj = zzkeVar.zzp(j, this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                zzmgVar = (zzmg) this.zzd;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    ResultKt.throwOnFailure(obj);
                    jLongValue = this.zzc - ((Number) obj).longValue();
                    if (jLongValue >= 500) {
                        return Boxing.boxLong(jLongValue);
                    }
                    throw new zzhg(zzhf.zzc, zzhe.zzC, null, null, 12, null);
                }
                ResultKt.throwOnFailure(obj);
                zzke zzkeVar2 = this.zzb;
                zzjx zzjxVar = new zzjx(this.zzc, zzkeVar2, null);
                this.zza = 3;
                obj = zzkeVar2.zzq(zzjxVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                jLongValue = this.zzc - ((Number) obj).longValue();
                if (jLongValue >= 500) {
                }
            }
            this.zzd = null;
            this.zza = 2;
            if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
                zzke zzkeVar22 = this.zzb;
                zzjx zzjxVar2 = new zzjx(this.zzc, zzkeVar22, null);
                this.zza = 3;
                obj = zzkeVar22.zzq(zzjxVar2, this);
                if (obj == coroutine_suspended) {
                }
                jLongValue = this.zzc - ((Number) obj).longValue();
                if (jLongValue >= 500) {
                }
            }
            return coroutine_suspended;
        } catch (Exception e) {
            zzhg zzhgVar2 = e instanceof zzhg ? (zzhg) e : null;
            if (zzhgVar2 == null) {
                zzhgVar2 = new zzhg(zzhf.zzc, zzhe.zzC, e.getMessage(), null, 8, null);
            }
            zzke zzkeVar3 = this.zzb;
            if ((Intrinsics.areEqual(zzkeVar3.zza(), zzkm.zzd) || Intrinsics.areEqual(zzkeVar3.zza(), zzkm.zzc)) && (zzhgVar = zzkeVar3.zzb) != null) {
                throw zzhgVar;
            }
            throw zzhgVar2;
        }
    }
}
