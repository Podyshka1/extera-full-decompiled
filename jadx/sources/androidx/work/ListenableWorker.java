package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class ListenableWorker {
    private Context mAppContext;
    private final AtomicInteger mStopReason = new AtomicInteger(-256);
    private boolean mUsed;
    private WorkerParameters mWorkerParams;

    public abstract ListenableFuture getForegroundInfoAsync();

    public void onStopped() {
    }

    public abstract ListenableFuture startWork();

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.mAppContext = context;
        this.mWorkerParams = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.mAppContext;
    }

    public final UUID getId() {
        return this.mWorkerParams.getId();
    }

    public final Data getInputData() {
        return this.mWorkerParams.getInputData();
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.getTags();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.getTriggeredContentUris();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.getTriggeredContentAuthorities();
    }

    public final Network getNetwork() {
        return this.mWorkerParams.getNetwork();
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.getRunAttemptCount();
    }

    public ListenableFuture setProgressAsync(Data data) {
        return this.mWorkerParams.getProgressUpdater().updateProgress(getApplicationContext(), getId(), data);
    }

    public final ListenableFuture setForegroundAsync(ForegroundInfo foregroundInfo) {
        return this.mWorkerParams.getForegroundUpdater().setForegroundAsync(getApplicationContext(), getId(), foregroundInfo);
    }

    public final boolean isStopped() {
        return this.mStopReason.get() != -256;
    }

    public final int getStopReason() {
        return this.mStopReason.get();
    }

    public final void stop(int i) {
        if (this.mStopReason.compareAndSet(-256, i)) {
            onStopped();
        }
    }

    public final boolean isUsed() {
        return this.mUsed;
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public Executor getBackgroundExecutor() {
        return this.mWorkerParams.getBackgroundExecutor();
    }

    public TaskExecutor getTaskExecutor() {
        return this.mWorkerParams.getTaskExecutor();
    }

    public WorkerFactory getWorkerFactory() {
        return this.mWorkerParams.getWorkerFactory();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class Result {
        public static Result success() {
            return new Success();
        }

        public static Result retry() {
            return new Retry();
        }

        public static Result failure() {
            return new Failure();
        }

        Result() {
        }

        public static final class Success extends Result {
            private final Data mOutputData;

            public Success() {
                this(Data.EMPTY);
            }

            public Success(Data data) {
                this.mOutputData = data;
            }

            public Data getOutputData() {
                return this.mOutputData;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Success.class != obj.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Success) obj).mOutputData);
            }

            public int hashCode() {
                return (Success.class.getName().hashCode() * 31) + this.mOutputData.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.mOutputData + '}';
            }
        }

        public static final class Failure extends Result {
            private final Data mOutputData;

            public Failure() {
                this(Data.EMPTY);
            }

            public Failure(Data data) {
                this.mOutputData = data;
            }

            public Data getOutputData() {
                return this.mOutputData;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Failure.class != obj.getClass()) {
                    return false;
                }
                return this.mOutputData.equals(((Failure) obj).mOutputData);
            }

            public int hashCode() {
                return (Failure.class.getName().hashCode() * 31) + this.mOutputData.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.mOutputData + '}';
            }
        }

        public static final class Retry extends Result {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && Retry.class == obj.getClass();
            }

            public int hashCode() {
                return Retry.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }
    }
}
