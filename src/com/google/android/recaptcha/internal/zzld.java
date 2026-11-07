package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzld extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzmg zzd;
    final /* synthetic */ zzlf zze;
    final /* synthetic */ zzamf zzf;
    final /* synthetic */ long zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzld(zzmg zzmgVar, zzlf zzlfVar, zzamf zzamfVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzmgVar;
        this.zze = zzlfVar;
        this.zzf = zzamfVar;
        this.zzg = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzld(this.zzd, this.zze, this.zzf, this.zzg, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzld) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077 A[Catch: zzhg -> 0x008d, PHI: r1 r2 r14
  0x0077: PHI (r1v4 com.google.android.recaptcha.internal.zzmg) = (r1v3 com.google.android.recaptcha.internal.zzmg), (r1v8 com.google.android.recaptcha.internal.zzmg) binds: [B:23:0x0074, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]
  0x0077: PHI (r2v2 java.lang.Object) = (r2v1 java.lang.Object), (r2v6 java.lang.Object) binds: [B:23:0x0074, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]
  0x0077: PHI (r14v8 com.google.android.recaptcha.internal.zzakg) = (r14v7 com.google.android.recaptcha.internal.zzakg), (r14v9 com.google.android.recaptcha.internal.zzakg) binds: [B:23:0x0074, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {zzhg -> 0x008d, blocks: (B:8:0x0016, B:28:0x0087, B:11:0x0023, B:25:0x0077, B:12:0x002a, B:22:0x0060, B:15:0x0032, B:20:0x0054, B:18:0x0039), top: B:35:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object objM3087constructorimpl;
        zzmg zzmgVar;
        zzakg zzakgVar;
        zzmg zzmgVar2;
        Object objZzd;
        zzakg zzakgVar2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        try {
        } catch (zzhg e) {
            Result.Companion companion = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(e));
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = this.zzd;
            zzlf zzlfVar = this.zze;
            zzamf zzamfVar = this.zzf;
            long j = this.zzg;
            this.zza = zzmgVar;
            this.zzc = 1;
            obj = new zzmb(55, new zzkz(j, zzlfVar, zzamfVar, null), null);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                zzakgVar = (zzakg) obj;
                zzmgVar2 = this.zzd;
                zzon zzonVar = this.zze.zzc;
                this.zza = zzakgVar;
                this.zzb = zzmgVar2;
                this.zzc = 3;
                objZzd = zzonVar.zzd(zzakgVar, this);
                if (objZzd == coroutine_suspended) {
                    this.zza = zzakgVar;
                    this.zzb = null;
                    this.zzc = 4;
                    if (((zzmc) objZzd).zza(zzmgVar2, this) != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                zzakgVar2 = (zzakg) this.zza;
                ResultKt.throwOnFailure(obj);
                objM3087constructorimpl = Result.m3087constructorimpl(zzakgVar2);
                return Result.m3086boximpl(objM3087constructorimpl);
            }
            zzmgVar2 = (zzmg) this.zzb;
            zzakg zzakgVar3 = (zzakg) this.zza;
            ResultKt.throwOnFailure(obj);
            objZzd = obj;
            zzakgVar = zzakgVar3;
            this.zza = zzakgVar;
            this.zzb = null;
            this.zzc = 4;
            if (((zzmc) objZzd).zza(zzmgVar2, this) != coroutine_suspended) {
                zzakgVar2 = zzakgVar;
                objM3087constructorimpl = Result.m3087constructorimpl(zzakgVar2);
                return Result.m3086boximpl(objM3087constructorimpl);
            }
            return coroutine_suspended;
        }
        zzmgVar = (zzmg) this.zza;
        ResultKt.throwOnFailure(obj);
        this.zza = null;
        this.zzc = 2;
        obj = ((zzmb) obj).zza(zzmgVar, this);
        if (obj != coroutine_suspended) {
            zzakgVar = (zzakg) obj;
            zzmgVar2 = this.zzd;
            zzon zzonVar2 = this.zze.zzc;
            this.zza = zzakgVar;
            this.zzb = zzmgVar2;
            this.zzc = 3;
            objZzd = zzonVar2.zzd(zzakgVar, this);
            if (objZzd == coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
