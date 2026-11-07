package com.google.android.recaptcha.internal;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes5.dex */
final class zzkt extends SuspendLambda implements Function1 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlp zzc;
    final /* synthetic */ zzkw zzd;
    final /* synthetic */ zzala zze;
    final /* synthetic */ Ref.ObjectRef zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzkt(zzlp zzlpVar, zzkw zzkwVar, zzala zzalaVar, Ref.ObjectRef objectRef, Continuation continuation) {
        super(1, continuation);
        this.zzc = zzlpVar;
        this.zzd = zzkwVar;
        this.zze = zzalaVar;
        this.zzf = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzkt(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzkt) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:
    
        if (r12 == r0) goto L18;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, com.google.android.recaptcha.internal.zzhg, java.lang.Throwable] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        zzlp zzlpVar;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zzb;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                zzlpVar = this.zzc;
                zzkw zzkwVar = this.zzd;
                zzala zzalaVar = this.zze;
                this.zza = zzlpVar;
                this.zzb = 1;
                obj = CoroutineScopeKt.coroutineScope(new zzkr(zzkwVar, zzalaVar, null), this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                zzalc zzalcVar = (zzalc) obj;
                if (zzalcVar.zza().length() != 0) {
                    return zzalcVar;
                }
                zzhf zzhfVar = zzhf.zzb;
                zzhe zzheVar = zzhe.zzam;
                int iZzh = zzalcVar.zzh();
                throw new zzhg(zzhfVar, zzheVar, String.valueOf(iZzh == 1 ? zzagf.zza() : iZzh - 2), null, 8, null);
            }
            zzlpVar = (zzlp) this.zza;
            ResultKt.throwOnFailure(obj);
            this.zza = null;
            this.zzb = 2;
            obj = ((zzmb) obj).zza(zzlpVar.zza(), this);
        } catch (zzhg e) {
            this.zzf.element = e;
            throw e;
        }
    }
}
