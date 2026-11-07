package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
final class zzdm extends SuspendLambda implements Function1 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzdo zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzcz zzf;
    final /* synthetic */ String zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdm(zzmg zzmgVar, zzdo zzdoVar, String str, zzcz zzczVar, String str2, Continuation continuation) {
        super(1, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzdoVar;
        this.zze = str;
        this.zzf = zzczVar;
        this.zzg = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzdm(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzdm) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r7).zza(r1, r6) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = this.zzc;
                zzdo zzdoVar = this.zzd;
                zzcz zzczVar = this.zzf;
                String str = this.zzg;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = new zzmc(new zzdf(zzczVar, str, zzdoVar, null));
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            zzmgVar = (zzmg) this.zza;
            ResultKt.throwOnFailure(obj);
            this.zza = null;
            this.zzb = 2;
        } catch (Exception e) {
            e.getMessage();
            throw e;
        }
    }
}
