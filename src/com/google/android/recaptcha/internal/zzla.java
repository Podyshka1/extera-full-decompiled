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
final class zzla extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlf zzc;
    final /* synthetic */ zzamf zzd;
    final /* synthetic */ long zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzla(zzlf zzlfVar, zzamf zzamfVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzlfVar;
        this.zzd = zzamfVar;
        this.zze = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzla zzlaVar = new zzla(this.zzc, this.zzd, this.zze, continuation);
        zzlaVar.zzf = obj;
        return zzlaVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzla) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        if (r14 == r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a4, code lost:
    
        if (r14 == r0) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[Catch: zzhg -> 0x0093, PHI: r1 r14
  0x0080: PHI (r1v9 com.google.android.recaptcha.internal.zzlp) = (r1v8 com.google.android.recaptcha.internal.zzlp), (r1v16 com.google.android.recaptcha.internal.zzlp) binds: [B:23:0x007e, B:12:0x0023] A[DONT_GENERATE, DONT_INLINE]
  0x0080: PHI (r14v14 java.lang.Object) = (r14v13 java.lang.Object), (r14v0 java.lang.Object) binds: [B:23:0x007e, B:12:0x0023] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {zzhg -> 0x0093, blocks: (B:9:0x001a, B:26:0x0090, B:12:0x0023, B:24:0x0080, B:22:0x0070), top: B:39:0x000b }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        zzlp zzlpVar2;
        zzlp zzlpVar3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
        } catch (zzhg unused) {
            Deferred deferred = this.zzc.zze;
            if (deferred != null) {
                this.zzf = null;
                this.zzb = 5;
                obj = deferred.await(this);
            }
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzf;
            zzlf zzlfVar = this.zzc;
            zzamf zzamfVar = this.zzd;
            long j = this.zze;
            this.zzf = zzlpVar;
            this.zza = zzlpVar;
            this.zzb = 1;
            obj = new zzmc(new zzle(zzlfVar, zzamfVar, j, null));
            if (obj != coroutine_suspended) {
                zzlpVar2 = zzlpVar;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzlpVar = (zzlp) this.zza;
            zzlpVar2 = (zzlp) this.zzf;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i == 2) {
                zzlpVar3 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzon zzonVar = this.zzc.zzc;
                this.zzf = zzlpVar3;
                this.zzb = 3;
                obj = zzonVar.zzf(this);
                if (obj != coroutine_suspended) {
                    this.zzf = null;
                    this.zzb = 4;
                    obj = ((zzmc) obj).zza(zzlpVar3.zza(), this);
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                if (i == 4) {
                    ResultKt.throwOnFailure(obj);
                    return (zzakg) obj;
                }
                ResultKt.throwOnFailure(obj);
                Object value = ((Result) obj).getValue();
                ResultKt.throwOnFailure(value);
                zzakg zzakgVar = (zzakg) value;
                if (zzakgVar != null) {
                    return zzakgVar;
                }
                throw new zzhg(zzhf.zzb, zzhe.zza, null, null, 12, null);
            }
            zzlpVar3 = (zzlp) this.zzf;
            ResultKt.throwOnFailure(obj);
            this.zzf = null;
            this.zzb = 4;
            obj = ((zzmc) obj).zza(zzlpVar3.zza(), this);
        }
        this.zzf = zzlpVar2;
        this.zza = null;
        this.zzb = 2;
        if (((zzmc) obj).zza(zzlpVar.zza(), this) != coroutine_suspended) {
            zzlpVar3 = zzlpVar2;
            zzon zzonVar2 = this.zzc.zzc;
            this.zzf = zzlpVar3;
            this.zzb = 3;
            obj = zzonVar2.zzf(this);
            if (obj != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
