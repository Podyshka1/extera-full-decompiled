package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzdb extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlp zzc;
    final /* synthetic */ zzdo zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ String zzf;
    final /* synthetic */ zzcz zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdb(zzlp zzlpVar, zzdo zzdoVar, String str, String str2, zzcz zzczVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzlpVar;
        this.zzd = zzdoVar;
        this.zze = str;
        this.zzf = str2;
        this.zzg = zzczVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzdb(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdb) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r7).zza(r1.zza(), r6) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = this.zzc;
            zzdo zzdoVar = this.zzd;
            String str = this.zze;
            String str2 = this.zzf;
            zzcz zzczVar = this.zzg;
            this.zza = zzlpVar;
            this.zzb = 1;
            obj = zzdo.zzg(zzdoVar, str, str2, zzczVar, this);
            if (obj == coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        zzlpVar = (zzlp) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
    }
}
