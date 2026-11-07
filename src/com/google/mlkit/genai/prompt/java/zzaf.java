package com.google.mlkit.genai.prompt.java;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.mlkit.genai.common.StreamingCallback;
import com.google.mlkit.genai.prompt.GenerateContentRequest;
import com.google.mlkit.genai.prompt.GenerativeModel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
final class zzaf extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
    final /* synthetic */ zzal zzd;
    final /* synthetic */ GenerateContentRequest zze;
    final /* synthetic */ StreamingCallback zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaf(CallbackToFutureAdapter.Completer completer, zzal zzalVar, GenerateContentRequest generateContentRequest, StreamingCallback streamingCallback, Continuation continuation) {
        super(2, continuation);
        this.zzc = completer;
        this.zzd = zzalVar;
        this.zze = generateContentRequest;
        this.zzf = streamingCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzaf(this.zzc, this.zzd, this.zze, this.zzf, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzaf) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CallbackToFutureAdapter.Completer completer;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zzb != 0) {
                completer = (CallbackToFutureAdapter.Completer) this.zza;
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                CallbackToFutureAdapter.Completer completer2 = this.zzc;
                GenerativeModel generativeModel = this.zzd.zza;
                GenerateContentRequest generateContentRequest = this.zze;
                StreamingCallback streamingCallback = this.zzf;
                this.zza = completer2;
                this.zzb = 1;
                Object objGenerateContent = generativeModel.generateContent(generateContentRequest, streamingCallback, this);
                if (objGenerateContent == coroutine_suspended) {
                    return coroutine_suspended;
                }
                completer = completer2;
                obj = objGenerateContent;
            }
            completer.set(obj);
        } catch (Exception e) {
            this.zzc.setException(e);
        }
        return Unit.INSTANCE;
    }
}
