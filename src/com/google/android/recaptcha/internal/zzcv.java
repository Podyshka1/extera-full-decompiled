package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzcv extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzcx zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzakg zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcv(zzcx zzcxVar, long j, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzcxVar;
        this.zzc = j;
        this.zzd = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzcv zzcvVar = new zzcv(this.zzb, this.zzc, this.zzd, continuation);
        zzcvVar.zze = obj;
        return zzcvVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcv) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0043, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r7).zza(r1.zza(), r6) == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zze;
            zzcx zzcxVar = this.zzb;
            long j = this.zzc;
            zzakg zzakgVar = this.zzd;
            zzct zzctVar = zzcxVar.zza;
            this.zze = zzlpVar;
            this.zza = 1;
            obj = zzctVar.zzb(j, zzakgVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzlpVar = (zzlp) this.zze;
        ResultKt.throwOnFailure(obj);
        this.zze = null;
        this.zza = 2;
    }
}
