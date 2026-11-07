package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzci extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzcl zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzakg zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzci(zzcl zzclVar, long j, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzclVar;
        this.zzc = j;
        this.zzd = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzci zzciVar = new zzci(this.zzb, this.zzc, this.zzd, continuation);
        zzciVar.zze = obj;
        return zzciVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzci) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:
    
        if (r12 != r1) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
        } catch (Exception e) {
            this.zzb.zza = false;
            this.zza = 2;
            obj = zzcm.zza(e, new zzhg(zzhf.zzb, zzhe.zzz, e.getMessage(), null, 8, null));
            if (obj != coroutine_suspended) {
            }
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlp zzlpVar = (zzlp) this.zze;
            zzcl zzclVar = this.zzb;
            if (zzclVar.zza()) {
                return Unit.INSTANCE;
            }
            long j = this.zzc;
            zzch zzchVar = new zzch(zzlpVar, zzclVar, this.zzd, null);
            this.zza = 1;
            obj = TimeoutKt.withTimeout(j, zzchVar, this);
        } else {
            if (i != 1) {
                if (i != 2) {
                    zzhg zzhgVar = (zzhg) this.zze;
                    ResultKt.throwOnFailure(obj);
                    throw zzhgVar;
                }
                ResultKt.throwOnFailure(obj);
                zzhg zzhgVar2 = (zzhg) obj;
                this.zze = zzhgVar2;
                this.zza = 3;
                if (Unit.INSTANCE != coroutine_suspended) {
                    throw zzhgVar2;
                }
                return coroutine_suspended;
            }
            ResultKt.throwOnFailure(obj);
        }
        ResultKt.throwOnFailure(((Result) obj).getValue());
        this.zzb.zza = true;
        return Unit.INSTANCE;
    }
}
