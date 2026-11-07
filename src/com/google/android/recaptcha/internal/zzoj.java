package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzoj extends SuspendLambda implements Function2 {
    Object zza;
    Object zzb;
    int zzc;
    final /* synthetic */ zzon zzd;
    final /* synthetic */ zzakg zze;
    final /* synthetic */ zzmg zzf;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzoj(zzon zzonVar, zzakg zzakgVar, zzmg zzmgVar, Continuation continuation) {
        super(2, continuation);
        this.zzd = zzonVar;
        this.zze = zzakgVar;
        this.zzf = zzmgVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzoj zzojVar = new zzoj(this.zzd, this.zze, this.zzf, continuation);
        zzojVar.zzg = obj;
        return zzojVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzoj) create((zzlp) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0183, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmb) r9).zza(r1, r8) == r0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0185, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01a9, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r9).zza(r1.zza(), r8) != r0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01fe, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmc) r9).zza(r1.zza(), r8) != r0) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d8  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        zzafv zzafvVarZzp;
        zzaki zzakiVar;
        zzlp zzlpVar2;
        zzaks zzaksVar;
        zzlp zzlpVar3;
        zzmg zzmgVar;
        zzaks zzaksVar2;
        Object objZze;
        zzmg zzmgVar2;
        zzlp zzlpVar4;
        zzlp zzlpVar5;
        zzlp zzlpVar6;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.zzc) {
            case 0:
                ResultKt.throwOnFailure(obj);
                zzlpVar = (zzlp) this.zzg;
                zzakg zzakgVar = this.zze;
                this.zzg = zzlpVar;
                this.zzc = 1;
                zzakh zzakhVarZzd = zzaki.zzd();
                zzakf zzakfVar = (zzakf) zzakgVar.zzG();
                zzakd zzakdVar = (zzakd) zzakgVar.zzg().zzG();
                zzakdVar.zzb();
                zzakfVar.zzb((zzake) zzakdVar.zzp());
                zzakj zzakjVar = (zzakj) zzakgVar.zzd().zzG();
                zzakjVar.zzb();
                zzakjVar.zzd();
                zzakjVar.zzf();
                zzakjVar.zzh();
                zzakfVar.zza((zzakk) zzakjVar.zzp());
                zzakfVar.zzd();
                zzakhVarZzd.zza((zzakg) zzakfVar.zzp());
                zzakhVarZzd.zzb("18.9.2");
                zzakhVarZzd.zzc(zzhs.zza(zzakgVar.zzb()));
                obj = zzakhVarZzd.zzp();
                if (obj != coroutine_suspended) {
                    zzakg zzakgVar2 = this.zze;
                    zzaki zzakiVar2 = (zzaki) obj;
                    this.zzg = zzlpVar;
                    this.zza = zzakiVar2;
                    this.zzc = 2;
                    zzakr zzakrVarZzd = zzaks.zzd();
                    zzakrVarZzd.zza(zzakgVar2.zzh());
                    zzakrVarZzd.zzb("18.9.2");
                    zzakrVarZzd.zzc(zzhs.zza(zzakgVar2.zzb()));
                    zzafvVarZzp = zzakrVarZzd.zzp();
                    if (zzafvVarZzp != coroutine_suspended) {
                        zzakiVar = zzakiVar2;
                        obj = zzafvVarZzp;
                        zzaks zzaksVar3 = (zzaks) obj;
                        if (!this.zze.zzi()) {
                            zzmg zzmgVar3 = this.zzf;
                            zzni zzniVarZza = this.zzd.zza();
                            this.zzg = zzlpVar;
                            this.zza = zzaksVar3;
                            this.zzb = zzmgVar3;
                            this.zzc = 3;
                            Object objZze2 = zzoa.zze(zzniVarZza, zzakiVar, this);
                            if (objZze2 != coroutine_suspended) {
                                zzaksVar = zzaksVar3;
                                obj = objZze2;
                                zzlpVar3 = zzlpVar;
                                zzmgVar = zzmgVar3;
                                this.zzg = zzlpVar3;
                                this.zza = zzaksVar;
                                this.zzb = null;
                                this.zzc = 4;
                                if (((zzmb) obj).zza(zzmgVar, this) != coroutine_suspended) {
                                    zzaksVar2 = zzaksVar;
                                    zzlpVar2 = zzlpVar3;
                                    zzmg zzmgVar4 = this.zzf;
                                    zznm zznmVarZzc = this.zzd.zzc();
                                    this.zzg = zzlpVar2;
                                    this.zza = zzmgVar4;
                                    this.zzc = 5;
                                    objZze = zzoa.zze(zznmVarZzc, zzaksVar2, this);
                                    if (objZze != coroutine_suspended) {
                                        zzmgVar2 = zzmgVar4;
                                        obj = objZze;
                                        this.zzg = zzlpVar2;
                                        this.zza = null;
                                        this.zzc = 6;
                                    }
                                }
                            }
                        } else {
                            zzon zzonVar = this.zzd;
                            this.zzg = zzlpVar;
                            this.zza = zzlpVar;
                            this.zzc = 7;
                            obj = zzonVar.zzh(this);
                            if (obj != coroutine_suspended) {
                                zzlpVar2 = zzlpVar;
                                this.zzg = zzlpVar2;
                                this.zza = null;
                                this.zzc = 8;
                            }
                        }
                    }
                    break;
                }
                return coroutine_suspended;
            case 1:
                zzlpVar = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzakg zzakgVar22 = this.zze;
                zzaki zzakiVar22 = (zzaki) obj;
                this.zzg = zzlpVar;
                this.zza = zzakiVar22;
                this.zzc = 2;
                zzakr zzakrVarZzd2 = zzaks.zzd();
                zzakrVarZzd2.zza(zzakgVar22.zzh());
                zzakrVarZzd2.zzb("18.9.2");
                zzakrVarZzd2.zzc(zzhs.zza(zzakgVar22.zzb()));
                zzafvVarZzp = zzakrVarZzd2.zzp();
                if (zzafvVarZzp != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 2:
                zzaki zzakiVar3 = (zzaki) this.zza;
                zzlp zzlpVar7 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzakiVar = zzakiVar3;
                zzlpVar = zzlpVar7;
                zzaks zzaksVar32 = (zzaks) obj;
                if (!this.zze.zzi()) {
                }
                return coroutine_suspended;
            case 3:
                zzmgVar = (zzmg) this.zzb;
                zzaksVar = (zzaks) this.zza;
                zzlpVar3 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = zzlpVar3;
                this.zza = zzaksVar;
                this.zzb = null;
                this.zzc = 4;
                if (((zzmb) obj).zza(zzmgVar, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 4:
                zzaksVar2 = (zzaks) this.zza;
                zzlpVar2 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzmg zzmgVar42 = this.zzf;
                zznm zznmVarZzc2 = this.zzd.zzc();
                this.zzg = zzlpVar2;
                this.zza = zzmgVar42;
                this.zzc = 5;
                objZze = zzoa.zze(zznmVarZzc2, zzaksVar2, this);
                if (objZze != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 5:
                zzmgVar2 = (zzmg) this.zza;
                zzlpVar2 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = zzlpVar2;
                this.zza = null;
                this.zzc = 6;
                break;
            case 6:
            case 8:
                zzlpVar4 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzng zzngVarZzb = this.zzd.zzb();
                this.zzg = zzlpVar4;
                this.zza = zzlpVar4;
                this.zzc = 9;
                obj = zzoa.zzi(zzngVarZzb, this);
                if (obj != coroutine_suspended) {
                    zzlpVar5 = zzlpVar4;
                    this.zzg = zzlpVar5;
                    this.zza = null;
                    this.zzc = 10;
                    obj = ((zzmc) obj).zza(zzlpVar4.zza(), this);
                    if (obj != coroutine_suspended) {
                        zzlpVar6 = zzlpVar5;
                        if (obj == null) {
                            zzon zzonVar2 = this.zzd;
                            zzakg zzakgVar3 = this.zze;
                            this.zzg = zzlpVar6;
                            this.zzc = 11;
                            obj = new zzmc(new zzom(zzakgVar3, zzonVar2, null));
                            if (obj != coroutine_suspended) {
                                this.zzg = null;
                                this.zzc = 12;
                            }
                            break;
                        }
                        return Unit.INSTANCE;
                    }
                }
                return coroutine_suspended;
            case 7:
                zzlpVar = (zzlp) this.zza;
                zzlpVar2 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = zzlpVar2;
                this.zza = null;
                this.zzc = 8;
                break;
            case 9:
                zzlpVar4 = (zzlp) this.zza;
                zzlpVar5 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = zzlpVar5;
                this.zza = null;
                this.zzc = 10;
                obj = ((zzmc) obj).zza(zzlpVar4.zza(), this);
                if (obj != coroutine_suspended) {
                }
                return coroutine_suspended;
            case 10:
                zzlpVar6 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                if (obj == null) {
                }
                return Unit.INSTANCE;
            case 11:
                zzlpVar6 = (zzlp) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = null;
                this.zzc = 12;
                break;
            default:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
        }
    }
}
