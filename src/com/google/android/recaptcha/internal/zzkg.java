package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzkg extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzkh zzc;
    final /* synthetic */ long zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkg(zzkh zzkhVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzkhVar;
        this.zzd = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzkg zzkgVar = new zzkg(this.zzc, this.zzd, continuation);
        zzkgVar.zze = obj;
        return zzkgVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzkg) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzhg zzhgVar;
        zzkg zzkgVar;
        zzmg zzmgVar;
        zzkh zzkhVar;
        zzkh zzkhVar2;
        zzhg e;
        zziz zzizVar;
        double d;
        double d2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zze;
            zzkh zzkhVar3 = this.zzc;
            if (Intrinsics.areEqual(zzkhVar3.zza, zzkm.zzb) || Intrinsics.areEqual(zzkhVar3.zza, zzkm.zzd)) {
                return Unit.INSTANCE;
            }
            zzkhVar3.zza = zzkm.zzc;
            try {
                double d3 = this.zzd;
                zzizVar = zzkhVar3.zzc;
                d = 0.4d * d3;
                d2 = d3 * 0.6d;
                this.zze = zzkhVar3;
                this.zza = zzmgVar;
                this.zzb = 1;
                zzkgVar = this;
            } catch (zzhg e2) {
                e = e2;
                zzkgVar = this;
                zzhgVar = e;
                zzkgVar.zzc.zza = zzkm.zzd;
                throw zzhgVar;
            }
            try {
                Object objZza = zzizVar.zza((long) d2, (long) d, zzkgVar);
                if (objZza != coroutine_suspended) {
                    zzkhVar = zzkhVar3;
                    obj = objZza;
                }
                return coroutine_suspended;
            } catch (zzhg e3) {
                e = e3;
                zzhgVar = e;
                zzkgVar.zzc.zza = zzkm.zzd;
                throw zzhgVar;
            }
        }
        try {
            if (i != 1) {
                zzkhVar2 = (zzkh) this.zze;
                ResultKt.throwOnFailure(obj);
                zzkgVar = this;
                zzkhVar2.zzb = (zzakg) obj;
                zzkgVar.zzc.zza = zzkm.zzb;
                return Unit.INSTANCE;
            }
            zzmgVar = (zzmg) this.zza;
            zzkhVar = (zzkh) this.zze;
            ResultKt.throwOnFailure(obj);
            zzkgVar = this;
        } catch (zzhg e4) {
            zzhgVar = e4;
            zzkgVar = this;
            zzkgVar.zzc.zza = zzkm.zzd;
            throw zzhgVar;
        }
        zzkgVar.zze = zzkhVar;
        zzkgVar.zza = null;
        zzkgVar.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar, zzkgVar);
        if (obj == coroutine_suspended) {
            return coroutine_suspended;
        }
        zzkhVar2 = zzkhVar;
        zzkhVar2.zzb = (zzakg) obj;
        zzkgVar.zzc.zza = zzkm.zzb;
        return Unit.INSTANCE;
    }
}
