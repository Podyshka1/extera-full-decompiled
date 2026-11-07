package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzju extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzke zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ String zze;
    final /* synthetic */ RecaptchaAction zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzju(zzke zzkeVar, long j, String str, RecaptchaAction recaptchaAction, String str2, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzkeVar;
        this.zzd = j;
        this.zze = str;
        this.zzf = recaptchaAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzju zzjuVar = new zzju(this.zzc, this.zzd, this.zze, this.zzf, null, continuation);
        zzjuVar.zzg = obj;
        return zzjuVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzju) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008c A[Catch: Exception -> 0x009e, zzhg -> 0x00b2, PHI: r1 r13 r15
  0x008c: PHI (r1v7 com.google.android.recaptcha.internal.zzmg) = (r1v6 com.google.android.recaptcha.internal.zzmg), (r1v13 com.google.android.recaptcha.internal.zzmg) binds: [B:30:0x008a, B:11:0x001e] A[DONT_GENERATE, DONT_INLINE]
  0x008c: PHI (r13v1 com.google.android.recaptcha.internal.zzju) = (r13v0 com.google.android.recaptcha.internal.zzju), (r13v2 com.google.android.recaptcha.internal.zzju) binds: [B:30:0x008a, B:11:0x001e] A[DONT_GENERATE, DONT_INLINE]
  0x008c: PHI (r15v12 java.lang.Object) = (r15v11 java.lang.Object), (r15v0 java.lang.Object) binds: [B:30:0x008a, B:11:0x001e] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {zzhg -> 0x00b2, Exception -> 0x009e, blocks: (B:7:0x0012, B:34:0x009a, B:10:0x001b, B:31:0x008c, B:13:0x0025, B:25:0x0063, B:29:0x0080, B:16:0x0031, B:22:0x0054, B:19:0x003d), top: B:43:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        zzju zzjuVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzg;
                zzke zzkeVar = this.zzc;
                long j = this.zzd;
                this.zzg = zzmgVar;
                this.zza = zzmgVar;
                this.zzb = 1;
                obj = new zzmc(new zzjy(zzkeVar, j, null));
                if (obj != coroutine_suspended) {
                    zzmgVar2 = zzmgVar;
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        ResultKt.throwOnFailure(obj);
                        return (String) obj;
                    }
                    zzmgVar3 = (zzmg) this.zzg;
                    ResultKt.throwOnFailure(obj);
                    zzjuVar = this;
                    zzjuVar.zzg = null;
                    zzjuVar.zzb = 4;
                    obj = ((zzmc) obj).zza(zzmgVar3, zzjuVar);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return (String) obj;
                }
                zzmgVar3 = (zzmg) this.zzg;
                ResultKt.throwOnFailure(obj);
                long jLongValue = ((Number) obj).longValue();
                zzke zzkeVar2 = this.zzc;
                zziz zzizVar = zzkeVar2.zze;
                String str = this.zze;
                String action = this.zzf.getAction();
                zzakg zzakgVar = zzkeVar2.zzc;
                zzakg zzakgVar2 = zzakgVar != null ? null : zzakgVar;
                this.zzg = zzmgVar3;
                this.zzb = 3;
                zzjuVar = this;
                obj = zzizVar.zzb(str, action, zzakgVar2, jLongValue, null, zzjuVar);
                if (obj != coroutine_suspended) {
                    zzjuVar.zzg = null;
                    zzjuVar.zzb = 4;
                    obj = ((zzmc) obj).zza(zzmgVar3, zzjuVar);
                    if (obj == coroutine_suspended) {
                    }
                    return (String) obj;
                }
                return coroutine_suspended;
            }
            zzmgVar = (zzmg) this.zza;
            zzmgVar2 = (zzmg) this.zzg;
            ResultKt.throwOnFailure(obj);
            this.zzg = zzmgVar2;
            this.zza = null;
            this.zzb = 2;
            obj = ((zzmc) obj).zza(zzmgVar, this);
            if (obj != coroutine_suspended) {
                zzmgVar3 = zzmgVar2;
                long jLongValue2 = ((Number) obj).longValue();
                zzke zzkeVar22 = this.zzc;
                zziz zzizVar2 = zzkeVar22.zze;
                String str2 = this.zze;
                String action2 = this.zzf.getAction();
                zzakg zzakgVar3 = zzkeVar22.zzc;
                if (zzakgVar3 != null) {
                }
                this.zzg = zzmgVar3;
                this.zzb = 3;
                zzjuVar = this;
                obj = zzizVar2.zzb(str2, action2, zzakgVar2, jLongValue2, null, zzjuVar);
                if (obj != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        } catch (zzhg e) {
            throw e;
        } catch (Exception e2) {
            throw new zzhg(zzhf.zzb, zzhe.zzM, e2.getMessage(), null, 8, null);
        }
    }
}
