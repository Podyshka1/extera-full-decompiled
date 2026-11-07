package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzyo extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ CoroutineScope zzb;
    final /* synthetic */ Function2 zzc;
    private /* synthetic */ Object zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzyo(CoroutineScope coroutineScope, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.zzb = coroutineScope;
        this.zzc = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzyo zzyoVar = new zzyo(this.zzb, this.zzc, continuation);
        zzyoVar.zze = obj;
        return zzyoVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzyo) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i == 0) {
            ProducerScope producerScope = (ProducerScope) this.zze;
            final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(this.zzb, null, null, new zzyn(this.zzc, new zzym(producerScope), producerScope, null), 3, null);
            Function0 function0 = new Function0() { // from class: com.google.android.gms.internal.mlkit_genai_prompt.zzyl
                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ Object invoke() {
                    Job.cancel$default(jobLaunch$default, null, 1, null);
                    return Unit.INSTANCE;
                }
            };
            this.zza = 1;
            if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
