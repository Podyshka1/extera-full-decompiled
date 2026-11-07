package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzoh extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzon zzd;
    final /* synthetic */ zzmg zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzoh(zzon zzonVar, zzmg zzmgVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzonVar;
        this.zze = zzmgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzoh zzohVar = new zzoh(this.zzd, this.zze, continuation);
        zzohVar.zzf = obj;
        return zzohVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzoh) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ec, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r10).zza(r1.zza(), r9) != r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0241, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r10).zza(r1.zza(), r9) != r0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x027d, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r10).zza(r1.zza(), r9) != r0) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a2 A[PHI: r1 r2 r10
  0x01a2: PHI (r1v41 com.google.android.recaptcha.internal.zzaks) = (r1v37 com.google.android.recaptcha.internal.zzaks), (r1v44 com.google.android.recaptcha.internal.zzaks) binds: [B:66:0x01a0, B:6:0x0010] A[DONT_GENERATE, DONT_INLINE]
  0x01a2: PHI (r2v20 com.google.android.recaptcha.internal.zzaki) = (r2v17 com.google.android.recaptcha.internal.zzaki), (r2v27 com.google.android.recaptcha.internal.zzaki) binds: [B:66:0x01a0, B:6:0x0010] A[DONT_GENERATE, DONT_INLINE]
  0x01a2: PHI (r10v33 java.lang.Object) = (r10v32 java.lang.Object), (r10v0 java.lang.Object) binds: [B:66:0x01a0, B:6:0x0010] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0230  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzlp zzlpVar;
        zzlp zzlpVar2;
        zzlp zzlpVar3;
        zzaki zzakiVar;
        zzlp zzlpVar4;
        zzaki zzakiVar2;
        zzlp zzlpVar5;
        zzakg zzakgVarZza;
        zzlp zzlpVar6;
        zzaks zzaksVar;
        zzlp zzlpVar7;
        zzaki zzakiVar3;
        zzaks zzaksVar2;
        zzaki zzakiVar4;
        zzaka zzakaVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.zzc) {
            case 0:
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zzf;
                zzni zzniVarZza = this.zzd.zza();
                this.zzf = zzlpVar;
                this.zza = zzlpVar;
                this.zzc = 1;
                obj = zzoa.zzi(zzniVarZza, this);
                if (obj != coroutine_suspended) {
                    zzlpVar2 = zzlpVar;
                    this.zzf = zzlpVar2;
                    this.zza = null;
                    this.zzc = 2;
                    obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
                    if (obj != coroutine_suspended) {
                        zzlpVar3 = zzlpVar2;
                        zzakiVar = (zzaki) obj;
                        if (Intrinsics.areEqual(zzakiVar == null ? zzakiVar.zzb() : null, "18.9.2")) {
                            zzon zzonVar = this.zzd;
                            this.zzf = zzlpVar3;
                            this.zzc = 3;
                            obj = zzonVar.zzh(this);
                            if (obj != coroutine_suspended) {
                                this.zzf = null;
                                this.zzc = 4;
                            }
                        } else {
                            Long lBoxLong = (zzakiVar == null || (zzakgVarZza = zzakiVar.zza()) == null) ? null : Boxing.boxLong(zzakgVarZza.zzj());
                            if (lBoxLong == null || lBoxLong.longValue() < System.currentTimeMillis()) {
                                zzon zzonVar2 = this.zzd;
                                zzmg zzmgVar = this.zze;
                                zzni zzniVarZza2 = zzonVar2.zza();
                                String strZza = zzmgVar.zza().zza();
                                this.zzf = zzlpVar3;
                                this.zzc = 5;
                                obj = zzniVarZza2.zzb(strZza, this);
                                if (obj != coroutine_suspended) {
                                    this.zzf = null;
                                    this.zzc = 6;
                                }
                            } else {
                                zznm zznmVarZzc = this.zzd.zzc();
                                this.zzf = zzlpVar3;
                                this.zza = zzakiVar;
                                this.zzb = zzlpVar3;
                                this.zzc = 7;
                                Object objZzi = zzoa.zzi(zznmVarZzc, this);
                                if (objZzi != coroutine_suspended) {
                                    zzlpVar4 = zzlpVar3;
                                    zzakiVar2 = zzakiVar;
                                    obj = objZzi;
                                    zzlpVar5 = zzlpVar4;
                                    this.zzf = zzlpVar4;
                                    this.zza = zzakiVar2;
                                    this.zzb = null;
                                    this.zzc = 8;
                                    obj = ((zzmc) obj).zza(zzlpVar5.zza(), this);
                                    if (obj != coroutine_suspended) {
                                        zzlpVar6 = zzlpVar4;
                                        zzaksVar = (zzaks) obj;
                                        if (Intrinsics.areEqual(zzaksVar == null ? zzaksVar.zzb() : null, "18.9.2") || !Intrinsics.areEqual(zzaksVar.zzc(), zzakiVar2.zzc())) {
                                            zzon zzonVar3 = this.zzd;
                                            this.zzf = zzlpVar6;
                                            this.zza = null;
                                            this.zzc = 9;
                                            obj = zzonVar3.zzh(this);
                                            if (obj != coroutine_suspended) {
                                                zzlpVar7 = zzlpVar6;
                                                this.zzf = null;
                                                this.zzc = 10;
                                            }
                                        } else {
                                            zzng zzngVarZzb = this.zzd.zzb();
                                            this.zzf = zzakiVar2;
                                            this.zza = zzaksVar;
                                            this.zzb = zzlpVar6;
                                            this.zzc = 11;
                                            Object objZzi2 = zzoa.zzi(zzngVarZzb, this);
                                            if (objZzi2 != coroutine_suspended) {
                                                zzakiVar3 = zzakiVar2;
                                                zzaksVar2 = zzaksVar;
                                                obj = objZzi2;
                                                zzakiVar4 = zzakiVar3;
                                                this.zzf = zzakiVar4;
                                                this.zza = zzaksVar2;
                                                this.zzb = null;
                                                this.zzc = 12;
                                                obj = ((zzmc) obj).zza(zzlpVar6.zza(), this);
                                                if (obj != coroutine_suspended) {
                                                    zzakaVar = (zzaka) obj;
                                                    if (zzakaVar != null) {
                                                        throw new zzhg(zzhf.zzb, zzhe.zzaA, null, null, 12, null);
                                                    }
                                                    zzakg zzakgVarZza2 = zzakiVar4.zza();
                                                    this.zzf = null;
                                                    this.zza = null;
                                                    this.zzc = 13;
                                                    zzakf zzakfVar = (zzakf) zzakgVarZza2.zzG();
                                                    zzakd zzakdVar = (zzakd) zzakgVarZza2.zzg().zzG();
                                                    zzakdVar.zza(zzakaVar.zze());
                                                    zzakfVar.zzb((zzake) zzakdVar.zzp());
                                                    zzakj zzakjVar = (zzakj) zzakgVarZza2.zzd().zzG();
                                                    zzakjVar.zza(zzakaVar.zza());
                                                    zzakjVar.zzc(zzakaVar.zzb());
                                                    zzakjVar.zze(zzakaVar.zzc());
                                                    zzakjVar.zzg(zzakaVar.zzd());
                                                    zzakfVar.zza((zzakk) zzakjVar.zzp());
                                                    zzakfVar.zzc(zzaksVar2.zza());
                                                    zzafv zzafvVarZzp = zzakfVar.zzp();
                                                    if (zzafvVarZzp != coroutine_suspended) {
                                                        return zzafvVarZzp;
                                                    }
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
                zzlpVar = (zzlp) this.zza;
                zzlpVar2 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                this.zzf = zzlpVar2;
                this.zza = null;
                this.zzc = 2;
                obj = ((zzmc) obj).zza(zzlpVar.zza(), this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                zzlpVar3 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzakiVar = (zzaki) obj;
                if (Intrinsics.areEqual(zzakiVar == null ? zzakiVar.zzb() : null, "18.9.2")) {
                }
                return coroutine_suspended;
            case 3:
                zzlpVar3 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                this.zzf = null;
                this.zzc = 4;
                break;
            case 4:
                ResultKt.throwOnFailure(obj);
                throw new zzhg(zzhf.zzb, zzhe.zzax, null, null, 12, null);
            case 5:
                zzlpVar3 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                this.zzf = null;
                this.zzc = 6;
                break;
            case 6:
                ResultKt.throwOnFailure(obj);
                throw new zzhg(zzhf.zzb, zzhe.zzay, null, null, 12, null);
            case 7:
                zzlp zzlpVar8 = (zzlp) this.zzb;
                zzaki zzakiVar5 = (zzaki) this.zza;
                zzlpVar4 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzlpVar5 = zzlpVar8;
                zzakiVar2 = zzakiVar5;
                this.zzf = zzlpVar4;
                this.zza = zzakiVar2;
                this.zzb = null;
                this.zzc = 8;
                obj = ((zzmc) obj).zza(zzlpVar5.zza(), this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 8:
                zzakiVar2 = (zzaki) this.zza;
                zzlpVar6 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzaksVar = (zzaks) obj;
                if (Intrinsics.areEqual(zzaksVar == null ? zzaksVar.zzb() : null, "18.9.2")) {
                    break;
                }
                zzon zzonVar32 = this.zzd;
                this.zzf = zzlpVar6;
                this.zza = null;
                this.zzc = 9;
                obj = zzonVar32.zzh(this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 9:
                zzlpVar7 = (zzlp) this.zzf;
                ResultKt.throwOnFailure(obj);
                this.zzf = null;
                this.zzc = 10;
                break;
            case 10:
                ResultKt.throwOnFailure(obj);
                throw new zzhg(zzhf.zzb, zzhe.zzaz, null, null, 12, null);
            case 11:
                zzlp zzlpVar9 = (zzlp) this.zzb;
                zzaks zzaksVar3 = (zzaks) this.zza;
                zzaki zzakiVar6 = (zzaki) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzakiVar3 = zzakiVar6;
                zzlpVar6 = zzlpVar9;
                zzaksVar2 = zzaksVar3;
                zzakiVar4 = zzakiVar3;
                this.zzf = zzakiVar4;
                this.zza = zzaksVar2;
                this.zzb = null;
                this.zzc = 12;
                obj = ((zzmc) obj).zza(zzlpVar6.zza(), this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 12:
                zzaksVar2 = (zzaks) this.zza;
                zzakiVar4 = (zzaki) this.zzf;
                ResultKt.throwOnFailure(obj);
                zzakaVar = (zzaka) obj;
                if (zzakaVar != null) {
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                return obj;
        }
    }
}
