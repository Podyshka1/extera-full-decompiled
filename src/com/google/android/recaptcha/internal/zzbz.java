package com.google.android.recaptcha.internal;

import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzbz extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzcj zzb;
    final /* synthetic */ zzca zzc;
    final /* synthetic */ String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbz(zzcj zzcjVar, zzca zzcaVar, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzcjVar;
        this.zzc = zzcaVar;
        this.zzd = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzbz(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzbz) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
    
        if (r4 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        if (r1.zzh(r5, r2, r4) != r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        try {
        } catch (Exception e) {
            zzca zzcaVar = this.zzc;
            zzcj zzcjVar = this.zzb;
            this.zza = 2;
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.zzb.zza = new zzz();
            zzpf zzpfVarZza = this.zzc.zzd.zza(zzpn.zzg(zzfy.zzh().zzj(this.zzd)));
            zzca zzcaVar2 = this.zzc;
            List listZzi = zzpfVarZza.zzi();
            zzcj zzcjVar2 = this.zzb;
            this.zza = 1;
            Object objZzg = zzcaVar2.zzg(listZzi, zzcjVar2, this);
            this = objZzg;
        } else {
            if (i != 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            this = this;
        }
        return Unit.INSTANCE;
    }
}
