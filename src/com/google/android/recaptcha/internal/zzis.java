package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzis extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzdp zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzakg zzd;
    final /* synthetic */ zziv zze;
    private /* synthetic */ Object zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzis(zzdp zzdpVar, long j, zzakg zzakgVar, zziv zzivVar, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzdpVar;
        this.zzc = j;
        this.zzd = zzakgVar;
        this.zze = zzivVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzis zzisVar = new zzis(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzisVar.zzf = obj;
        return zzisVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzis) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
    
        if (((com.google.android.recaptcha.internal.zzmb) r9).zza(r1, r8) == r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws zzhg {
        zzmg zzmgVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
        } catch (zzhg e) {
            zziv zzivVar = this.zze;
            JobKt__JobKt.cancelChildren$default(zzivVar.zzd.zzb().getCoroutineContext(), null, 1, null);
            List list = SequencesKt.toList(JobKt.getJob(zzivVar.zzd.zzb().getCoroutineContext()).getChildren());
            this.zzf = e;
            this.zza = 3;
            if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
                throw e;
            }
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            zzmgVar = (zzmg) this.zzf;
            zzdp zzdpVar = this.zzb;
            long j = this.zzc;
            zzakg zzakgVar = this.zzd;
            this.zzf = zzmgVar;
            this.zza = 1;
            obj = zzdpVar.zza(j, zzakgVar, this);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            zzhg zzhgVar = (zzhg) this.zzf;
            ResultKt.throwOnFailure(obj);
            throw zzhgVar;
        }
        zzmgVar = (zzmg) this.zzf;
        ResultKt.throwOnFailure(obj);
        this.zzf = null;
        this.zza = 2;
    }
}
