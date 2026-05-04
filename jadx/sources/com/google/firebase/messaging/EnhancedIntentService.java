package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.WithinAppServiceBinder;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public abstract class EnhancedIntentService extends Service {
    static final long MESSAGE_TIMEOUT_S = 20;
    private static final String TAG = "EnhancedIntentService";
    private Binder binder;
    private int lastStartId;
    final ExecutorService executor = FcmExecutors.newIntentHandleExecutor();
    private final Object lock = new Object();
    private int runningTasks = 0;

    protected abstract Intent getStartCommandIntent(Intent intent);

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        try {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Service received bind request");
            }
            if (this.binder == null) {
                this.binder = new WithinAppServiceBinder(new WithinAppServiceBinder.IntentHandler() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                    @Override // com.google.firebase.messaging.WithinAppServiceBinder.IntentHandler
                    public Task handle(Intent intent2) {
                        return EnhancedIntentService.this.processIntent(intent2);
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.binder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.executor.execute(new Runnable() { // from class: com.google.firebase.messaging.EnhancedIntentService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                EnhancedIntentService.m3542$r8$lambda$9b4qTh6k1amVzUe1kAE6oojA28(this.f$0, intent, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: $r8$lambda$9b4qTh6k1amVzUe1kAE6oojA2-8, reason: not valid java name */
    public static /* synthetic */ void m3542$r8$lambda$9b4qTh6k1amVzUe1kAE6oojA28(EnhancedIntentService enhancedIntentService, Intent intent, TaskCompletionSource taskCompletionSource) {
        enhancedIntentService.getClass();
        try {
            enhancedIntentService.handleIntent(intent);
        } finally {
            taskCompletionSource.setResult(null);
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.lastStartId = i2;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        Task taskProcessIntent = processIntent(startCommandIntent);
        if (taskProcessIntent.isComplete()) {
            finishTask(intent);
            return 2;
        }
        taskProcessIntent.addOnCompleteListener(new CredentialManager$$ExternalSyntheticLambda0(), new OnCompleteListener() { // from class: com.google.firebase.messaging.EnhancedIntentService$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f$0.finishTask(intent);
            }
        });
        return 3;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishTask(Intent intent) {
        if (intent != null) {
            WakeLockHolder.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            try {
                int i = this.runningTasks - 1;
                this.runningTasks = i;
                if (i == 0) {
                    stopSelfResultHook(this.lastStartId);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
