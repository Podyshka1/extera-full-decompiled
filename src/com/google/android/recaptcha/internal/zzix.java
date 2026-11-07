package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzix extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zziz zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzakg zze;
    final /* synthetic */ long zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzix(zziz zzizVar, String str, String str2, zzakg zzakgVar, long j, String str3, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzizVar;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzakgVar;
        this.zzf = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzix zzixVar = new zzix(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, null, continuation);
        zzixVar.zzg = obj;
        return zzixVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzix) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzg;
            zziz zzizVar = this.zzb;
            zzdp zzdpVar = zzizVar.zzd;
            if (zzdpVar == null) {
                throw new zzhg(zzhf.zzb, zzhe.zzC, null, null, 12, null);
            }
            zzio zzioVar = zzizVar.zzb;
            String str = this.zzc;
            String str2 = this.zzd;
            zzakg zzakgVar = this.zze;
            long j = this.zzf;
            this.zzg = zzmgVar;
            this.zza = 1;
            obj = new zzmc(new zzim(j, zzioVar, zzdpVar, str, zzakgVar, str2, null, null));
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        zzmgVar = (zzmg) this.zzg;
        ResultKt.throwOnFailure(obj);
        this.zzg = null;
        this.zza = 2;
        Object objZza = ((zzmc) obj).zza(zzmgVar, this);
        return objZza == coroutine_suspended ? coroutine_suspended : objZza;
    }
}
