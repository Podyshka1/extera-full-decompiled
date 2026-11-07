package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
final class zzcy extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzcz zzd;
    final /* synthetic */ zzdo zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcy(zzcz zzczVar, zzdo zzdoVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzczVar;
        this.zze = zzdoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzcy zzcyVar = new zzcy(this.zzd, this.zze, continuation);
        zzcyVar.zzf = obj;
        return zzcyVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzcy) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        if (r9 != r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c9, code lost:
    
        if (r9 != r0) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzcz zzczVar;
        zzmg zzmgVar2;
        zzcz zzczVar2;
        zzmg zzmgVar3;
        zzmg zzmgVar4;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzf;
            zzcz zzczVar3 = this.zzd;
            if (!zzczVar3.zzf || zzczVar3.zzc == null) {
                zzng zzngVar = this.zze.zzc;
                this.zzf = zzmgVar;
                this.zza = zzczVar3;
                this.zzb = zzmgVar;
                this.zzc = 2;
                Object objZzh = zzngVar.zzh(this);
                if (objZzh != coroutine_suspended) {
                    zzczVar = zzczVar3;
                    obj = objZzh;
                    zzmgVar2 = zzmgVar;
                    this.zzf = zzmgVar2;
                    this.zza = zzczVar;
                    this.zzb = null;
                    this.zzc = 3;
                    obj = ((zzmc) obj).zza(zzmgVar, this);
                    if (obj != coroutine_suspended) {
                    }
                }
            } else {
                zzczVar3.zzf = false;
                Deferred deferred = zzczVar3.zzc;
                this.zzc = 1;
                obj = deferred.await(this);
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            ResultKt.throwOnFailure(obj);
            Object value = ((Result) obj).getValue();
            ResultKt.throwOnFailure(value);
            return (zzaku) value;
        }
        if (i == 2) {
            zzmgVar = (zzmg) this.zzb;
            zzczVar = (zzcz) this.zza;
            zzmgVar2 = (zzmg) this.zzf;
            ResultKt.throwOnFailure(obj);
            this.zzf = zzmgVar2;
            this.zza = zzczVar;
            this.zzb = null;
            this.zzc = 3;
            obj = ((zzmc) obj).zza(zzmgVar, this);
            if (obj != coroutine_suspended) {
                zzczVar2 = zzczVar;
                zzmgVar3 = zzmgVar2;
                zzczVar2.zze = (zzaka) obj;
                zzdo zzdoVar = this.zze;
                zzcz zzczVar4 = this.zzd;
                String str = zzczVar4.zzb;
                zzaka zzakaVar = zzczVar4.zze;
                this.zzf = zzmgVar3;
                this.zza = null;
                this.zzc = 4;
                obj = zzdo.zzf(zzdoVar, str, zzakaVar, this);
                if (obj != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i == 3) {
            zzczVar2 = (zzcz) this.zza;
            zzmgVar3 = (zzmg) this.zzf;
            ResultKt.throwOnFailure(obj);
            zzczVar2.zze = (zzaka) obj;
            zzdo zzdoVar2 = this.zze;
            zzcz zzczVar42 = this.zzd;
            String str2 = zzczVar42.zzb;
            zzaka zzakaVar2 = zzczVar42.zze;
            this.zzf = zzmgVar3;
            this.zza = null;
            this.zzc = 4;
            obj = zzdo.zzf(zzdoVar2, str2, zzakaVar2, this);
            if (obj != coroutine_suspended) {
                zzmgVar4 = zzmgVar3;
                this.zzf = null;
                this.zzc = 5;
                obj = ((zzmb) obj).zza(zzmgVar4, this);
            }
            return coroutine_suspended;
        }
        if (i != 4) {
            ResultKt.throwOnFailure(obj);
            return (zzaku) obj;
        }
        zzmgVar4 = (zzmg) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = null;
        this.zzc = 5;
        obj = ((zzmb) obj).zza(zzmgVar4, this);
    }
}
