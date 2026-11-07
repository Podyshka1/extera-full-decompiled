package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzof extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzon zzc;
    private /* synthetic */ Object zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzof(zzon zzonVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzonVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzof zzofVar = new zzof(this.zzc, continuation);
        zzofVar.zzd = obj;
        return zzofVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzof) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x008e, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r8).zza(r1, r7) != r0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083 A[PHI: r1 r8
  0x0083: PHI (r1v6 com.google.android.recaptcha.internal.zzmg) = (r1v5 com.google.android.recaptcha.internal.zzmg), (r1v12 com.google.android.recaptcha.internal.zzmg) binds: [B:18:0x0081, B:8:0x0017] A[DONT_GENERATE, DONT_INLINE]
  0x0083: PHI (r8v11 java.lang.Object) = (r8v10 java.lang.Object), (r8v0 java.lang.Object) binds: [B:18:0x0081, B:8:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
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
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzd;
            zzni zzniVarZza = this.zzc.zza();
            String strZza = zzmgVar.zza().zza();
            this.zzd = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = zzniVarZza.zzb(strZza, this);
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzmgVar = (zzmg) this.zza;
            zzmgVar2 = (zzmg) this.zzd;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i == 2) {
                zzmgVar3 = (zzmg) this.zzd;
                ResultKt.throwOnFailure(obj);
                zznm zznmVarZzc = this.zzc.zzc();
                String strZza2 = zzmgVar3.zza().zza();
                this.zzd = zzmgVar3;
                this.zzb = 3;
                obj = new zzmc(new zznl(zznmVarZzc, strZza2, null));
                if (obj != coroutine_suspended) {
                    this.zzd = null;
                    this.zzb = 4;
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            zzmgVar3 = (zzmg) this.zzd;
            ResultKt.throwOnFailure(obj);
            this.zzd = null;
            this.zzb = 4;
        }
        this.zzd = zzmgVar2;
        this.zza = null;
        this.zzb = 2;
        if (((zzmc) obj).zza(zzmgVar, this) != coroutine_suspended) {
            zzmgVar3 = zzmgVar2;
            zznm zznmVarZzc2 = this.zzc.zzc();
            String strZza22 = zzmgVar3.zza().zza();
            this.zzd = zzmgVar3;
            this.zzb = 3;
            obj = new zzmc(new zznl(zznmVarZzc2, strZza22, null));
            if (obj != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
