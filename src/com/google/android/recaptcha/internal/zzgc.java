package com.google.android.recaptcha.internal;

import com.android.dx.io.Opcodes;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgc extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzgo zzc;
    final /* synthetic */ String zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgc(zzgo zzgoVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzgoVar;
        this.zzd = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgc zzgcVar = new zzgc(this.zzc, this.zzd, continuation);
        zzgcVar.zze = obj;
        return zzgcVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgc) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0087 A[Catch: Exception -> 0x0017, PHI: r1 r10
  0x0087: PHI (r1v6 com.google.android.recaptcha.internal.zzmg) = (r1v5 com.google.android.recaptcha.internal.zzmg), (r1v12 com.google.android.recaptcha.internal.zzmg) binds: [B:28:0x0085, B:12:0x001e] A[DONT_GENERATE, DONT_INLINE]
  0x0087: PHI (r10v10 java.lang.Object) = (r10v9 java.lang.Object), (r10v0 java.lang.Object) binds: [B:28:0x0085, B:12:0x001e] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {Exception -> 0x0017, blocks: (B:7:0x0012, B:32:0x0095, B:12:0x001e, B:29:0x0087, B:15:0x0026, B:27:0x0071, B:18:0x0032, B:24:0x0062, B:21:0x004f), top: B:37:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zze;
                zzgo zzgoVar = this.zzc;
                zzgoVar.zzi.put(Boxing.boxInt(Opcodes.REM_INT_LIT16), this.zzd);
                this.zze = zzmgVar;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = new zzmc(new zzgn(zzgoVar, null));
                if (obj != coroutine_suspended) {
                    zzmgVar2 = zzmgVar;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        ResultKt.throwOnFailure(obj);
                        return Result.m3086boximpl(((Result) obj).getValue());
                    }
                    zzmgVar3 = (zzmg) this.zze;
                    ResultKt.throwOnFailure(obj);
                    this.zze = null;
                    this.zzb = 4;
                    obj = ((zzmb) obj).zza(zzmgVar3, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Result.m3086boximpl(((Result) obj).getValue());
                }
                zzmgVar3 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                zzgo zzgoVar2 = this.zzc;
                String str = this.zzd;
                this.zze = zzmgVar3;
                this.zzb = 3;
                obj = new zzmb(51, new zzfx(zzgoVar2, str, null), null);
                if (obj != coroutine_suspended) {
                    this.zze = null;
                    this.zzb = 4;
                    obj = ((zzmb) obj).zza(zzmgVar3, this);
                    if (obj == coroutine_suspended) {
                    }
                    return Result.m3086boximpl(((Result) obj).getValue());
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
                zzgo zzgoVar22 = this.zzc;
                String str2 = this.zzd;
                this.zze = zzmgVar3;
                this.zzb = 3;
                obj = new zzmb(51, new zzfx(zzgoVar22, str2, null), null);
                if (obj != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        } catch (Exception e) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3086boximpl(Result.m3087constructorimpl(ResultKt.createFailure(zzgo.zzA(this.zzc, e))));
        }
    }
}
