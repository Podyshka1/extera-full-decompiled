package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.util.Consumer;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\tH\u0082@¢\u0006\u0002\u0010\nJ&\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/CoroutineWorker;", "appContext", "Landroid/content/Context;", "workerParameters", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setupAndRunConstraintTrackingWork", "runWorker", "delegate", "Landroidx/work/ListenableWorker;", "workConstraintsTracker", "Landroidx/work/impl/constraints/WorkConstraintsTracker;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "(Landroidx/work/ListenableWorker;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ConstraintUnsatisfiedException", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConstraintTrackingWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,168:1\n29#2:169\n19#2:170\n19#2:171\n19#2:172\n*S KotlinDebug\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker\n*L\n65#1:169\n75#1:170\n78#1:171\n87#1:172\n*E\n"})
public final class ConstraintTrackingWorker extends CoroutineWorker {
    private final WorkerParameters workerParameters;

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.work.impl.workers.ConstraintTrackingWorker", m766f = "ConstraintTrackingWorker.kt", m767i = {}, m768l = {125}, m769m = "runWorker", m770n = {}, m771s = {})
    public static final class C08641 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C08641(Continuation<? super C08641> continuation) {
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
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.work.impl.workers.ConstraintTrackingWorker", m766f = "ConstraintTrackingWorker.kt", m767i = {0}, m768l = {97}, m769m = "setupAndRunConstraintTrackingWork", m770n = {"delegate"}, m771s = {"L$0"})
    public static final class C08661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C08661(Continuation<? super C08661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork(this);
        }
    }

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.workerParameters = workerParameters;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2", m766f = "ConstraintTrackingWorker.kt", m767i = {}, m768l = {58}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C08632 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        int label;

        public C08632(Continuation<? super C08632> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ConstraintTrackingWorker.this.new C08632(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((C08632) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            this.label = 1;
            Object obj2 = constraintTrackingWorker.setupAndRunConstraintTrackingWork(this);
            return obj2 == coroutine_suspended ? coroutine_suspended : obj2;
        }
    }

    @Override // androidx.work.CoroutineWorker
    public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
        return BuildersKt.withContext(ExecutorsKt.from(getBackgroundExecutor()), new C08632(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object setupAndRunConstraintTrackingWork(Continuation<? super ListenableWorker.Result> continuation) {
        C08661 c08661;
        ConstraintTrackingWorker constraintTrackingWorker;
        CancellationException cancellationException;
        ListenableWorker listenableWorker;
        CoroutineDispatcher coroutineDispatcherFrom;
        int stopReason;
        if (continuation instanceof C08661) {
            c08661 = (C08661) continuation;
            int i = c08661.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08661.label = i - Integer.MIN_VALUE;
            } else {
                c08661 = new C08661(continuation);
            }
        }
        Object objWithContext = c08661.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c08661.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            String string = getInputData().getString("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            if (string == null || string.length() == 0) {
                Logger.get().error(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                return ListenableWorker.Result.failure();
            }
            WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
            WorkSpec workSpec = workManagerImpl.getWorkDatabase().workSpecDao().getWorkSpec(getId().toString());
            if (workSpec == null) {
                return ListenableWorker.Result.failure();
            }
            WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(workManagerImpl.getTrackers());
            if (!workConstraintsTracker.areAllConstraintsMet(workSpec)) {
                String str = ConstraintTrackingWorkerKt.TAG;
                Logger.get().debug(str, "Constraints not met for delegate " + string + ". Requesting retry.");
                return ListenableWorker.Result.retry();
            }
            String str2 = ConstraintTrackingWorkerKt.TAG;
            Logger.get().debug(str2, "Constraints met for delegate " + string);
            try {
                ListenableWorker listenableWorkerCreateWorkerWithDefaultFallback = getWorkerFactory().createWorkerWithDefaultFallback(getApplicationContext(), string, this.workerParameters);
                try {
                    coroutineDispatcherFrom = ExecutorsKt.from(this.workerParameters.getTaskExecutor().getMainThreadExecutor());
                    constraintTrackingWorker = this;
                } catch (CancellationException e) {
                    e = e;
                    constraintTrackingWorker = this;
                }
                try {
                    C08675 c08675 = constraintTrackingWorker.new C08675(listenableWorkerCreateWorkerWithDefaultFallback, workConstraintsTracker, workSpec, null);
                    c08661.L$0 = listenableWorkerCreateWorkerWithDefaultFallback;
                    c08661.label = 1;
                    objWithContext = BuildersKt.withContext(coroutineDispatcherFrom, c08675, c08661);
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    listenableWorker = listenableWorkerCreateWorkerWithDefaultFallback;
                    return (ListenableWorker.Result) objWithContext;
                } catch (CancellationException e2) {
                    e = e2;
                    cancellationException = e;
                    listenableWorker = listenableWorkerCreateWorkerWithDefaultFallback;
                }
            } catch (Throwable th) {
                Logger.get().debug(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = workManagerImpl.getConfiguration().getWorkerInitializationExceptionHandler();
                if (workerInitializationExceptionHandler != null) {
                    WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(string, this.workerParameters, th), ConstraintTrackingWorkerKt.TAG);
                }
                return ListenableWorker.Result.failure();
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            listenableWorker = (ListenableWorker) c08661.L$0;
            try {
                ResultKt.throwOnFailure(objWithContext);
                constraintTrackingWorker = this;
                try {
                    return (ListenableWorker.Result) objWithContext;
                } catch (CancellationException e3) {
                    cancellationException = e3;
                }
            } catch (CancellationException e4) {
                cancellationException = e4;
                constraintTrackingWorker = this;
            }
        }
        if (constraintTrackingWorker.isStopped() || (cancellationException instanceof ConstraintUnsatisfiedException)) {
            if (Build.VERSION.SDK_INT < 31) {
                stopReason = -512;
            } else if (constraintTrackingWorker.isStopped()) {
                stopReason = constraintTrackingWorker.getStopReason();
            } else {
                if (!(cancellationException instanceof ConstraintUnsatisfiedException)) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("Unreachable");
                    return null;
                }
                stopReason = ((ConstraintUnsatisfiedException) cancellationException).getStopReason();
            }
            listenableWorker.stop(stopReason);
        }
        if (cancellationException instanceof ConstraintUnsatisfiedException) {
            return ListenableWorker.Result.retry();
        }
        throw cancellationException;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5", m766f = "ConstraintTrackingWorker.kt", m767i = {}, m768l = {98}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C08675 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C08675(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super C08675> continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ConstraintTrackingWorker.this.new C08675(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((C08675) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
    public final Object runWorker(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super ListenableWorker.Result> continuation) {
        C08641 c08641;
        if (continuation instanceof C08641) {
            c08641 = (C08641) continuation;
            int i = c08641.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08641.label = i - Integer.MIN_VALUE;
            } else {
                c08641 = new C08641(continuation);
            }
        }
        Object objCoroutineScope = c08641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c08641.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objCoroutineScope);
            C08652 c08652 = new C08652(listenableWorker, workConstraintsTracker, workSpec, null);
            c08641.label = 1;
            objCoroutineScope = CoroutineScopeKt.coroutineScope(c08652, c08641);
            if (objCoroutineScope == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(objCoroutineScope);
        }
        return objCoroutineScope;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2 */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2", m766f = "ConstraintTrackingWorker.kt", m767i = {0, 0, 0}, m768l = {134}, m769m = "invokeSuspend", m770n = {"atomicReason", "future", "constraintTrackingJob"}, m771s = {"L$0", "L$1", "L$2"})
    @SourceDebugExtension({"SMAP\nConstraintTrackingWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,168:1\n22#2:169\n22#2:170\n*S KotlinDebug\n*F\n+ 1 ConstraintTrackingWorker.kt\nandroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2\n*L\n137#1:169\n144#1:170\n*E\n"})
    public static final class C08652 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C08652(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super C08652> continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08652 c08652 = new C08652(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
            c08652.L$0 = obj;
            return c08652;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((C08652) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
        /* JADX WARN: Type inference failed for: r1v0, types: [int, kotlinx.coroutines.Job] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            AtomicInteger atomicInteger;
            ListenableFuture<ListenableWorker.Result> listenableFuture;
            Job job;
            CancellationException cancellationException;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r1 = this.label;
            try {
                if (r1 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    AtomicInteger atomicInteger2 = new AtomicInteger(-256);
                    ListenableFuture<ListenableWorker.Result> listenableFutureStartWork = this.$delegate.startWork();
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
                        boolean z = atomicInteger.get() == -256;
                        if (listenableFuture.isCancelled() || !z) {
                            throw cancellationException;
                        }
                        throw new ConstraintUnsatisfiedException(atomicInteger.get());
                    } catch (Throwable th2) {
                        th = th2;
                        String str2 = ConstraintTrackingWorkerKt.TAG;
                        ListenableWorker listenableWorker2 = this.$delegate;
                        Logger.get().debug(str2, "Delegated worker " + listenableWorker2.getClass() + " threw exception in startWork.", th);
                        throw th;
                    }
                } else {
                    if (r1 != 1) {
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
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
                        if (atomicInteger.get() == -256) {
                        }
                        if (listenableFuture.isCancelled()) {
                            throw cancellationException;
                        }
                        throw cancellationException;
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "stopReason", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "getStopReason", "()I", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConstraintUnsatisfiedException extends CancellationException {
        private final int stopReason;

        public ConstraintUnsatisfiedException(int i) {
            this.stopReason = i;
        }

        public final int getStopReason() {
            return this.stopReason;
        }
    }
}
