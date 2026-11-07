package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.mlkit.genai.common.DownloadStatus;
import com.google.mlkit.genai.common.GenAiException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes4.dex */
final class zzyn extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ Function2 zzb;
    final /* synthetic */ zzym zzc;
    final /* synthetic */ ProducerScope zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzyn(Function2 function2, zzym zzymVar, ProducerScope producerScope, Continuation continuation) {
        super(2, continuation);
        this.zzb = function2;
        this.zzc = zzymVar;
        this.zzd = producerScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzyn(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzyn) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
                this = this;
            } else {
                ResultKt.throwOnFailure(obj);
                Function2 function2 = this.zzb;
                zzym zzymVar = this.zzc;
                this.zza = 1;
                Object objInvoke = function2.invoke(zzymVar, this);
                this = objInvoke;
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } catch (GenAiException e) {
            ProducerScope producerScope = this.zzd;
            producerScope.mo4601trySendJP2dKIU(new DownloadStatus.DownloadFailed(e));
            producerScope.close(e);
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            GenAiException genAiException = new GenAiException(message, th, 0);
            ProducerScope producerScope2 = this.zzd;
            producerScope2.mo4601trySendJP2dKIU(new DownloadStatus.DownloadFailed(genAiException));
            producerScope2.close(genAiException);
        }
        return Unit.INSTANCE;
    }
}
