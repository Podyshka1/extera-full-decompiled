package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.util.Consumer;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {
    private final WorkerParameters workerParameters;

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1 */
    static final class C08741 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C08741(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.runWorker(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1 */
    static final class C08761 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C08761(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2 */
    static final class C08732 extends SuspendLambda implements Function2 {
        int label;

        C08732(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ConstraintTrackingWorker.this.new C08732(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C08732) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            this.label = 1;
            Object obj2 = constraintTrackingWorker.setupAndRunConstraintTrackingWork(this);
            return obj2 == coroutine_suspended ? coroutine_suspended : obj2;
        }
    }

    @Override // androidx.work.CoroutineWorker
    public Object doWork(Continuation continuation) {
        Executor backgroundExecutor = getBackgroundExecutor();
        Intrinsics.checkNotNullExpressionValue(backgroundExecutor, "getBackgroundExecutor(...)");
        return BuildersKt.withContext(ExecutorsKt.from(backgroundExecutor), new C08732(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.work.ListenableWorker] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object setupAndRunConstraintTrackingWork(Continuation continuation) {
        C08761 c08761;
        int stopReason;
        if (continuation instanceof C08761) {
            c08761 = (C08761) continuation;
            int i = c08761.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08761.label = i - Integer.MIN_VALUE;
            } else {
                c08761 = new C08761(continuation);
            }
        }
        C08761 c087612 = c08761;
        Object objWithContext = c087612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = c087612.label;
        try {
            if (r2 == 0) {
                ResultKt.throwOnFailure(objWithContext);
                String string = getInputData().getString("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                if (string == null || string.length() == 0) {
                    Logger.get().error(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                    ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
                    return resultFailure;
                }
                WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
                Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(...)");
                WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
                String string2 = getId().toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                WorkSpec workSpec = workSpecDao.getWorkSpec(string2);
                if (workSpec == null) {
                    ListenableWorker.Result resultFailure2 = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure2, "failure(...)");
                    return resultFailure2;
                }
                Trackers trackers = workManagerImpl.getTrackers();
                Intrinsics.checkNotNullExpressionValue(trackers, "getTrackers(...)");
                WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(trackers);
                if (!workConstraintsTracker.areAllConstraintsMet(workSpec)) {
                    String str = ConstraintTrackingWorkerKt.TAG;
                    Logger.get().debug(str, "Constraints not met for delegate " + string + ". Requesting retry.");
                    ListenableWorker.Result resultRetry = ListenableWorker.Result.retry();
                    Intrinsics.checkNotNullExpressionValue(resultRetry, "retry(...)");
                    return resultRetry;
                }
                String str2 = ConstraintTrackingWorkerKt.TAG;
                Logger.get().debug(str2, "Constraints met for delegate " + string);
                try {
                    WorkerFactory workerFactory = getWorkerFactory();
                    Context applicationContext = getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    ListenableWorker listenableWorkerCreateWorkerWithDefaultFallback = workerFactory.createWorkerWithDefaultFallback(applicationContext, string, this.workerParameters);
                    Executor mainThreadExecutor = this.workerParameters.getTaskExecutor().getMainThreadExecutor();
                    Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor(...)");
                    CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(mainThreadExecutor);
                    C08775 c08775 = new C08775(listenableWorkerCreateWorkerWithDefaultFallback, workConstraintsTracker, workSpec, null);
                    c087612.L$0 = listenableWorkerCreateWorkerWithDefaultFallback;
                    c087612.label = 1;
                    objWithContext = BuildersKt.withContext(coroutineDispatcherFrom, c08775, c087612);
                    r2 = listenableWorkerCreateWorkerWithDefaultFallback;
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Throwable th) {
                    Logger.get().debug(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                    Consumer workerInitializationExceptionHandler = workManagerImpl.getConfiguration().getWorkerInitializationExceptionHandler();
                    if (workerInitializationExceptionHandler != null) {
                        WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(string, this.workerParameters, th), ConstraintTrackingWorkerKt.TAG);
                    }
                    ListenableWorker.Result resultFailure3 = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure3, "failure(...)");
                    return resultFailure3;
                }
            } else {
                if (r2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ListenableWorker listenableWorker = (ListenableWorker) c087612.L$0;
                ResultKt.throwOnFailure(objWithContext);
                r2 = listenableWorker;
            }
            return (ListenableWorker.Result) objWithContext;
        } catch (CancellationException e) {
            if (isStopped() || (e instanceof ConstraintUnsatisfiedException)) {
                if (Build.VERSION.SDK_INT < 31) {
                    stopReason = -512;
                } else if (isStopped()) {
                    stopReason = getStopReason();
                } else {
                    if (!(e instanceof ConstraintUnsatisfiedException)) {
                        throw new IllegalStateException("Unreachable");
                    }
                    stopReason = ((ConstraintUnsatisfiedException) e).getStopReason();
                }
                r2.stop(stopReason);
            }
            if (!(e instanceof ConstraintUnsatisfiedException)) {
                throw e;
            }
            ListenableWorker.Result resultRetry2 = ListenableWorker.Result.retry();
            Intrinsics.checkNotNull(resultRetry2);
            return resultRetry2;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5 */
    static final class C08775 extends SuspendLambda implements Function2 {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08775(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ConstraintTrackingWorker.this.new C08775(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C08775) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            ListenableWorker listenableWorker = this.$delegate;
            WorkConstraintsTracker workConstraintsTracker = this.$workConstraintsTracker;
            WorkSpec workSpec = this.$workSpec;
            this.label = 1;
            Object objRunWorker = constraintTrackingWorker.runWorker(listenableWorker, workConstraintsTracker, workSpec, this);
            return objRunWorker == coroutine_suspended ? coroutine_suspended : objRunWorker;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runWorker(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation continuation) {
        C08741 c08741;
        if (continuation instanceof C08741) {
            c08741 = (C08741) continuation;
            int i = c08741.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08741.label = i - Integer.MIN_VALUE;
            } else {
                c08741 = new C08741(continuation);
            }
        }
        Object objCoroutineScope = c08741.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c08741.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objCoroutineScope);
            C08752 c08752 = new C08752(listenableWorker, workConstraintsTracker, workSpec, null);
            c08741.label = 1;
            objCoroutineScope = CoroutineScopeKt.coroutineScope(c08752, c08741);
            if (objCoroutineScope == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objCoroutineScope);
        }
        Intrinsics.checkNotNullExpressionValue(objCoroutineScope, "coroutineScope(...)");
        return objCoroutineScope;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2 */
    static final class C08752 extends SuspendLambda implements Function2 {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08752(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C08752 c08752 = new C08752(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
            c08752.L$0 = obj;
            return c08752;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C08752) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00d9  */
        /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.Job] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            AtomicInteger atomicInteger;
            ListenableFuture listenableFuture;
            Job job;
            CancellationException cancellationException;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r1 = this.label;
            try {
                if (r1 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    AtomicInteger atomicInteger2 = new AtomicInteger(-256);
                    ListenableFuture listenableFutureStartWork = this.$delegate.startWork();
                    Intrinsics.checkNotNullExpressionValue(listenableFutureStartWork, "startWork(...)");
                    Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1(this.$workConstraintsTracker, this.$workSpec, atomicInteger2, listenableFutureStartWork, null), 3, null);
                    try {
                        this.L$0 = atomicInteger2;
                        this.L$1 = listenableFutureStartWork;
                        this.L$2 = jobLaunch$default;
                        this.label = 1;
                        Object objAwait = ListenableFutureKt.await(listenableFutureStartWork, this);
                        if (objAwait == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        listenableFuture = listenableFutureStartWork;
                        obj = objAwait;
                        atomicInteger = atomicInteger2;
                        job = jobLaunch$default;
                    } catch (CancellationException e) {
                        e = e;
                        atomicInteger = atomicInteger2;
                        listenableFuture = listenableFutureStartWork;
                        cancellationException = e;
                        String str = ConstraintTrackingWorkerKt.TAG;
                        ListenableWorker listenableWorker = this.$delegate;
                        Logger.get().debug(str, "Delegated worker " + listenableWorker.getClass() + " was cancelled", cancellationException);
                        if (atomicInteger.get() == -256) {
                        }
                        if (listenableFuture.isCancelled()) {
                            throw cancellationException;
                        }
                        throw cancellationException;
                    } catch (Throwable th2) {
                        th = th2;
                        String str2 = ConstraintTrackingWorkerKt.TAG;
                        ListenableWorker listenableWorker2 = this.$delegate;
                        Logger.get().debug(str2, "Delegated worker " + listenableWorker2.getClass() + " threw exception in startWork.", th);
                        throw th;
                    }
                } else {
                    if (r1 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    job = (Job) this.L$2;
                    listenableFuture = (ListenableFuture) this.L$1;
                    atomicInteger = (AtomicInteger) this.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (CancellationException e2) {
                        e = e2;
                        cancellationException = e;
                        String str3 = ConstraintTrackingWorkerKt.TAG;
                        ListenableWorker listenableWorker3 = this.$delegate;
                        Logger.get().debug(str3, "Delegated worker " + listenableWorker3.getClass() + " was cancelled", cancellationException);
                        boolean z = atomicInteger.get() == -256;
                        if (listenableFuture.isCancelled() || !z) {
                            throw cancellationException;
                        }
                        throw new ConstraintUnsatisfiedException(atomicInteger.get());
                    } catch (Throwable th3) {
                        th = th3;
                        String str22 = ConstraintTrackingWorkerKt.TAG;
                        ListenableWorker listenableWorker22 = this.$delegate;
                        Logger.get().debug(str22, "Delegated worker " + listenableWorker22.getClass() + " threw exception in startWork.", th);
                        throw th;
                    }
                }
                ListenableWorker.Result result = (ListenableWorker.Result) obj;
                Job.DefaultImpls.cancel$default(job, null, 1, null);
                return result;
            } catch (Throwable th4) {
                Job.DefaultImpls.cancel$default(r1, null, 1, null);
                throw th4;
            }
        }
    }

    private static final class ConstraintUnsatisfiedException extends CancellationException {
        private final int stopReason;

        public ConstraintUnsatisfiedException(int i) {
            this.stopReason = i;
        }

        public final int getStopReason() {
            return this.stopReason;
        }
    }
}
