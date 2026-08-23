package androidx.work;

import android.net.Network;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes4.dex */
public final class WorkerParameters {
    private Executor mBackgroundExecutor;
    private ForegroundUpdater mForegroundUpdater;
    private int mGeneration;
    private UUID mId;
    private Data mInputData;
    private ProgressUpdater mProgressUpdater;
    private int mRunAttemptCount;
    private RuntimeExtras mRuntimeExtras;
    private Set mTags;
    private TaskExecutor mWorkTaskExecutor;
    private CoroutineContext mWorkerContext;
    private WorkerFactory mWorkerFactory;

    public WorkerParameters(UUID uuid, Data data, Collection collection, RuntimeExtras runtimeExtras, int i, int i2, Executor executor, CoroutineContext coroutineContext, TaskExecutor taskExecutor, WorkerFactory workerFactory, ProgressUpdater progressUpdater, ForegroundUpdater foregroundUpdater) {
        this.mId = uuid;
        this.mInputData = data;
        this.mTags = new HashSet(collection);
        this.mRuntimeExtras = runtimeExtras;
        this.mRunAttemptCount = i;
        this.mGeneration = i2;
        this.mBackgroundExecutor = executor;
        this.mWorkerContext = coroutineContext;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkerFactory = workerFactory;
        this.mProgressUpdater = progressUpdater;
        this.mForegroundUpdater = foregroundUpdater;
    }

    public UUID getId() {
        return this.mId;
    }

    public Data getInputData() {
        return this.mInputData;
    }

    public Set getTags() {
        return this.mTags;
    }

    public List getTriggeredContentUris() {
        return this.mRuntimeExtras.triggeredContentUris;
    }

    public List getTriggeredContentAuthorities() {
        return this.mRuntimeExtras.triggeredContentAuthorities;
    }

    public Network getNetwork() {
        return this.mRuntimeExtras.network;
    }

    public int getRunAttemptCount() {
        return this.mRunAttemptCount;
    }

    public Executor getBackgroundExecutor() {
        return this.mBackgroundExecutor;
    }

    public CoroutineContext getWorkerContext() {
        return this.mWorkerContext;
    }

    public TaskExecutor getTaskExecutor() {
        return this.mWorkTaskExecutor;
    }

    public WorkerFactory getWorkerFactory() {
        return this.mWorkerFactory;
    }

    public ProgressUpdater getProgressUpdater() {
        return this.mProgressUpdater;
    }

    public ForegroundUpdater getForegroundUpdater() {
        return this.mForegroundUpdater;
    }

    public static class RuntimeExtras {
        public Network network;
        public List triggeredContentAuthorities;
        public List triggeredContentUris;

        public RuntimeExtras() {
            List list = Collections.EMPTY_LIST;
            this.triggeredContentAuthorities = list;
            this.triggeredContentUris = list;
        }
    }
}
