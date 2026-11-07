package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgf extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzgo zzc;
    final /* synthetic */ zzalm zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgf(zzgo zzgoVar, zzalm zzalmVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzgoVar;
        this.zzd = zzalmVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzgf(this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgf) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        if (r0.zza(r3, r8, r7) == r1) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object, kotlin.Unit] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (zzhg e) {
            zzgy zzgyVar = this.zzc.zzo;
            this.zza = e;
            this.zzb = 3;
            if (new zzmc(new zzgr(zzgyVar, null)) != coroutine_suspended) {
                throw e;
            }
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzgy zzgyVar2 = this.zzc.zzo;
            this.zzb = 1;
            obj = zzgyVar2.zzc(this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                this = Unit.INSTANCE;
                return this;
            }
            zzhg zzhgVar = (zzhg) this.zza;
            ResultKt.throwOnFailure(obj);
            throw zzhgVar;
        }
        ResultKt.throwOnFailure(obj);
        String str = (String) obj;
        if (str == null) {
            throw new zzhg(zzhf.zzb, zzhe.zzaq, null, null, 12, null);
        }
        zzgz zzgzVar = this.zzc.zzd;
        zzalm zzalmVar = this.zzd;
        this.zzb = 2;
    }
}
