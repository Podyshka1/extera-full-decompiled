package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgr extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzgy zzb;
    private /* synthetic */ Object zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgr(zzgy zzgyVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzgyVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgr zzgrVar = new zzgr(this.zzb, continuation);
        zzgrVar.zzc = obj;
        return zzgrVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgr) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r5).zza(r1, r4) != r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmg zzmgVar2 = (zzmg) this.zzc;
            zzne zzneVarZza = this.zzb.zza();
            this.zzc = zzmgVar2;
            this.zza = 1;
            if (zzneVarZza.zza("ovk", this) != coroutine_suspended) {
                zzmgVar = zzmgVar2;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzmgVar = (zzmg) this.zzc;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i != 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            zzmgVar = (zzmg) this.zzc;
            ResultKt.throwOnFailure(obj);
            this.zzc = null;
            this.zza = 3;
        }
        zzgy zzgyVar = this.zzb;
        this.zzc = zzmgVar;
        this.zza = 2;
        obj = zzgyVar.zzb(this);
        if (obj != coroutine_suspended) {
            this.zzc = null;
            this.zza = 3;
        }
        return coroutine_suspended;
    }
}
