package com.exteragram.messenger.api.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.exteragram.messenger.api.ApiController;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/exteragram/messenger/api/worker/SyncWorker;", "Landroidx/work/CoroutineWorker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "TMessagesProj"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
public final class SyncWorker extends CoroutineWorker {

    /* JADX INFO: renamed from: com.exteragram.messenger.api.worker.SyncWorker$doWork$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(m754k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(m765c = "com.exteragram.messenger.api.worker.SyncWorker", m766f = "SyncWorker.kt", m767i = {}, m768l = {14}, m769m = "doWork", m770n = {}, m771s = {}, m772v = 1)
    public static final class C10101 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C10101(Continuation<? super C10101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SyncWorker.this.doWork(this);
        }
    }

    public SyncWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
        C10101 c10101;
        if (continuation instanceof C10101) {
            c10101 = (C10101) continuation;
            int i = c10101.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10101.label = i - Integer.MIN_VALUE;
            } else {
                c10101 = new C10101(continuation);
            }
        }
        C10101 c101012 = c10101;
        Object objPerformSync$default = c101012.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c101012.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objPerformSync$default);
            ApiController apiController = ApiController.INSTANCE;
            c101012.label = 1;
            objPerformSync$default = ApiController.performSync$default(apiController, null, false, c101012, 3, null);
            if (objPerformSync$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objPerformSync$default);
        }
        if (((Boolean) objPerformSync$default).booleanValue()) {
            return ListenableWorker.Result.success();
        }
        return ListenableWorker.Result.retry();
    }
}
