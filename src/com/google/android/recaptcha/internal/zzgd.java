package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgd extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzgo zzc;
    final /* synthetic */ zzakg zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgd(zzgo zzgoVar, zzakg zzakgVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzgoVar;
        this.zzd = zzakgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgd zzgdVar = new zzgd(this.zzc, this.zzd, continuation);
        zzgdVar.zze = obj;
        return zzgdVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgd) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006f A[Catch: zzhg -> 0x0087, PHI: r1 r7
  0x006f: PHI (r1v6 com.google.android.recaptcha.internal.zzmg) = (r1v5 com.google.android.recaptcha.internal.zzmg), (r1v12 com.google.android.recaptcha.internal.zzmg) binds: [B:26:0x006d, B:10:0x001a] A[DONT_GENERATE, DONT_INLINE]
  0x006f: PHI (r7v10 java.lang.Object) = (r7v9 java.lang.Object), (r7v0 java.lang.Object) binds: [B:26:0x006d, B:10:0x001a] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {zzhg -> 0x0087, blocks: (B:7:0x0012, B:30:0x007d, B:10:0x001a, B:27:0x006f, B:13:0x0022, B:25:0x005e, B:16:0x002e, B:22:0x004f, B:19:0x003a), top: B:37:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM3608constructorimpl;
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (zzhg e) {
            Result.Companion companion = Result.INSTANCE;
            objM3608constructorimpl = Result.m3608constructorimpl(ResultKt.createFailure(e));
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zze;
            zzakg zzakgVar = this.zzd;
            this.zze = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = new zzmc(new zzgl(zzakgVar, null));
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    ResultKt.throwOnFailure(obj);
                    Result.Companion companion2 = Result.INSTANCE;
                    objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                    return Result.m3607boximpl(objM3608constructorimpl);
                }
                zzmgVar3 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                this.zze = null;
                this.zzb = 4;
                if (((zzmc) obj).zza(zzmgVar3, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Result.Companion companion22 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                return Result.m3607boximpl(objM3608constructorimpl);
            }
            zzmgVar3 = (zzmg) this.zze;
            ResultKt.throwOnFailure(obj);
            zzgo zzgoVar = this.zzc;
            zzakg zzakgVar2 = this.zzd;
            zzgoVar.zzj = zzakgVar2;
            this.zze = zzmgVar3;
            this.zzb = 3;
            obj = zzgo.zzk(zzgoVar, zzakgVar2, this);
            if (obj != coroutine_suspended) {
                this.zze = null;
                this.zzb = 4;
                if (((zzmc) obj).zza(zzmgVar3, this) == coroutine_suspended) {
                }
                Result.Companion companion222 = Result.INSTANCE;
                objM3608constructorimpl = Result.m3608constructorimpl(Unit.INSTANCE);
                return Result.m3607boximpl(objM3608constructorimpl);
            }
            return coroutine_suspended;
        }
        zzmgVar = (zzmg) this.zza;
        zzmgVar2 = (zzmg) this.zze;
        ResultKt.throwOnFailure(obj);
        this.zze = zzmgVar2;
        this.zza = null;
        this.zzb = 2;
        if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
            zzmgVar3 = zzmgVar2;
            zzgo zzgoVar2 = this.zzc;
            zzakg zzakgVar22 = this.zzd;
            zzgoVar2.zzj = zzakgVar22;
            this.zze = zzmgVar3;
            this.zzb = 3;
            obj = zzgo.zzk(zzgoVar2, zzakgVar22, this);
            if (obj != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
