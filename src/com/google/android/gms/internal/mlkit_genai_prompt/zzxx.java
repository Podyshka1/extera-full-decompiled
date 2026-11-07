package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadCallback;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzxx extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzyd zzb;
    final /* synthetic */ zzaur zzc;
    final /* synthetic */ DownloadCallback zzd;
    final /* synthetic */ AtomicInteger zze;
    final /* synthetic */ int zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxx(zzyd zzydVar, zzaur zzaurVar, DownloadCallback downloadCallback, AtomicInteger atomicInteger, int i, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzydVar;
        this.zzc = zzaurVar;
        this.zzd = downloadCallback;
        this.zze = atomicInteger;
        this.zzf = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzxx(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzxx) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            zzyd zzydVar = this.zzb;
            zzaur zzaurVar = this.zzc;
            final DownloadCallback downloadCallback = this.zzd;
            final AtomicInteger atomicInteger = this.zze;
            final int i2 = this.zzf;
            Function0 function0 = new Function0() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzxw
                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ Object invoke() {
                    if (atomicInteger.incrementAndGet() == i2) {
                        downloadCallback.onDownloadCompleted();
                    }
                    return Unit.INSTANCE;
                }
            };
            this.zza = 1;
            if (zzydVar.zzj(zzaurVar, downloadCallback, false, null, function0, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
