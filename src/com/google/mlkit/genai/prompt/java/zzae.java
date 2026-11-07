package com.google.mlkit.genai.prompt.java;

import androidx.concurrent.futures.CallbackToFutureAdapter;
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
final class zzae extends SuspendLambda implements Function2 {
    Object zza;
    int zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
    final /* synthetic */ zzal zzd;
    final /* synthetic */ GenerateContentRequest zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzae(CallbackToFutureAdapter.Completer completer, zzal zzalVar, GenerateContentRequest generateContentRequest, Continuation continuation) {
        super(2, continuation);
        this.zzc = completer;
        this.zzd = zzalVar;
        this.zze = generateContentRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzae(this.zzc, this.zzd, this.zze, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzae) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                this.zza = completer2;
                this.zzb = 1;
                Object objGenerateContent = generativeModel.generateContent(generateContentRequest, this);
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
