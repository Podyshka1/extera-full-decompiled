package com.google.android.recaptcha.internal;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class zzdf extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zzcz zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzdo zze;
    private /* synthetic */ Object zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdf(zzcz zzczVar, String str, zzdo zzdoVar, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzczVar;
        this.zzd = str;
        this.zze = zzdoVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzdf zzdfVar = new zzdf(this.zzc, this.zzd, this.zze, continuation);
        zzdfVar.zzg = obj;
        return zzdfVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzdf) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0109, code lost:
    
        if (r15 != r0) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fe A[PHI: r1 r15
  0x00fe: PHI (r1v9 com.google.android.recaptcha.internal.zzmg) = (r1v8 com.google.android.recaptcha.internal.zzmg), (r1v20 com.google.android.recaptcha.internal.zzmg) binds: [B:32:0x00fc, B:10:0x001d] A[DONT_GENERATE, DONT_INLINE]
  0x00fe: PHI (r15v21 java.lang.Object) = (r15v20 java.lang.Object), (r15v0 java.lang.Object) binds: [B:32:0x00fc, B:10:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        zzakt zzaktVar;
        zzmg zzmgVar4;
        zzmg zzmgVar5;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzg;
            zzcz zzczVar = this.zzc;
            this.zzg = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = new zzmc(new zzcy(zzczVar, zzczVar.zza, null));
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            zzmgVar = (zzmg) this.zza;
            zzmgVar2 = (zzmg) this.zzg;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i == 2) {
                zzmgVar3 = (zzmg) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzaku zzakuVar = (zzaku) obj;
                zzaktVar = (zzakt) zzakuVar.zzG();
                zzaktVar.zzb();
                if (!Intrinsics.areEqual(zzaktVar.zzp(), zzaku.zzb())) {
                    return Unit.INSTANCE;
                }
                zzalf zzalfVarZza = zzalg.zza();
                zzalfVarZza.zzc(zzakuVar);
                zzalfVarZza.zzb(zzmgVar3.zza().zza());
                zzalfVarZza.zza(this.zzd);
                zzalg zzalgVar = (zzalg) zzalfVarZza.zzp();
                zzdv zzdvVar = this.zze.zzd;
                this.zzg = zzmgVar3;
                this.zza = zzmgVar3;
                this.zzb = 3;
                obj = new zzmb(63, new zzdu(zzdvVar, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, zzalgVar, null), null);
                if (obj != coroutine_suspended) {
                    zzmgVar4 = zzmgVar3;
                    this.zzg = zzmgVar4;
                    this.zza = null;
                    this.zzb = 4;
                    obj = ((zzmb) obj).zza(zzmgVar3, this);
                    if (obj != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i == 3) {
                zzmgVar3 = (zzmg) this.zza;
                zzmgVar4 = (zzmg) this.zzg;
                ResultKt.throwOnFailure(obj);
                this.zzg = zzmgVar4;
                this.zza = null;
                this.zzb = 4;
                obj = ((zzmb) obj).zza(zzmgVar3, this);
                if (obj != coroutine_suspended) {
                    zzmgVar5 = zzmgVar4;
                    zzdo zzdoVar = this.zze;
                    final zzcz zzczVar2 = this.zzc;
                    final zzali zzaliVar = (zzali) obj;
                    zzng zzngVar = zzdoVar.zzc;
                    Function1 function1 = new Function1() { // from class: com.google.android.recaptcha.internal.zzde
                        @Override // kotlin.jvm.functions.Function1
                        public final /* synthetic */ Object invoke(Object obj2) {
                            zzaka zzakaVar = (zzaka) obj2;
                            if (!zzczVar2.zza(zzakaVar.zza())) {
                                return null;
                            }
                            zzali zzaliVar2 = zzaliVar;
                            zzajz zzajzVar = (zzajz) zzakaVar.zzG();
                            zzajzVar.zza(zzaliVar2.zza());
                            zzajzVar.zzb(zzaliVar2.zzb());
                            return (zzaka) zzajzVar.zzp();
                        }
                    };
                    this.zzg = zzmgVar5;
                    this.zzb = 5;
                    obj = zzngVar.zzf(function1, this);
                    if (obj != coroutine_suspended) {
                    }
                }
                return coroutine_suspended;
            }
            if (i == 4) {
                zzmgVar5 = (zzmg) this.zzg;
                ResultKt.throwOnFailure(obj);
                zzdo zzdoVar2 = this.zze;
                final zzcz zzczVar22 = this.zzc;
                final zzali zzaliVar2 = (zzali) obj;
                zzng zzngVar2 = zzdoVar2.zzc;
                Function1 function12 = new Function1() { // from class: com.google.android.recaptcha.internal.zzde
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ Object invoke(Object obj2) {
                        zzaka zzakaVar = (zzaka) obj2;
                        if (!zzczVar22.zza(zzakaVar.zza())) {
                            return null;
                        }
                        zzali zzaliVar22 = zzaliVar2;
                        zzajz zzajzVar = (zzajz) zzakaVar.zzG();
                        zzajzVar.zza(zzaliVar22.zza());
                        zzajzVar.zzb(zzaliVar22.zzb());
                        return (zzaka) zzajzVar.zzp();
                    }
                };
                this.zzg = zzmgVar5;
                this.zzb = 5;
                obj = zzngVar2.zzf(function12, this);
                if (obj != coroutine_suspended) {
                    this.zzg = null;
                    this.zzb = 6;
                    obj = ((zzmb) obj).zza(zzmgVar5, this);
                }
                return coroutine_suspended;
            }
            if (i != 5) {
                ResultKt.throwOnFailure(obj);
                if (((Boolean) obj).booleanValue()) {
                    return Unit.INSTANCE;
                }
                throw new zzhg(zzhf.zzb, zzhe.zzaw, null, null, 12, null);
            }
            zzmgVar5 = (zzmg) this.zzg;
            ResultKt.throwOnFailure(obj);
            this.zzg = null;
            this.zzb = 6;
            obj = ((zzmb) obj).zza(zzmgVar5, this);
        }
        this.zzg = zzmgVar2;
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar, this);
        if (obj != coroutine_suspended) {
            zzmgVar3 = zzmgVar2;
            zzaku zzakuVar2 = (zzaku) obj;
            zzaktVar = (zzakt) zzakuVar2.zzG();
            zzaktVar.zzb();
            if (!Intrinsics.areEqual(zzaktVar.zzp(), zzaku.zzb())) {
            }
        }
        return coroutine_suspended;
    }
}
