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
final class zzds extends SuspendLambda implements Function1 {
    Object zza;
    int zzb;
    final /* synthetic */ zzlp zzc;
    final /* synthetic */ zzdv zzd;
    final /* synthetic */ zzalg zze;
    final /* synthetic */ Ref.ObjectRef zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzds(zzlp zzlpVar, zzdv zzdvVar, zzalg zzalgVar, Ref.ObjectRef objectRef, Continuation continuation) {
        super(1, continuation);
        this.zzc = zzlpVar;
        this.zzd = zzdvVar;
        this.zze = zzalgVar;
        this.zzf = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new zzds(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return ((zzds) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        if (r6 == r0) goto L18;
     */
    /* JADX WARN: Type inference failed for: r6v1, types: [T, com.google.android.recaptcha.internal.zzhg, java.lang.Throwable] */
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
                zzdv zzdvVar = this.zzd;
                zzalg zzalgVar = this.zze;
                this.zza = zzlpVar;
                this.zzb = 1;
                obj = CoroutineScopeKt.coroutineScope(new zzdr(zzdvVar, zzalgVar, null), this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return (zzali) obj;
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
