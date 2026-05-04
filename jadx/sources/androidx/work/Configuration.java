package androidx.work;

import android.os.Build;
import androidx.core.util.Consumer;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
public final class Configuration {
    public static final Companion Companion = new Companion(null);
    private final Clock clock;
    private final int contentUriTriggerWorkersLimit;
    private final String defaultProcessName;
    private final Executor executor;
    private final Consumer initializationExceptionHandler;
    private final InputMergerFactory inputMergerFactory;
    private final boolean isMarkingJobsAsImportantWhileForeground;
    private final boolean isUsingDefaultTaskExecutor;
    private final int maxJobSchedulerId;
    private final int maxSchedulerLimit;
    private final int minJobSchedulerId;
    private final int minimumLoggingLevel;
    private final long remoteSessionTimeoutMillis;
    private final RunnableScheduler runnableScheduler;
    private final Consumer schedulingExceptionHandler;
    private final Executor taskExecutor;
    private final Tracer tracer;
    private final CoroutineContext workerCoroutineContext;
    private final Consumer workerExecutionExceptionHandler;
    private final WorkerFactory workerFactory;
    private final Consumer workerInitializationExceptionHandler;

    public Configuration(Builder builder) {
        int maxSchedulerLimit$work_runtime_release;
        Intrinsics.checkNotNullParameter(builder, "builder");
        CoroutineContext workerContext$work_runtime_release = builder.getWorkerContext$work_runtime_release();
        Executor executor$work_runtime_release = builder.getExecutor$work_runtime_release();
        if (executor$work_runtime_release == null) {
            executor$work_runtime_release = workerContext$work_runtime_release != null ? ConfigurationKt.asExecutor(workerContext$work_runtime_release) : null;
            if (executor$work_runtime_release == null) {
                executor$work_runtime_release = ConfigurationKt.createDefaultExecutor(false);
            }
        }
        this.executor = executor$work_runtime_release;
        this.workerCoroutineContext = workerContext$work_runtime_release == null ? builder.getExecutor$work_runtime_release() != null ? ExecutorsKt.from(executor$work_runtime_release) : Dispatchers.getDefault() : workerContext$work_runtime_release;
        this.isUsingDefaultTaskExecutor = builder.getTaskExecutor$work_runtime_release() == null;
        Executor taskExecutor$work_runtime_release = builder.getTaskExecutor$work_runtime_release();
        this.taskExecutor = taskExecutor$work_runtime_release == null ? ConfigurationKt.createDefaultExecutor(true) : taskExecutor$work_runtime_release;
        Clock clock$work_runtime_release = builder.getClock$work_runtime_release();
        this.clock = clock$work_runtime_release == null ? new SystemClock() : clock$work_runtime_release;
        WorkerFactory workerFactory$work_runtime_release = builder.getWorkerFactory$work_runtime_release();
        this.workerFactory = workerFactory$work_runtime_release == null ? DefaultWorkerFactory.INSTANCE : workerFactory$work_runtime_release;
        InputMergerFactory inputMergerFactory$work_runtime_release = builder.getInputMergerFactory$work_runtime_release();
        this.inputMergerFactory = inputMergerFactory$work_runtime_release == null ? NoOpInputMergerFactory.INSTANCE : inputMergerFactory$work_runtime_release;
        RunnableScheduler runnableScheduler$work_runtime_release = builder.getRunnableScheduler$work_runtime_release();
        this.runnableScheduler = runnableScheduler$work_runtime_release == null ? new DefaultRunnableScheduler() : runnableScheduler$work_runtime_release;
        this.minimumLoggingLevel = builder.getLoggingLevel$work_runtime_release();
        this.minJobSchedulerId = builder.getMinJobSchedulerId$work_runtime_release();
        this.maxJobSchedulerId = builder.getMaxJobSchedulerId$work_runtime_release();
        if (Build.VERSION.SDK_INT == 23) {
            maxSchedulerLimit$work_runtime_release = builder.getMaxSchedulerLimit$work_runtime_release() / 2;
        } else {
            maxSchedulerLimit$work_runtime_release = builder.getMaxSchedulerLimit$work_runtime_release();
        }
        this.maxSchedulerLimit = maxSchedulerLimit$work_runtime_release;
        this.initializationExceptionHandler = builder.getInitializationExceptionHandler$work_runtime_release();
        this.schedulingExceptionHandler = builder.getSchedulingExceptionHandler$work_runtime_release();
        this.workerInitializationExceptionHandler = builder.getWorkerInitializationExceptionHandler$work_runtime_release();
        this.workerExecutionExceptionHandler = builder.getWorkerExecutionExceptionHandler$work_runtime_release();
        this.defaultProcessName = builder.getDefaultProcessName$work_runtime_release();
        this.remoteSessionTimeoutMillis = builder.getRemoteSessionTimeoutMillis$work_runtime_release();
        this.contentUriTriggerWorkersLimit = builder.getContentUriTriggerWorkersLimit$work_runtime_release();
        this.isMarkingJobsAsImportantWhileForeground = builder.getMarkJobsAsImportantWhileForeground$work_runtime_release();
        Tracer tracer$work_runtime_release = builder.getTracer$work_runtime_release();
        this.tracer = tracer$work_runtime_release == null ? ConfigurationKt.createDefaultTracer() : tracer$work_runtime_release;
    }

    public final Executor getExecutor() {
        return this.executor;
    }

    public final CoroutineContext getWorkerCoroutineContext() {
        return this.workerCoroutineContext;
    }

    public final Executor getTaskExecutor() {
        return this.taskExecutor;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final WorkerFactory getWorkerFactory() {
        return this.workerFactory;
    }

    public final InputMergerFactory getInputMergerFactory() {
        return this.inputMergerFactory;
    }

    public final RunnableScheduler getRunnableScheduler() {
        return this.runnableScheduler;
    }

    public final Consumer getInitializationExceptionHandler() {
        return this.initializationExceptionHandler;
    }

    public final Consumer getSchedulingExceptionHandler() {
        return this.schedulingExceptionHandler;
    }

    public final Consumer getWorkerInitializationExceptionHandler() {
        return this.workerInitializationExceptionHandler;
    }

    public final Consumer getWorkerExecutionExceptionHandler() {
        return this.workerExecutionExceptionHandler;
    }

    public final String getDefaultProcessName() {
        return this.defaultProcessName;
    }

    public final int getMinimumLoggingLevel() {
        return this.minimumLoggingLevel;
    }

    public final int getMinJobSchedulerId() {
        return this.minJobSchedulerId;
    }

    public final int getMaxJobSchedulerId() {
        return this.maxJobSchedulerId;
    }

    public final int getContentUriTriggerWorkersLimit() {
        return this.contentUriTriggerWorkersLimit;
    }

    public final int getMaxSchedulerLimit() {
        return this.maxSchedulerLimit;
    }

    public final boolean isMarkingJobsAsImportantWhileForeground() {
        return this.isMarkingJobsAsImportantWhileForeground;
    }

    public final Tracer getTracer() {
        return this.tracer;
    }

    public static final class Builder {
        private Clock clock;
        private String defaultProcessName;
        private Executor executor;
        private Consumer initializationExceptionHandler;
        private InputMergerFactory inputMergerFactory;
        private int minJobSchedulerId;
        private RunnableScheduler runnableScheduler;
        private Consumer schedulingExceptionHandler;
        private Executor taskExecutor;
        private Tracer tracer;
        private CoroutineContext workerContext;
        private Consumer workerExecutionExceptionHandler;
        private WorkerFactory workerFactory;
        private Consumer workerInitializationExceptionHandler;
        private long remoteSessionTimeoutMillis = 600000;
        private int loggingLevel = 4;
        private int maxJobSchedulerId = Integer.MAX_VALUE;
        private int maxSchedulerLimit = 20;
        private int contentUriTriggerWorkersLimit = 8;
        private boolean markJobsAsImportantWhileForeground = true;

        public final Executor getExecutor$work_runtime_release() {
            return this.executor;
        }

        public final CoroutineContext getWorkerContext$work_runtime_release() {
            return this.workerContext;
        }

        public final WorkerFactory getWorkerFactory$work_runtime_release() {
            return this.workerFactory;
        }

        public final InputMergerFactory getInputMergerFactory$work_runtime_release() {
            return this.inputMergerFactory;
        }

        public final Executor getTaskExecutor$work_runtime_release() {
            return this.taskExecutor;
        }

        public final Clock getClock$work_runtime_release() {
            return this.clock;
        }

        public final RunnableScheduler getRunnableScheduler$work_runtime_release() {
            return this.runnableScheduler;
        }

        public final Consumer getInitializationExceptionHandler$work_runtime_release() {
            return this.initializationExceptionHandler;
        }

        public final Consumer getSchedulingExceptionHandler$work_runtime_release() {
            return this.schedulingExceptionHandler;
        }

        public final Consumer getWorkerInitializationExceptionHandler$work_runtime_release() {
            return this.workerInitializationExceptionHandler;
        }

        public final Consumer getWorkerExecutionExceptionHandler$work_runtime_release() {
            return this.workerExecutionExceptionHandler;
        }

        public final String getDefaultProcessName$work_runtime_release() {
            return this.defaultProcessName;
        }

        public final long getRemoteSessionTimeoutMillis$work_runtime_release() {
            return this.remoteSessionTimeoutMillis;
        }

        public final int getLoggingLevel$work_runtime_release() {
            return this.loggingLevel;
        }

        public final int getMinJobSchedulerId$work_runtime_release() {
            return this.minJobSchedulerId;
        }

        public final int getMaxJobSchedulerId$work_runtime_release() {
            return this.maxJobSchedulerId;
        }

        public final int getMaxSchedulerLimit$work_runtime_release() {
            return this.maxSchedulerLimit;
        }

        public final int getContentUriTriggerWorkersLimit$work_runtime_release() {
            return this.contentUriTriggerWorkersLimit;
        }

        public final boolean getMarkJobsAsImportantWhileForeground$work_runtime_release() {
            return this.markJobsAsImportantWhileForeground;
        }

        public final Tracer getTracer$work_runtime_release() {
            return this.tracer;
        }

        public final Configuration build() {
            return new Configuration(this);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
