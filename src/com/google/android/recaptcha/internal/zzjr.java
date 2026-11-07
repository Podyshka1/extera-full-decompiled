package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzjr extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzjt zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ zziw zzf;
    final /* synthetic */ zzmd zzg;
    private /* synthetic */ Object zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzjr(zzjt zzjtVar, long j, String str, zziw zziwVar, zzmd zzmdVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzjtVar;
        this.zzd = j;
        this.zze = str;
        this.zzf = zziwVar;
        this.zzg = zzmdVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzjr zzjrVar = new zzjr(this.zzc, this.zzd, this.zze, this.zzf, this.zzg, continuation);
        zzjrVar.zzh = obj;
        return zzjrVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzjr) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        Object objZzb;
        zzkn zzknVar;
        zzkn zzknVar2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzh;
                zzjt zzjtVar = this.zzc;
                zzjt.zze(zzjtVar, this.zzd, this.zze);
                zzgy zzgyVarZzd = zzjtVar.zzb.zzd();
                this.zzh = zzmgVar;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = zzgyVarZzd.zzb(this);
                if (obj != coroutine_suspended) {
                    zzmgVar2 = zzmgVar;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i == 2) {
                    zzmgVar3 = (zzmg) this.zzh;
                    ResultKt.throwOnFailure(obj);
                    zzkn zzknVarZzc = this.zzc.zzb.zzc(this.zze, this.zzf);
                    long j = this.zzd;
                    this.zzh = zzknVarZzc;
                    this.zza = zzmgVar3;
                    this.zzb = 3;
                    objZzb = zzknVarZzc.zzb(j, this);
                    if (objZzb != coroutine_suspended) {
                        zzknVar = zzknVarZzc;
                        obj = objZzb;
                        this.zzh = zzknVar;
                        this.zza = null;
                        this.zzb = 4;
                        if (((zzmc) obj).zza(zzmgVar3, this) != coroutine_suspended) {
                        }
                    }
                    return coroutine_suspended;
                }
                if (i != 3) {
                    zzknVar2 = (zzkn) this.zzh;
                    ResultKt.throwOnFailure(obj);
                    String str = this.zze;
                    zzmd zzmdVar = this.zzg;
                    zzjt zzjtVar2 = this.zzc;
                    zzjj zzjjVar = new zzjj(zzknVar2, str, zzmdVar, zzjtVar2.zzb.zze());
                    zzjtVar2.zzd = zzjjVar;
                    return zzjjVar;
                }
                zzmgVar3 = (zzmg) this.zza;
                zzknVar = (zzkn) this.zzh;
                ResultKt.throwOnFailure(obj);
                this.zzh = zzknVar;
                this.zza = null;
                this.zzb = 4;
                if (((zzmc) obj).zza(zzmgVar3, this) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                zzknVar2 = zzknVar;
                String str2 = this.zze;
                zzmd zzmdVar2 = this.zzg;
                zzjt zzjtVar22 = this.zzc;
                zzjj zzjjVar2 = new zzjj(zzknVar2, str2, zzmdVar2, zzjtVar22.zzb.zze());
                zzjtVar22.zzd = zzjjVar2;
                return zzjjVar2;
            }
            zzmgVar = (zzmg) this.zza;
            zzmgVar2 = (zzmg) this.zzh;
            ResultKt.throwOnFailure(obj);
            this.zzh = zzmgVar2;
            this.zza = null;
            this.zzb = 2;
            if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
                zzmgVar3 = zzmgVar2;
                zzkn zzknVarZzc2 = this.zzc.zzb.zzc(this.zze, this.zzf);
                long j2 = this.zzd;
                this.zzh = zzknVarZzc2;
                this.zza = zzmgVar3;
                this.zzb = 3;
                objZzb = zzknVarZzc2.zzb(j2, this);
                if (objZzb != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zza, e2.getMessage(), null, 8, null);
        }
    }
}
