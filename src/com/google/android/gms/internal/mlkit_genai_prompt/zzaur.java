package com.google.android.gms.internal.mlkit_genai_prompt;

import android.util.Log;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.genai.common.DownloadCallback;
import com.google.mlkit.genai.common.GenAiException;
import com.google.mlkit.genai.common.StreamingCallback;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.guava.ListenableFutureKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaur extends zzaun {
    public zzaur(ExecutorService executorService, int i, int i2, zzaty zzatyVar) {
        super(executorService, i, -1, zzatyVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzA(zzaur zzaurVar, Continuation continuation) throws Throwable {
        zzaup zzaupVar;
        if (continuation instanceof zzaup) {
            zzaupVar = (zzaup) continuation;
            int i = zzaupVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzaupVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzaupVar = new zzaup(zzaurVar, continuation);
            }
        }
        Object objAwait = zzaupVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzaupVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            ListenableFuture listenableFutureZzi = zzaurVar.zzi();
            zzaupVar.zzc = 1;
            objAwait = ListenableFutureKt.await(listenableFutureZzi, zzaupVar);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objAwait);
        }
        return objAwait;
    }

    public static /* synthetic */ Object zzD(zzaur zzaurVar, DownloadCallback downloadCallback, Continuation continuation) throws Throwable {
        Object objAwait = ListenableFutureKt.await(zzaurVar.zzk(downloadCallback), continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    public static /* synthetic */ Object zzF(zzaur zzaurVar, Continuation continuation) throws Throwable {
        Object objAwait = ListenableFutureKt.await(zzaurVar.zzl(), continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzH(zzaur zzaurVar, Object obj, Continuation continuation) throws Throwable {
        zzauq zzauqVar;
        if (continuation instanceof zzauq) {
            zzauqVar = (zzauq) continuation;
            int i = zzauqVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzauqVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzauqVar = new zzauq(zzaurVar, continuation);
            }
        }
        Object objAwait = zzauqVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzauqVar.zzc;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objAwait);
            ListenableFuture listenableFutureZzm = zzaurVar.zzm(obj);
            zzauqVar.zzc = 1;
            objAwait = ListenableFutureKt.await(listenableFutureZzm, zzauqVar);
            if (objAwait == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objAwait);
        }
        return objAwait;
    }

    public final Object zzC(DownloadCallback downloadCallback, Continuation continuation) {
        return zzD(this, downloadCallback, continuation);
    }

    public final Object zzE(Continuation continuation) {
        return zzF(this, continuation);
    }

    public final Object zzG(Object obj, Continuation continuation) {
        return zzH(this, obj, continuation);
    }

    public final Object zzI(Object obj, StreamingCallback streamingCallback, Continuation continuation) {
        return ListenableFutureKt.await(zzn(obj, streamingCallback), continuation);
    }

    public Object zza(Continuation continuation) {
        return zzB(this, continuation);
    }

    public final Object zzz(Continuation continuation) {
        return zzA(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object zzB(zzaur zzaurVar, Continuation continuation) throws Throwable {
        zzauo zzauoVar;
        if (continuation instanceof zzauo) {
            zzauoVar = (zzauo) continuation;
            int i = zzauoVar.zzc;
            if ((i & Integer.MIN_VALUE) != 0) {
                zzauoVar.zzc = i - Integer.MIN_VALUE;
            } else {
                zzauoVar = new zzauo(zzaurVar, continuation);
            }
        }
        Object objAwait = zzauoVar.zza;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = zzauoVar.zzc;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAwait);
                ListenableFuture listenableFutureZzj = zzaurVar.zzj();
                zzauoVar.zzc = 1;
                objAwait = ListenableFutureKt.await(listenableFutureZzj, zzauoVar);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(objAwait);
            }
            return objAwait;
        } catch (GenAiException e) {
            Log.w("GenAiProcessorKt", "checkFeatureStatus failed", e);
            return Boxing.boxInt(0);
        }
    }
}
