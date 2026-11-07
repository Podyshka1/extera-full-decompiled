package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzka extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzke zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ CompletableDeferred zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzka(zzke zzkeVar, long j, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzkeVar;
        this.zzd = j;
        this.zze = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzka zzkaVar = new zzka(this.zzc, this.zzd, this.zze, continuation);
        zzkaVar.zzf = obj;
        return zzkaVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzka) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzhg zzhgVar;
        zzka zzkaVar;
        zzlp zzlpVar;
        zzke zzkeVar;
        zzke zzkeVar2;
        zzhg e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i != 0) {
            try {
                if (i != 1) {
                    zzkeVar2 = (zzke) this.zzf;
                    ResultKt.throwOnFailure(obj);
                    zzkaVar = this;
                    zzkeVar2.zzc = (zzakg) obj;
                    zzkaVar.zzc.zzd = zzkm.zzb;
                    return Boxing.boxBoolean(zzkaVar.zze.complete(Unit.INSTANCE));
                }
                zzlpVar = (zzlp) this.zza;
                zzkeVar = (zzke) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzkaVar = this;
            } catch (zzhg e2) {
                zzhgVar = e2;
                zzkaVar = this;
                zzkaVar.zzc.zzb = zzhgVar;
                throw zzhgVar;
            }
        } else {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzf;
            try {
                zzke zzkeVar3 = this.zzc;
                zziz zzizVar = zzkeVar3.zze;
                long j = this.zzd;
                this.zzf = zzkeVar3;
                this.zza = zzlpVar;
                this.zzb = 1;
                zzkaVar = this;
                try {
                    Object objZza = zzizVar.zza(j, j, zzkaVar);
                    if (objZza == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    zzkeVar = zzkeVar3;
                    obj = objZza;
                } catch (zzhg e3) {
                    e = e3;
                    zzhgVar = e;
                    zzkaVar.zzc.zzb = zzhgVar;
                    throw zzhgVar;
                }
            } catch (zzhg e4) {
                e = e4;
                zzkaVar = this;
                zzhgVar = e;
                zzkaVar.zzc.zzb = zzhgVar;
                throw zzhgVar;
            }
        }
        zzkaVar.zzf = zzkeVar;
        zzkaVar.zza = null;
        zzkaVar.zzb = 2;
        obj = ((zzmc) obj).zza(zzlpVar.zza(), zzkaVar);
        if (obj != coroutine_suspended) {
            zzkeVar2 = zzkeVar;
            zzkeVar2.zzc = (zzakg) obj;
            zzkaVar.zzc.zzd = zzkm.zzb;
            return Boxing.boxBoolean(zzkaVar.zze.complete(Unit.INSTANCE));
        }
        return coroutine_suspended;
    }
}
