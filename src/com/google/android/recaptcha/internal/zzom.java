package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzom extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzakg zzb;
    final /* synthetic */ zzon zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzom(zzakg zzakgVar, zzon zzonVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzakgVar;
        this.zzc = zzonVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzom zzomVar = new zzom(this.zzb, this.zzc, continuation);
        zzomVar.zzd = obj;
        return zzomVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzom) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007e, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmb) r6).zza(r1, r5) == r0) goto L14;
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
            zzmgVar = (zzmg) this.zzd;
            zzakg zzakgVar = this.zzb;
            zzajz zzajzVarZzg = zzaka.zzg();
            zzajzVarZzg.zza(zzakgVar.zzd().zzb());
            zzajzVarZzg.zze(zzakgVar.zzg().zza());
            zzajzVarZzg.zzb(zzakgVar.zzd().zzd());
            zzajzVarZzg.zzc(zzakgVar.zzd().zze());
            zzajzVarZzg.zzd(zzakgVar.zzd().zzg());
            zzaka zzakaVar = (zzaka) zzajzVarZzg.zzp();
            zzng zzngVarZzb = this.zzc.zzb();
            this.zzd = zzmgVar;
            this.zza = 1;
            obj = zzoa.zze(zzngVarZzb, zzakaVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzmgVar = (zzmg) this.zzd;
        ResultKt.throwOnFailure(obj);
        this.zzd = null;
        this.zza = 2;
    }
}
