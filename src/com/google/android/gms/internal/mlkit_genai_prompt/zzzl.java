package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.DownloadStatus;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
final class zzzl extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzzy zzb;
    final /* synthetic */ CallbackToFutureAdapter.Completer zzc;
    final /* synthetic */ DownloadCallback zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzl(zzzy zzzyVar, CallbackToFutureAdapter.Completer completer, DownloadCallback downloadCallback, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzzyVar;
        this.zzc = completer;
        this.zzd = downloadCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzzl(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzzl) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            if (this.zza != 0) {
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                Flow<DownloadStatus> flowDownload = this.zzb.download();
                zzzk zzzkVar = new zzzk(this.zzd);
                this.zza = 1;
                if (flowDownload.collect(zzzkVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            this.zzc.set(null);
        } catch (Exception e) {
            this.zzc.setException(e);
        }
        return Unit.INSTANCE;
    }
}
