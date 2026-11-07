package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzcn extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzmg zzc;
    final /* synthetic */ zzcl zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zzaka zzf;
    final /* synthetic */ long zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcn(zzmg zzmgVar, zzcl zzclVar, String str, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzmgVar;
        this.zzd = zzclVar;
        this.zze = str;
        this.zzf = zzakaVar;
        this.zzg = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzcn(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcn) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = this.zzc;
            zzcl zzclVar = this.zzd;
            String str = this.zze;
            zzaka zzakaVar = this.zzf;
            long j = this.zzg;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = new zzmc(new zzcg(zzclVar, str, zzakaVar, j, null));
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzmgVar = (zzmg) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzb = 2;
        Object objZza = ((zzmc) obj).zza(zzmgVar, this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
