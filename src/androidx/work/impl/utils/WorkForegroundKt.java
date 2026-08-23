package androidx.work.impl.utils;

import android.content.Context;
import android.os.Build;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WorkForegroundKt {
    private static final String TAG;

    public static final Object workForeground(Context context, WorkSpec workSpec, ListenableWorker listenableWorker, ForegroundUpdater foregroundUpdater, TaskExecutor taskExecutor, Continuation continuation) {
        if (!workSpec.expedited || Build.VERSION.SDK_INT >= 31) {
            return Unit.INSTANCE;
        }
        Executor mainThreadExecutor = taskExecutor.getMainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor(...)");
        Object objWithContext = BuildersKt.withContext(ExecutorsKt.from(mainThreadExecutor), new C08712(listenableWorker, workSpec, foregroundUpdater, context, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.work.impl.utils.WorkForegroundKt$workForeground$2 */
    static final class C08712 extends SuspendLambda implements Function2 {
        final /* synthetic */ Context $context;
        final /* synthetic */ ForegroundUpdater $foregroundUpdater;
        final /* synthetic */ WorkSpec $spec;
        final /* synthetic */ ListenableWorker $worker;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08712(ListenableWorker listenableWorker, WorkSpec workSpec, ForegroundUpdater foregroundUpdater, Context context, Continuation continuation) {
            super(2, continuation);
            this.$worker = listenableWorker;
            this.$spec = workSpec;
            this.$foregroundUpdater = foregroundUpdater;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C08712(this.$worker, this.$spec, this.$foregroundUpdater, this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C08712) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ListenableFuture foregroundInfoAsync = this.$worker.getForegroundInfoAsync();
                Intrinsics.checkNotNullExpressionValue(foregroundInfoAsync, "getForegroundInfoAsync(...)");
                ListenableWorker listenableWorker = this.$worker;
                this.label = 1;
                obj = WorkerWrapperKt.awaitWithin(foregroundInfoAsync, listenableWorker, this);
                if (obj != coroutine_suspended) {
                }
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            ForegroundInfo foregroundInfo = (ForegroundInfo) obj;
            if (foregroundInfo != null) {
                String str = WorkForegroundKt.TAG;
                WorkSpec workSpec = this.$spec;
                Logger.get().debug(str, "Updating notification for " + workSpec.workerClassName);
                ListenableFuture foregroundAsync = this.$foregroundUpdater.setForegroundAsync(this.$context, this.$worker.getId(), foregroundInfo);
                Intrinsics.checkNotNullExpressionValue(foregroundAsync, "setForegroundAsync(...)");
                this.label = 2;
                Object objAwait = ListenableFutureKt.await(foregroundAsync, this);
                return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
            }
            throw new IllegalStateException("Worker was marked important (" + this.$spec.workerClassName + ") but did not provide ForegroundInfo");
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkForegroundRunnable");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }
}
