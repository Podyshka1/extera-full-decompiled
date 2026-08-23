package com.exteragram.messenger.api.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.exteragram.messenger.api.ApiController;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class SyncWorker extends CoroutineWorker {

    /* JADX INFO: renamed from: com.exteragram.messenger.api.worker.SyncWorker$doWork$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @DebugMetadata(m1083c = "com.exteragram.messenger.api.worker.SyncWorker", m1084f = "SyncWorker.kt", m1085l = {14}, m1086m = "doWork", m1087v = 1)
    static final class C10531 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C10531(Continuation<? super C10531> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SyncWorker.this.doWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
        C10531 c10531;
        if (continuation instanceof C10531) {
            c10531 = (C10531) continuation;
            int i = c10531.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10531.label = i - Integer.MIN_VALUE;
            } else {
                c10531 = new C10531(continuation);
            }
        }
        C10531 c105312 = c10531;
        Object objPerformSync$default = c105312.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c105312.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objPerformSync$default);
            ApiController apiController = ApiController.INSTANCE;
            c105312.label = 1;
            objPerformSync$default = ApiController.performSync$default(apiController, null, false, c105312, 3, null);
            if (objPerformSync$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPerformSync$default);
        }
        if (((Boolean) objPerformSync$default).booleanValue()) {
            ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
            Intrinsics.checkNotNull(resultSuccess);
            return resultSuccess;
        }
        ListenableWorker.Result resultRetry = ListenableWorker.Result.retry();
        Intrinsics.checkNotNull(resultRetry);
        return resultRetry;
    }
}
