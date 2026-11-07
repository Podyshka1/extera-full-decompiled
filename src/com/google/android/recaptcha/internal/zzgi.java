package com.google.android.recaptcha.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgi extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzgo zzd;
    final /* synthetic */ zzakg zze;
    final /* synthetic */ zzmg zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgi(zzgo zzgoVar, zzakg zzakgVar, zzmg zzmgVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzgoVar;
        this.zze = zzakgVar;
        this.zzf = zzmgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzgi zzgiVar = new zzgi(this.zzd, this.zze, this.zzf, continuation);
        zzgiVar.zzg = obj;
        return zzgiVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzgi) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ec, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r12).zza(r1.zza(), r11) != r0) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00dd A[PHI: r1 r12
  0x00dd: PHI (r1v11 com.google.android.recaptcha.internal.zzlp) = (r1v10 com.google.android.recaptcha.internal.zzlp), (r1v24 com.google.android.recaptcha.internal.zzlp) binds: [B:28:0x00db, B:10:0x001d] A[DONT_GENERATE, DONT_INLINE]
  0x00dd: PHI (r12v16 java.lang.Object) = (r12v15 java.lang.Object), (r12v0 java.lang.Object) binds: [B:28:0x00db, B:10:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        zzlp zzlpVar2;
        zzlp zzlpVar3;
        zzmc zzmcVar;
        zzlp zzlpVar4;
        zzalm zzalmVar;
        zzlp zzlpVar5;
        zzalm zzalmVar2;
        zzlp zzlpVar6;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzc;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzlpVar = (zzlp) this.zzg;
            zzgo zzgoVar = this.zzd;
            zzakg zzakgVar = this.zze;
            String strZza = this.zzf.zza().zza();
            this.zzg = zzlpVar;
            this.zza = zzlpVar;
            this.zzc = 1;
            obj = new zzmc(new zzgb(zzgoVar, strZza, zzakgVar, null));
            if (obj != coroutine_suspended) {
                zzlpVar2 = zzlpVar;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzlpVar = (zzlp) this.zza;
            zzlpVar2 = (zzlp) this.zzg;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i == 2) {
                zzlpVar3 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzalm zzalmVar3 = (zzalm) obj;
                this.zzg = zzlpVar3;
                this.zza = zzalmVar3;
                this.zzb = zzlpVar3;
                this.zzc = 3;
                zzmcVar = new zzmc(new zzgm(zzalmVar3, null));
                if (zzmcVar != coroutine_suspended) {
                    zzlpVar4 = zzlpVar3;
                    zzalmVar = zzalmVar3;
                    obj = zzmcVar;
                    zzlpVar5 = zzlpVar4;
                    this.zzg = zzlpVar5;
                    this.zza = zzalmVar;
                    this.zzb = null;
                    this.zzc = 4;
                    if (((zzmc) obj).zza(zzlpVar4.zza(), this) != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i == 3) {
                zzlp zzlpVar7 = (zzlp) this.zzb;
                zzalm zzalmVar4 = (zzalm) this.zza;
                zzlpVar5 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzlpVar4 = zzlpVar7;
                zzalmVar = zzalmVar4;
                this.zzg = zzlpVar5;
                this.zza = zzalmVar;
                this.zzb = null;
                this.zzc = 4;
                if (((zzmc) obj).zza(zzlpVar4.zza(), this) != coroutine_suspended) {
                    zzalmVar2 = zzalmVar;
                    zzlpVar6 = zzlpVar5;
                    zzgo zzgoVar2 = this.zzd;
                    this.zzg = zzlpVar6;
                    this.zza = null;
                    this.zzc = 5;
                    obj = new zzmc(new zzgh(zzgoVar2, zzalmVar2, null));
                    if (obj != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i == 4) {
                zzalm zzalmVar5 = (zzalm) this.zza;
                zzlp zzlpVar8 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzalmVar2 = zzalmVar5;
                zzlpVar6 = zzlpVar8;
                zzgo zzgoVar22 = this.zzd;
                this.zzg = zzlpVar6;
                this.zza = null;
                this.zzc = 5;
                obj = new zzmc(new zzgh(zzgoVar22, zzalmVar2, null));
                if (obj != coroutine_suspended) {
                    this.zzg = null;
                    this.zzc = 6;
                }
                return coroutine_suspended;
            }
            if (i != 5) {
                ResultKt.throwOnFailure(obj);
                Result.Companion companion = Result.INSTANCE;
                return Result.m3086boximpl(Result.m3087constructorimpl(Unit.INSTANCE));
            }
            zzlpVar6 = (zzlp) this.zzg;
            ResultKt.throwOnFailure(obj);
            this.zzg = null;
            this.zzc = 6;
        }
        this.zzg = zzlpVar2;
        this.zza = null;
        this.zzc = 2;
        obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
        if (obj != coroutine_suspended) {
            zzlpVar3 = zzlpVar2;
            zzalm zzalmVar32 = (zzalm) obj;
            this.zzg = zzlpVar3;
            this.zza = zzalmVar32;
            this.zzb = zzlpVar3;
            this.zzc = 3;
            zzmcVar = new zzmc(new zzgm(zzalmVar32, null));
            if (zzmcVar != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
