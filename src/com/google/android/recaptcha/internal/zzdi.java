package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzdi extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzlp zzb;
    final /* synthetic */ zzdo zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzakg zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdi(zzlp zzlpVar, zzdo zzdoVar, long j, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzlpVar;
        this.zzc = zzdoVar;
        this.zzd = j;
        this.zze = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdi zzdiVar = new zzdi(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzdiVar.zzf = obj;
        return zzdiVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdi) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0061, code lost:
    
        if (r1.await(r13) == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Deferred deferredAsync$default;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.zzf;
            zzlp zzlpVar = this.zzb;
            zzdo zzdoVar = this.zzc;
            long j = this.zzd;
            zzakg zzakgVar = this.zze;
            Deferred deferredAsync$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzdh(zzlpVar, zzdoVar, j, zzakgVar, null), 3, null);
            deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new zzdg(zzlpVar, zzdoVar, j, zzakgVar, null), 3, null);
            this.zzf = deferredAsync$default;
            this.zza = 1;
            if (deferredAsync$default2.await(this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        deferredAsync$default = (Deferred) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = null;
        this.zza = 2;
    }
}
