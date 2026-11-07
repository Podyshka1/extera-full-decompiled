package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzim extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    double zzc;
    double zzd;
    int zze;
    final /* synthetic */ long zzf;
    final /* synthetic */ zzio zzg;
    final /* synthetic */ zzdp zzh;
    final /* synthetic */ String zzi;
    final /* synthetic */ zzakg zzj;
    final /* synthetic */ String zzk;
    private /* synthetic */ Object zzl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzim(long j, zzio zzioVar, zzdp zzdpVar, String str, zzakg zzakgVar, String str2, String str3, Continuation continuation) {
        super(2, continuation);
        this.zzf = j;
        this.zzg = zzioVar;
        this.zzh = zzdpVar;
        this.zzi = str;
        this.zzj = zzakgVar;
        this.zzk = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzim zzimVar = new zzim(this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, null, continuation);
        zzimVar.zzl = obj;
        return zzimVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzim) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0180, code lost:
    
        if (r3 != r8) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ee A[PHI: r0 r2 r3 r5
  0x00ee: PHI (r0v7 double) = (r0v5 double), (r0v10 double) binds: [B:18:0x00ec, B:12:0x0085] A[DONT_GENERATE, DONT_INLINE]
  0x00ee: PHI (r2v8 java.lang.Object) = (r2v5 java.lang.Object), (r2v12 java.lang.Object) binds: [B:18:0x00ec, B:12:0x0085] A[DONT_GENERATE, DONT_INLINE]
  0x00ee: PHI (r3v4 com.google.android.recaptcha.internal.zzmg) = (r3v2 com.google.android.recaptcha.internal.zzmg), (r3v6 com.google.android.recaptcha.internal.zzmg) binds: [B:18:0x00ec, B:12:0x0085] A[DONT_GENERATE, DONT_INLINE]
  0x00ee: PHI (r5v6 double) = (r5v2 double), (r5v7 double) binds: [B:18:0x00ec, B:12:0x0085] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0163 A[PHI: r0 r1 r2
  0x0163: PHI (r0v28 java.lang.Object) = (r0v24 java.lang.Object), (r0v32 java.lang.Object) binds: [B:29:0x0161, B:8:0x0036] A[DONT_GENERATE, DONT_INLINE]
  0x0163: PHI (r1v8 com.google.android.recaptcha.internal.zzaka) = (r1v5 com.google.android.recaptcha.internal.zzaka), (r1v11 com.google.android.recaptcha.internal.zzaka) binds: [B:29:0x0161, B:8:0x0036] A[DONT_GENERATE, DONT_INLINE]
  0x0163: PHI (r2v24 com.google.android.recaptcha.internal.zzmg) = (r2v21 com.google.android.recaptcha.internal.zzmg), (r2v25 com.google.android.recaptcha.internal.zzmg) binds: [B:29:0x0161, B:8:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b2 A[PHI: r0 r1 r2
  0x01b2: PHI (r0v38 com.google.android.recaptcha.internal.zzmg) = (r0v34 com.google.android.recaptcha.internal.zzmg), (r0v41 com.google.android.recaptcha.internal.zzmg) binds: [B:38:0x01b0, B:6:0x0014] A[DONT_GENERATE, DONT_INLINE]
  0x01b2: PHI (r1v17 java.lang.String) = (r1v13 java.lang.String), (r1v19 java.lang.String) binds: [B:38:0x01b0, B:6:0x0014] A[DONT_GENERATE, DONT_INLINE]
  0x01b2: PHI (r2v32 java.lang.Object) = (r2v28 java.lang.Object), (r2v34 java.lang.Object) binds: [B:38:0x01b0, B:6:0x0014] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c2 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        double d;
        double d2;
        Object objZzg;
        zzmg zzmgVar2;
        Object objZza;
        Object zzmbVar;
        zzmg zzmgVar3;
        zzmg zzmgVar4;
        zzaka zzakaVar;
        Object objZza2;
        zzaka zzakaVar2;
        zzmg zzmgVar5;
        Object objZza3;
        zzmg zzmgVar6;
        zzaka zzakaVar3;
        Object objZza4;
        zzalc zzalcVar;
        String strZza;
        Object objZza5;
        zzmg zzmgVar7;
        String str;
        Object zzmbVar2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.zze) {
            case 0:
                ResultKt.throwOnFailure(obj);
                zzmgVar = (zzmg) this.zzl;
                long j = this.zzf;
                zzon zzonVar = this.zzg.zza;
                this.zzl = zzmgVar;
                this.zza = zzmgVar;
                double d3 = j;
                d = 0.55d * d3;
                this.zzc = d;
                d2 = d3 * 0.45d;
                this.zzd = d2;
                this.zze = 1;
                objZzg = zzonVar.zzg(this);
                if (objZzg != coroutine_suspended) {
                    zzmgVar2 = zzmgVar;
                    this.zzl = zzmgVar2;
                    this.zza = null;
                    this.zzc = d;
                    this.zzd = d2;
                    this.zze = 2;
                    objZza = ((zzmc) objZzg).zza(zzmgVar, this);
                    if (objZza != coroutine_suspended) {
                        zzdp zzdpVar = this.zzh;
                        String str2 = this.zzi;
                        zzakg zzakgVar = this.zzj;
                        zzaka zzakaVar4 = (zzaka) objZza;
                        this.zzl = zzmgVar2;
                        this.zza = zzakaVar4;
                        this.zzb = zzmgVar2;
                        this.zzc = d;
                        this.zze = 3;
                        zzmbVar = new zzmb(27, new zzil(zzdpVar, str2, zzakgVar, zzakaVar4, (long) d2, null), null);
                        if (zzmbVar != coroutine_suspended) {
                            zzmgVar3 = zzmgVar2;
                            zzmgVar4 = zzmgVar3;
                            zzakaVar = zzakaVar4;
                            this.zzl = zzmgVar4;
                            this.zza = zzakaVar;
                            this.zzb = null;
                            this.zzc = d;
                            this.zze = 4;
                            objZza2 = ((zzmb) zzmbVar).zza(zzmgVar3, this);
                            if (objZza2 != coroutine_suspended) {
                                zzakaVar2 = zzakaVar;
                                zzmgVar5 = zzmgVar4;
                                zzkp zzkpVar = this.zzg.zzb;
                                this.zzl = zzmgVar5;
                                this.zza = zzakaVar2;
                                this.zzb = zzmgVar5;
                                this.zze = 5;
                                objZza3 = zzkpVar.zza(this.zzk, this.zzj, (zzaku) objZza2, null, (long) d, this);
                                if (objZza3 != coroutine_suspended) {
                                    zzmgVar6 = zzmgVar5;
                                    zzakaVar3 = zzakaVar2;
                                    this.zzl = zzmgVar6;
                                    this.zza = zzakaVar3;
                                    this.zzb = null;
                                    this.zze = 6;
                                    objZza4 = ((zzmc) objZza3).zza(zzmgVar5, this);
                                    if (objZza4 != coroutine_suspended) {
                                        zzalcVar = (zzalc) objZza4;
                                        if (!this.zzj.zzl()) {
                                            zzbe zzbeVar = this.zzg.zzc;
                                            this.zzl = zzmgVar6;
                                            this.zza = zzakaVar3;
                                            this.zzb = zzalcVar;
                                            this.zze = 7;
                                            objZza5 = zzbeVar.zza(zzalcVar, this);
                                        } else {
                                            strZza = zzalcVar.zza();
                                            zzalc zzalcVar2 = zzalcVar;
                                            zzaka zzakaVar5 = zzakaVar3;
                                            zzmgVar7 = zzmgVar6;
                                            str = strZza;
                                            zzio zzioVar = this.zzg;
                                            zzdp zzdpVar2 = this.zzh;
                                            String str3 = this.zzi;
                                            zzakg zzakgVar2 = this.zzj;
                                            this.zzl = str;
                                            this.zza = zzmgVar7;
                                            this.zzb = null;
                                            this.zze = 8;
                                            zzmbVar2 = new zzmb(29, new zzin(zzalcVar2, zzioVar, zzakaVar5, zzdpVar2, str3, zzakgVar2, null), null);
                                            if (zzmbVar2 != coroutine_suspended) {
                                                this.zzl = str;
                                                this.zza = null;
                                                this.zze = 9;
                                                if (((zzmb) zzmbVar2).zza(zzmgVar7, this) == coroutine_suspended) {
                                                    return str;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 1:
                d2 = this.zzd;
                double d4 = this.zzc;
                zzmgVar = (zzmg) this.zza;
                zzmg zzmgVar8 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                zzmgVar2 = zzmgVar8;
                d = d4;
                objZzg = obj;
                this.zzl = zzmgVar2;
                this.zza = null;
                this.zzc = d;
                this.zzd = d2;
                this.zze = 2;
                objZza = ((zzmc) objZzg).zza(zzmgVar, this);
                if (objZza != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                d2 = this.zzd;
                double d5 = this.zzc;
                zzmg zzmgVar9 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                d = d5;
                zzmgVar2 = zzmgVar9;
                objZza = obj;
                zzdp zzdpVar3 = this.zzh;
                String str22 = this.zzi;
                zzakg zzakgVar3 = this.zzj;
                zzaka zzakaVar42 = (zzaka) objZza;
                this.zzl = zzmgVar2;
                this.zza = zzakaVar42;
                this.zzb = zzmgVar2;
                this.zzc = d;
                this.zze = 3;
                zzmbVar = new zzmb(27, new zzil(zzdpVar3, str22, zzakgVar3, zzakaVar42, (long) d2, null), null);
                if (zzmbVar != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 3:
                double d6 = this.zzc;
                zzmgVar3 = (zzmg) this.zzb;
                zzakaVar = (zzaka) this.zza;
                zzmgVar4 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                d = d6;
                zzmbVar = obj;
                this.zzl = zzmgVar4;
                this.zza = zzakaVar;
                this.zzb = null;
                this.zzc = d;
                this.zze = 4;
                objZza2 = ((zzmb) zzmbVar).zza(zzmgVar3, this);
                if (objZza2 != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 4:
                double d7 = this.zzc;
                zzaka zzakaVar6 = (zzaka) this.zza;
                zzmg zzmgVar10 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                d = d7;
                zzakaVar2 = zzakaVar6;
                zzmgVar5 = zzmgVar10;
                objZza2 = obj;
                zzkp zzkpVar2 = this.zzg.zzb;
                this.zzl = zzmgVar5;
                this.zza = zzakaVar2;
                this.zzb = zzmgVar5;
                this.zze = 5;
                objZza3 = zzkpVar2.zza(this.zzk, this.zzj, (zzaku) objZza2, null, (long) d, this);
                if (objZza3 != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 5:
                zzmg zzmgVar11 = (zzmg) this.zzb;
                zzakaVar3 = (zzaka) this.zza;
                zzmgVar6 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                zzmgVar5 = zzmgVar11;
                objZza3 = obj;
                this.zzl = zzmgVar6;
                this.zza = zzakaVar3;
                this.zzb = null;
                this.zze = 6;
                objZza4 = ((zzmc) objZza3).zza(zzmgVar5, this);
                if (objZza4 != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 6:
                zzaka zzakaVar7 = (zzaka) this.zza;
                zzmg zzmgVar12 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                zzmgVar6 = zzmgVar12;
                zzakaVar3 = zzakaVar7;
                objZza4 = obj;
                zzalcVar = (zzalc) objZza4;
                if (!this.zzj.zzl()) {
                }
                break;
            case 7:
                zzalcVar = (zzalc) this.zzb;
                zzakaVar3 = (zzaka) this.zza;
                zzmgVar6 = (zzmg) this.zzl;
                ResultKt.throwOnFailure(obj);
                objZza5 = obj;
                strZza = (String) objZza5;
                zzalc zzalcVar22 = zzalcVar;
                zzaka zzakaVar52 = zzakaVar3;
                zzmgVar7 = zzmgVar6;
                str = strZza;
                zzio zzioVar2 = this.zzg;
                zzdp zzdpVar22 = this.zzh;
                String str32 = this.zzi;
                zzakg zzakgVar22 = this.zzj;
                this.zzl = str;
                this.zza = zzmgVar7;
                this.zzb = null;
                this.zze = 8;
                zzmbVar2 = new zzmb(29, new zzin(zzalcVar22, zzioVar2, zzakaVar52, zzdpVar22, str32, zzakgVar22, null), null);
                if (zzmbVar2 != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 8:
                zzmgVar7 = (zzmg) this.zza;
                str = (String) this.zzl;
                ResultKt.throwOnFailure(obj);
                zzmbVar2 = obj;
                this.zzl = str;
                this.zza = null;
                this.zze = 9;
                if (((zzmb) zzmbVar2).zza(zzmgVar7, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            default:
                String str4 = (String) this.zzl;
                ResultKt.throwOnFailure(obj);
                return str4;
        }
    }
}
