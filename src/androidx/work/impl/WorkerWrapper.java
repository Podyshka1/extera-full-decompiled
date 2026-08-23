package androidx.work.impl;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ForegroundUpdater;
import androidx.work.InputMerger;
import androidx.work.ListenableFutureKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo$State;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: loaded from: classes.dex */
public final class WorkerWrapper {
    private final Context appContext;
    private final ListenableWorker builderWorker;
    private final Clock clock;
    private final Configuration configuration;
    private final DependencyDao dependencyDao;
    private final ForegroundProcessor foregroundProcessor;
    private final WorkerParameters.RuntimeExtras runtimeExtras;
    private final List tags;
    private final WorkDatabase workDatabase;
    private final String workDescription;
    private final WorkSpec workSpec;
    private final WorkSpecDao workSpecDao;
    private final String workSpecId;
    private final TaskExecutor workTaskExecutor;
    private final CompletableJob workerJob;

    /* JADX INFO: renamed from: androidx.work.impl.WorkerWrapper$runWorker$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C08511 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C08511(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WorkerWrapper.this.runWorker(this);
        }
    }

    public WorkerWrapper(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        WorkSpec workSpec = builder.getWorkSpec();
        this.workSpec = workSpec;
        this.appContext = builder.getAppContext();
        this.workSpecId = workSpec.f76id;
        this.runtimeExtras = builder.getRuntimeExtras();
        this.builderWorker = builder.getWorker();
        this.workTaskExecutor = builder.getWorkTaskExecutor();
        Configuration configuration = builder.getConfiguration();
        this.configuration = configuration;
        this.clock = configuration.getClock();
        this.foregroundProcessor = builder.getForegroundProcessor();
        WorkDatabase workDatabase = builder.getWorkDatabase();
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        List tags = builder.getTags();
        this.tags = tags;
        this.workDescription = createWorkDescription(tags);
        this.workerJob = JobKt__JobKt.Job$default(null, 1, null);
    }

    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    public final WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.workSpec);
    }

    /* JADX INFO: renamed from: androidx.work.impl.WorkerWrapper$launch$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C08501 extends SuspendLambda implements Function2 {
        int label;

        C08501(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return WorkerWrapper.this.new C08501(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C08501) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            final Resolution failed;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            int i2 = 1;
            ListenableWorker.Result result = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CompletableJob completableJob = WorkerWrapper.this.workerJob;
                    WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(WorkerWrapper.this, null);
                    this.label = 1;
                    obj = BuildersKt.withContext(completableJob, workerWrapper$launch$1$resolution$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                failed = (Resolution) obj;
            } catch (WorkerStoppedException e) {
                failed = new Resolution.ResetWorkerStatus(e.getReason());
            } catch (CancellationException unused) {
                failed = new Resolution.Failed(result, i2, objArr3 == true ? 1 : 0);
            } catch (Throwable th) {
                Logger.get().error(WorkerWrapperKt.TAG, "Unexpected error in WorkerWrapper", th);
                failed = new Resolution.Failed(objArr2 == true ? 1 : 0, i2, objArr == true ? 1 : 0);
            }
            WorkDatabase workDatabase = WorkerWrapper.this.workDatabase;
            final WorkerWrapper workerWrapper = WorkerWrapper.this;
            Object objRunInTransaction = workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return WorkerWrapper.C08501.invokeSuspend$lambda$1(failed, workerWrapper);
                }
            });
            Intrinsics.checkNotNullExpressionValue(objRunInTransaction, "runInTransaction(...)");
            return objRunInTransaction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Boolean invokeSuspend$lambda$1(Resolution resolution, WorkerWrapper workerWrapper) {
            boolean zResetWorkerStatus;
            if (resolution instanceof Resolution.Finished) {
                zResetWorkerStatus = workerWrapper.onWorkFinished(((Resolution.Finished) resolution).getResult());
            } else if (resolution instanceof Resolution.Failed) {
                workerWrapper.setFailed(((Resolution.Failed) resolution).getResult());
                zResetWorkerStatus = false;
            } else {
                if (!(resolution instanceof Resolution.ResetWorkerStatus)) {
                    throw new NoWhenBranchMatchedException();
                }
                zResetWorkerStatus = workerWrapper.resetWorkerStatus(((Resolution.ResetWorkerStatus) resolution).getReason());
            }
            return Boolean.valueOf(zResetWorkerStatus);
        }
    }

    public final ListenableFuture launch() {
        return ListenableFutureKt.launchFuture$default(this.workTaskExecutor.getTaskCoroutineDispatcher().plus(JobKt__JobKt.Job$default(null, 1, null)), null, new C08501(null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    static abstract class Resolution {
        public /* synthetic */ Resolution(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final class ResetWorkerStatus extends Resolution {
            private final int reason;

            public ResetWorkerStatus(int i) {
                super(null);
                this.reason = i;
            }

            public /* synthetic */ ResetWorkerStatus(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? -256 : i);
            }

            public final int getReason() {
                return this.reason;
            }
        }

        private Resolution() {
        }

        public static final class Failed extends Resolution {
            private final ListenableWorker.Result result;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(ListenableWorker.Result result) {
                super(null);
                Intrinsics.checkNotNullParameter(result, "result");
                this.result = result;
            }

            public /* synthetic */ Failed(ListenableWorker.Result result, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ListenableWorker.Result.Failure() : result);
            }

            public final ListenableWorker.Result getResult() {
                return this.result;
            }
        }

        public static final class Finished extends Resolution {
            private final ListenableWorker.Result result;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Finished(ListenableWorker.Result result) {
                super(null);
                Intrinsics.checkNotNullParameter(result, "result");
                this.result = result;
            }

            public final ListenableWorker.Result getResult() {
                return this.result;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runWorker(Continuation continuation) {
        C08511 c08511;
        Data dataMerge;
        WorkerParameters workerParameters;
        Consumer workerExecutionExceptionHandler;
        if (continuation instanceof C08511) {
            c08511 = (C08511) continuation;
            int i = c08511.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08511.label = i - Integer.MIN_VALUE;
            } else {
                c08511 = new C08511(continuation);
            }
        }
        Object objWithContext = c08511.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c08511.label;
        int i3 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objWithContext);
                final boolean zIsEnabled = this.configuration.getTracer().isEnabled();
                final String traceTag = this.workSpec.getTraceTag();
                if (zIsEnabled && traceTag != null) {
                    this.configuration.getTracer().beginAsyncSection(traceTag, this.workSpec.hashCode());
                }
                int i4 = 0;
                if (((Boolean) this.workDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return WorkerWrapper.runWorker$lambda$1(this.f$0);
                    }
                })).booleanValue()) {
                    return new Resolution.ResetWorkerStatus(i4, i3, defaultConstructorMarker);
                }
                if (this.workSpec.isPeriodic()) {
                    dataMerge = this.workSpec.input;
                } else {
                    InputMerger inputMergerCreateInputMergerWithDefaultFallback = this.configuration.getInputMergerFactory().createInputMergerWithDefaultFallback(this.workSpec.inputMergerClassName);
                    if (inputMergerCreateInputMergerWithDefaultFallback == null) {
                        String str = WorkerWrapperKt.TAG;
                        Logger.get().error(str, "Could not create Input Merger " + this.workSpec.inputMergerClassName);
                        return new Resolution.Failed(objArr2 == true ? 1 : 0, i3, objArr == true ? 1 : 0);
                    }
                    dataMerge = inputMergerCreateInputMergerWithDefaultFallback.merge(CollectionsKt.plus((Collection) CollectionsKt.listOf(this.workSpec.input), (Iterable) this.workSpecDao.getInputsFromPrerequisites(this.workSpecId)));
                }
                Data data = dataMerge;
                UUID uuidFromString = UUID.fromString(this.workSpecId);
                List list = this.tags;
                WorkerParameters.RuntimeExtras runtimeExtras = this.runtimeExtras;
                WorkSpec workSpec = this.workSpec;
                WorkerParameters workerParameters2 = new WorkerParameters(uuidFromString, data, list, runtimeExtras, workSpec.runAttemptCount, workSpec.getGeneration(), this.configuration.getExecutor(), this.configuration.getWorkerCoroutineContext(), this.workTaskExecutor, this.configuration.getWorkerFactory(), new WorkProgressUpdater(this.workDatabase, this.workTaskExecutor), new WorkForegroundUpdater(this.workDatabase, this.foregroundProcessor, this.workTaskExecutor));
                final ListenableWorker listenableWorkerCreateWorkerWithDefaultFallback = this.builderWorker;
                if (listenableWorkerCreateWorkerWithDefaultFallback == null) {
                    try {
                        listenableWorkerCreateWorkerWithDefaultFallback = this.configuration.getWorkerFactory().createWorkerWithDefaultFallback(this.appContext, this.workSpec.workerClassName, workerParameters2);
                    } catch (Throwable th) {
                        String str2 = WorkerWrapperKt.TAG;
                        Logger.get().error(str2, "Could not create Worker " + this.workSpec.workerClassName);
                        Consumer workerInitializationExceptionHandler = this.configuration.getWorkerInitializationExceptionHandler();
                        if (workerInitializationExceptionHandler != null) {
                            WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters2, th), WorkerWrapperKt.TAG);
                        }
                        return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                    }
                }
                listenableWorkerCreateWorkerWithDefaultFallback.setUsed();
                CoroutineContext.Element element = c08511.getContext().get(Job.Key);
                Intrinsics.checkNotNull(element);
                Job job = (Job) element;
                job.invokeOnCompletion(new Function1() { // from class: androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return WorkerWrapper.runWorker$lambda$4(listenableWorkerCreateWorkerWithDefaultFallback, zIsEnabled, traceTag, this, (Throwable) obj);
                    }
                });
                if (!trySetRunning()) {
                    return new Resolution.ResetWorkerStatus(0, 1, null);
                }
                int i5 = 0;
                int i6 = 1;
                DefaultConstructorMarker defaultConstructorMarker2 = null;
                if (job.isCancelled()) {
                    return new Resolution.ResetWorkerStatus(i5, i6, defaultConstructorMarker2);
                }
                ForegroundUpdater foregroundUpdater = workerParameters2.getForegroundUpdater();
                Intrinsics.checkNotNullExpressionValue(foregroundUpdater, "getForegroundUpdater(...)");
                Executor mainThreadExecutor = this.workTaskExecutor.getMainThreadExecutor();
                Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor(...)");
                CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(mainThreadExecutor);
                try {
                    WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(this, listenableWorkerCreateWorkerWithDefaultFallback, foregroundUpdater, null);
                    c08511.L$0 = workerParameters2;
                    c08511.label = 1;
                    objWithContext = BuildersKt.withContext(coroutineDispatcherFrom, workerWrapper$runWorker$result$1, c08511);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    workerParameters = workerParameters2;
                } catch (Throwable th2) {
                    th = th2;
                    workerParameters = workerParameters2;
                    String str3 = WorkerWrapperKt.TAG;
                    Logger.get().error(str3, this.workDescription + " failed because it threw an exception/error", th);
                    workerExecutionExceptionHandler = this.configuration.getWorkerExecutionExceptionHandler();
                    if (workerExecutionExceptionHandler != null) {
                    }
                    return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                workerParameters = (WorkerParameters) c08511.L$0;
                try {
                    ResultKt.throwOnFailure(objWithContext);
                } catch (Throwable th3) {
                    th = th3;
                    String str32 = WorkerWrapperKt.TAG;
                    Logger.get().error(str32, this.workDescription + " failed because it threw an exception/error", th);
                    workerExecutionExceptionHandler = this.configuration.getWorkerExecutionExceptionHandler();
                    if (workerExecutionExceptionHandler != null) {
                        WorkerExceptionUtilsKt.safeAccept(workerExecutionExceptionHandler, new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters, th), WorkerWrapperKt.TAG);
                    }
                    return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                }
            }
            ListenableWorker.Result result = (ListenableWorker.Result) objWithContext;
            Intrinsics.checkNotNull(result);
            return new Resolution.Finished(result);
        } catch (CancellationException e) {
            String str4 = WorkerWrapperKt.TAG;
            Logger.get().info(str4, this.workDescription + " was cancelled", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean runWorker$lambda$1(WorkerWrapper workerWrapper) {
        WorkSpec workSpec = workerWrapper.workSpec;
        if (workSpec.state != WorkInfo$State.ENQUEUED) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().debug(str, workerWrapper.workSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
            return Boolean.TRUE;
        }
        if ((workSpec.isPeriodic() || workerWrapper.workSpec.isBackedOff()) && workerWrapper.clock.currentTimeMillis() < workerWrapper.workSpec.calculateNextRunTime()) {
            Logger.get().debug(WorkerWrapperKt.TAG, "Delaying execution for " + workerWrapper.workSpec.workerClassName + " because it is being executed before schedule.");
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runWorker$lambda$4(ListenableWorker listenableWorker, boolean z, String str, WorkerWrapper workerWrapper, Throwable th) {
        if (th instanceof WorkerStoppedException) {
            listenableWorker.stop(((WorkerStoppedException) th).getReason());
        }
        if (z && str != null) {
            workerWrapper.configuration.getTracer().endAsyncSection(str, workerWrapper.workSpec.hashCode());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean onWorkFinished(ListenableWorker.Result result) {
        WorkInfo$State state = this.workSpecDao.getState(this.workSpecId);
        this.workDatabase.workProgressDao().delete(this.workSpecId);
        if (state == null) {
            return false;
        }
        if (state == WorkInfo$State.RUNNING) {
            return handleResult(result);
        }
        if (state.isFinished()) {
            return false;
        }
        return reschedule(-512);
    }

    public final void interrupt(int i) {
        this.workerJob.cancel(new WorkerStoppedException(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean resetWorkerStatus(int i) {
        if (Intrinsics.areEqual(this.workSpec.getBackOffOnSystemInterruptions(), Boolean.TRUE)) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().debug(str, "Worker " + this.workSpec.workerClassName + " was interrupted. Backing off.");
            reschedule(i);
            return true;
        }
        WorkInfo$State state = this.workSpecDao.getState(this.workSpecId);
        if (state == null || state.isFinished()) {
            String str2 = WorkerWrapperKt.TAG;
            Logger.get().debug(str2, "Status for " + this.workSpecId + " is " + state + " ; not doing any work");
            return false;
        }
        String str3 = WorkerWrapperKt.TAG;
        Logger.get().debug(str3, "Status for " + this.workSpecId + " is " + state + "; not doing any work and rescheduling for later execution");
        this.workSpecDao.setState(WorkInfo$State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setStopReason(this.workSpecId, i);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return true;
    }

    private final boolean handleResult(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().info(str, "Worker result SUCCESS for " + this.workDescription);
            return this.workSpec.isPeriodic() ? resetPeriodic() : setSucceeded(result);
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            String str2 = WorkerWrapperKt.TAG;
            Logger.get().info(str2, "Worker result RETRY for " + this.workDescription);
            return reschedule(-256);
        }
        String str3 = WorkerWrapperKt.TAG;
        Logger.get().info(str3, "Worker result FAILURE for " + this.workDescription);
        if (this.workSpec.isPeriodic()) {
            return resetPeriodic();
        }
        if (result == null) {
            result = new ListenableWorker.Result.Failure();
        }
        return setFailed(result);
    }

    private final boolean trySetRunning() {
        Object objRunInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: androidx.work.impl.WorkerWrapper$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WorkerWrapper.trySetRunning$lambda$13(this.f$0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(objRunInTransaction, "runInTransaction(...)");
        return ((Boolean) objRunInTransaction).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean trySetRunning$lambda$13(WorkerWrapper workerWrapper) {
        boolean z;
        if (workerWrapper.workSpecDao.getState(workerWrapper.workSpecId) == WorkInfo$State.ENQUEUED) {
            workerWrapper.workSpecDao.setState(WorkInfo$State.RUNNING, workerWrapper.workSpecId);
            workerWrapper.workSpecDao.incrementWorkSpecRunAttemptCount(workerWrapper.workSpecId);
            workerWrapper.workSpecDao.setStopReason(workerWrapper.workSpecId, -256);
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public final boolean setFailed(ListenableWorker.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        iterativelyFailWorkAndDependents(this.workSpecId);
        Data outputData = ((ListenableWorker.Result.Failure) result).getOutputData();
        Intrinsics.checkNotNullExpressionValue(outputData, "getOutputData(...)");
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        return false;
    }

    private final void iterativelyFailWorkAndDependents(String str) {
        List listMutableListOf = CollectionsKt.mutableListOf(str);
        while (!listMutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(listMutableListOf);
            if (this.workSpecDao.getState(str2) != WorkInfo$State.CANCELLED) {
                this.workSpecDao.setState(WorkInfo$State.FAILED, str2);
            }
            listMutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    private final boolean reschedule(int i) {
        this.workSpecDao.setState(WorkInfo$State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        this.workSpecDao.setStopReason(this.workSpecId, i);
        return true;
    }

    private final boolean resetPeriodic() {
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.setState(WorkInfo$State.ENQUEUED, this.workSpecId);
        this.workSpecDao.resetWorkSpecRunAttemptCount(this.workSpecId);
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.incrementPeriodCount(this.workSpecId);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return false;
    }

    private final boolean setSucceeded(ListenableWorker.Result result) {
        this.workSpecDao.setState(WorkInfo$State.SUCCEEDED, this.workSpecId);
        Intrinsics.checkNotNull(result, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success");
        Data outputData = ((ListenableWorker.Result.Success) result).getOutputData();
        Intrinsics.checkNotNullExpressionValue(outputData, "getOutputData(...)");
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        for (String str : this.dependencyDao.getDependentWorkIds(this.workSpecId)) {
            if (this.workSpecDao.getState(str) == WorkInfo$State.BLOCKED && this.dependencyDao.hasCompletedAllPrerequisites(str)) {
                String str2 = WorkerWrapperKt.TAG;
                Logger.get().info(str2, "Setting status to enqueued for " + str);
                this.workSpecDao.setState(WorkInfo$State.ENQUEUED, str);
                this.workSpecDao.setLastEnqueueTime(str, jCurrentTimeMillis);
            }
        }
        return false;
    }

    private final String createWorkDescription(List list) {
        return "Work [ id=" + this.workSpecId + ", tags={ " + CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null) + " } ]";
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class Builder {
        private final Context appContext;
        private final Configuration configuration;
        private final ForegroundProcessor foregroundProcessor;
        private WorkerParameters.RuntimeExtras runtimeExtras;
        private final List tags;
        private final WorkDatabase workDatabase;
        private final WorkSpec workSpec;
        private final TaskExecutor workTaskExecutor;
        private ListenableWorker worker;

        public Builder(Context context, Configuration configuration, TaskExecutor workTaskExecutor, ForegroundProcessor foregroundProcessor, WorkDatabase workDatabase, WorkSpec workSpec, List tags) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
            Intrinsics.checkNotNullParameter(foregroundProcessor, "foregroundProcessor");
            Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
            Intrinsics.checkNotNullParameter(workSpec, "workSpec");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.configuration = configuration;
            this.workTaskExecutor = workTaskExecutor;
            this.foregroundProcessor = foregroundProcessor;
            this.workDatabase = workDatabase;
            this.workSpec = workSpec;
            this.tags = tags;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            this.appContext = applicationContext;
            this.runtimeExtras = new WorkerParameters.RuntimeExtras();
        }

        public final Configuration getConfiguration() {
            return this.configuration;
        }

        public final TaskExecutor getWorkTaskExecutor() {
            return this.workTaskExecutor;
        }

        public final ForegroundProcessor getForegroundProcessor() {
            return this.foregroundProcessor;
        }

        public final WorkDatabase getWorkDatabase() {
            return this.workDatabase;
        }

        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        public final List getTags() {
            return this.tags;
        }

        public final Context getAppContext() {
            return this.appContext;
        }

        public final ListenableWorker getWorker() {
            return this.worker;
        }

        public final WorkerParameters.RuntimeExtras getRuntimeExtras() {
            return this.runtimeExtras;
        }

        public final Builder withRuntimeExtras(WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.runtimeExtras = runtimeExtras;
            }
            return this;
        }

        public final WorkerWrapper build() {
            return new WorkerWrapper(this);
        }
    }
}
