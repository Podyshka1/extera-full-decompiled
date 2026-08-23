package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    private static final String TAG = Logger.tagWithPrefix("SystemJobService");
    private final Map mJobParameters = new HashMap();
    private final StartStopTokens mStartStopTokens = StartStopTokens.CC.create(false);
    private WorkLauncher mWorkLauncher;
    private WorkManagerImpl mWorkManagerImpl;

    static int stopReason(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i;
            default:
                return -512;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
            this.mWorkManagerImpl = workManagerImpl;
            Processor processor = workManagerImpl.getProcessor();
            this.mWorkLauncher = new WorkLauncherImpl(processor, this.mWorkManagerImpl.getWorkTaskExecutor());
            processor.addExecutionListener(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            Logger.get().warning(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
        if (workManagerImpl != null) {
            workManagerImpl.getProcessor().removeExecutionListener(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        WorkerParameters.RuntimeExtras runtimeExtras;
        assertMainThread("onStartJob");
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        WorkGenerationalId workGenerationalIdWorkGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(jobParameters);
        if (workGenerationalIdWorkGenerationalIdFromJobParameters == null) {
            Logger.get().error(TAG, "WorkSpec id not found!");
            return false;
        }
        if (this.mJobParameters.containsKey(workGenerationalIdWorkGenerationalIdFromJobParameters)) {
            Logger.get().debug(TAG, "Job is already being executed by SystemJobService: " + workGenerationalIdWorkGenerationalIdFromJobParameters);
            return false;
        }
        Logger.get().debug(TAG, "onStartJob for " + workGenerationalIdWorkGenerationalIdFromJobParameters);
        this.mJobParameters.put(workGenerationalIdWorkGenerationalIdFromJobParameters, jobParameters);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            runtimeExtras = new WorkerParameters.RuntimeExtras();
            if (Api24Impl.getTriggeredContentUris(jobParameters) != null) {
                runtimeExtras.triggeredContentUris = Arrays.asList(Api24Impl.getTriggeredContentUris(jobParameters));
            }
            if (Api24Impl.getTriggeredContentAuthorities(jobParameters) != null) {
                runtimeExtras.triggeredContentAuthorities = Arrays.asList(Api24Impl.getTriggeredContentAuthorities(jobParameters));
            }
            if (i >= 28) {
                runtimeExtras.network = Api28Impl.getNetwork(jobParameters);
            }
        } else {
            runtimeExtras = null;
        }
        this.mWorkLauncher.startWork(this.mStartStopTokens.tokenFor(workGenerationalIdWorkGenerationalIdFromJobParameters), runtimeExtras);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        assertMainThread("onStopJob");
        if (this.mWorkManagerImpl == null) {
            Logger.get().debug(TAG, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId workGenerationalIdWorkGenerationalIdFromJobParameters = workGenerationalIdFromJobParameters(jobParameters);
        if (workGenerationalIdWorkGenerationalIdFromJobParameters == null) {
            Logger.get().error(TAG, "WorkSpec id not found!");
            return false;
        }
        Logger.get().debug(TAG, "onStopJob for " + workGenerationalIdWorkGenerationalIdFromJobParameters);
        this.mJobParameters.remove(workGenerationalIdWorkGenerationalIdFromJobParameters);
        StartStopToken startStopTokenRemove = this.mStartStopTokens.remove(workGenerationalIdWorkGenerationalIdFromJobParameters);
        if (startStopTokenRemove != null) {
            this.mWorkLauncher.stopWorkWithReason(startStopTokenRemove, Build.VERSION.SDK_INT >= 31 ? Api31Impl.getStopReason(jobParameters) : -512);
        }
        return !this.mWorkManagerImpl.getProcessor().isCancelled(workGenerationalIdWorkGenerationalIdFromJobParameters.getWorkSpecId());
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(WorkGenerationalId workGenerationalId, boolean z) {
        assertMainThread("onExecuted");
        Logger.get().debug(TAG, workGenerationalId.getWorkSpecId() + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.mJobParameters.remove(workGenerationalId);
        this.mStartStopTokens.remove(workGenerationalId);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    private static WorkGenerationalId workGenerationalIdFromJobParameters(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Api24Impl {
        static Uri[] getTriggeredContentUris(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }

        static String[] getTriggeredContentAuthorities(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Api28Impl {
        static Network getNetwork(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static class Api31Impl {
        static int getStopReason(JobParameters jobParameters) {
            return SystemJobService.stopReason(jobParameters.getStopReason());
        }
    }

    private static void assertMainThread(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }
}
