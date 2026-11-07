package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzir extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ zziv zzc;
    final /* synthetic */ long zzd;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzir(zziv zzivVar, long j, Continuation continuation) {
        super(2, continuation);
        this.zzc = zzivVar;
        this.zzd = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzir zzirVar = new zzir(this.zzc, this.zzd, continuation);
        zzirVar.zze = obj;
        return zzirVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzir) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzmg zzmgVar;
        zzmg zzmgVar2;
        zzmg zzmgVar3;
        zzmg zzmgVar4;
        zzmg zzmgVar5;
        zzakg zzakgVar;
        zzakg zzakgVar2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zze;
            zzif zzifVar = this.zzc.zza;
            this.zze = zzmgVar;
            this.zza = zzmgVar;
            this.zzb = 1;
            obj = new zzmc(new zzie(zzifVar, null));
            if (obj != coroutine_suspended) {
                zzmgVar2 = zzmgVar;
            }
        }
        if (i != 1) {
            if (i == 2) {
                zzmgVar3 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                zziv zzivVar = this.zzc;
                long j = this.zzd;
                zzkx zzkxVar = zzivVar.zzb;
                this.zze = zzmgVar3;
                this.zza = zzmgVar3;
                this.zzb = 3;
                obj = zzkxVar.zza((zzamf) obj, j, this);
                if (obj != coroutine_suspended) {
                    zzmgVar4 = zzmgVar3;
                    this.zze = zzmgVar4;
                    this.zza = null;
                    this.zzb = 4;
                    obj = ((zzmb) obj).zza(zzmgVar3, this);
                    if (obj != coroutine_suspended) {
                    }
                }
            }
            if (i == 3) {
                zzmgVar3 = (zzmg) this.zza;
                zzmgVar4 = (zzmg) this.zze;
                ResultKt.throwOnFailure(obj);
                this.zze = zzmgVar4;
                this.zza = null;
                this.zzb = 4;
                obj = ((zzmb) obj).zza(zzmgVar3, this);
                if (obj != coroutine_suspended) {
                    zzmgVar5 = zzmgVar4;
                    zzakgVar = (zzakg) obj;
                    if (zzakgVar.zzl()) {
                    }
                }
            }
            if (i != 4) {
                if (i != 5) {
                    zzakg zzakgVar3 = (zzakg) this.zze;
                    ResultKt.throwOnFailure(obj);
                    return zzakgVar3;
                }
                zzmgVar5 = (zzmg) this.zza;
                zzakgVar2 = (zzakg) this.zze;
                ResultKt.throwOnFailure(obj);
                this.zze = zzakgVar2;
                this.zza = null;
                this.zzb = 6;
                return zzmgVar5.zzc((zzmb) obj, this) == coroutine_suspended ? zzakgVar2 : coroutine_suspended;
            }
            zzmgVar5 = (zzmg) this.zze;
            ResultKt.throwOnFailure(obj);
            zzakgVar = (zzakg) obj;
            if (zzakgVar.zzl()) {
                return zzakgVar;
            }
            zziq zziqVar = new zziq(this.zzc, null);
            this.zze = zzakgVar;
            this.zza = zzmgVar5;
            this.zzb = 5;
            zzmb zzmbVar = new zzmb(88, zziqVar, null);
            if (zzmbVar != coroutine_suspended) {
                zzakgVar2 = zzakgVar;
                obj = zzmbVar;
                this.zze = zzakgVar2;
                this.zza = null;
                this.zzb = 6;
                if (zzmgVar5.zzc((zzmb) obj, this) == coroutine_suspended) {
                }
            }
        }
        zzmgVar = (zzmg) this.zza;
        zzmgVar2 = (zzmg) this.zze;
        ResultKt.throwOnFailure(obj);
        this.zze = zzmgVar2;
        this.zza = null;
        this.zzb = 2;
        obj = ((zzmc) obj).zza(zzmgVar, this);
        if (obj != coroutine_suspended) {
            zzmgVar3 = zzmgVar2;
            zziv zzivVar2 = this.zzc;
            long j2 = this.zzd;
            zzkx zzkxVar2 = zzivVar2.zzb;
            this.zze = zzmgVar3;
            this.zza = zzmgVar3;
            this.zzb = 3;
            obj = zzkxVar2.zza((zzamf) obj, j2, this);
            if (obj != coroutine_suspended) {
            }
        }
    }
}
