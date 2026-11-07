package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
final class zzil extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdp zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzakg zzd;
    final /* synthetic */ zzaka zze;
    final /* synthetic */ long zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzil(zzdp zzdpVar, String str, zzakg zzakgVar, zzaka zzakaVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzdpVar;
        this.zzc = str;
        this.zzd = zzakgVar;
        this.zze = zzakaVar;
        this.zzf = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzil zzilVar = new zzil(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
        zzilVar.zzg = obj;
        return zzilVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzil) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        zzil zzilVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zzg;
                zzdp zzdpVar = this.zzb;
                String str = this.zzc;
                String strZzb = this.zzd.zzb();
                zzaka zzakaVar = this.zze;
                long j = this.zzf;
                this.zzg = zzlpVar;
                this.zza = 1;
                zzilVar = this;
                obj = zzdpVar.zzb(str, strZzb, zzakaVar, j, zzilVar);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (zzaku) obj;
            }
            zzlpVar = (zzlp) this.zzg;
            ResultKt.throwOnFailure(obj);
            zzilVar = this;
            zzilVar.zzg = null;
            zzilVar.zza = 2;
            obj = ((zzmb) obj).zza(zzlpVar.zza(), zzilVar);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (zzaku) obj;
        } catch (zzhg e) {
            throw e;
        } catch (TimeoutCancellationException e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzb, e2.getMessage(), null, 8, null);
        } catch (Exception e3) {
            throw new zzhg(zzhf.zzb, zzhe.zzt, e3.getMessage(), null, 8, null);
        }
    }
}
