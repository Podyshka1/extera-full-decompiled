package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zziy extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zziz zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ long zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziy(zziz zzizVar, long j, long j2, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzizVar;
        this.zzd = j;
        this.zze = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zziy zziyVar = new zziy(this.zzc, this.zzd, this.zze, continuation);
        zziyVar.zzf = obj;
        return zziyVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zziy) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00aa A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        zzakg zzakgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzf;
            zziz zzizVar = this.zzc;
            long j = this.zzd;
            zziv zzivVar = zzizVar.zza;
            this.zzf = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = new zzmc(new zzir(zzivVar, j, null));
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    zzakg zzakgVar2 = (zzakg) this.zzf;
                    ResultKt.throwOnFailure(obj);
                    return zzakgVar2;
                }
                zzmgVar3 = (zzmg) this.zza;
                zzakgVar = (zzakg) this.zzf;
                ResultKt.throwOnFailure(obj);
                this.zzf = zzakgVar;
                this.zza = null;
                this.zzb = 4;
                return ((zzmc) obj).zza(zzmgVar3, this) == coroutine_suspended ? zzakgVar : coroutine_suspended;
            }
            zzmgVar3 = (zzmg) this.zzf;
            ResultKt.throwOnFailure(obj);
            zziz zzizVar2 = this.zzc;
            zzakg zzakgVar3 = (zzakg) obj;
            zzdp zzdpVarZza = zzizVar2.zzc.zza(zzakgVar3.zzk());
            zzizVar2.zzd = zzdpVarZza;
            long j2 = this.zze;
            zziv zzivVar2 = zzizVar2.zza;
            this.zzf = zzakgVar3;
            this.zza = zzmgVar3;
            this.zzb = 3;
            obj = new zzmc(new zziu(j2, zzivVar2, zzdpVarZza, zzakgVar3, null));
            if (obj != coroutine_suspended) {
                zzakgVar = zzakgVar3;
                this.zzf = zzakgVar;
                this.zza = null;
                this.zzb = 4;
                if (((zzmc) obj).zza(zzmgVar3, this) == coroutine_suspended) {
                }
            }
        }
        zzmgVar = (zzmg) this.zza;
        zzmgVar2 = (zzmg) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = zzmgVar2;
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar, this);
        if (obj != coroutine_suspended) {
            zzmgVar3 = zzmgVar2;
            zziz zzizVar22 = this.zzc;
            zzakg zzakgVar32 = (zzakg) obj;
            zzdp zzdpVarZza2 = zzizVar22.zzc.zza(zzakgVar32.zzk());
            zzizVar22.zzd = zzdpVarZza2;
            long j22 = this.zze;
            zziv zzivVar22 = zzizVar22.zza;
            this.zzf = zzakgVar32;
            this.zza = zzmgVar3;
            this.zzb = 3;
            obj = new zzmc(new zziu(j22, zzivVar22, zzdpVarZza2, zzakgVar32, null));
            if (obj != coroutine_suspended) {
            }
        }
    }
}
