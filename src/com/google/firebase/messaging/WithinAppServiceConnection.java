package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.WithinAppServiceConnection;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
class WithinAppServiceConnection implements ServiceConnection {
    private WithinAppServiceBinder binder;
    private boolean connectionInProgress;
    private final Intent connectionIntent;
    private final Context context;
    private final Queue intentQueue;
    private final ScheduledExecutorService scheduledExecutorService;

    static class BindRequest {
        final Intent intent;
        private final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();

        BindRequest(Intent intent) {
            this.intent = intent;
        }

        void arrangeTimeout(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WithinAppServiceConnection.BindRequest.m3550$r8$lambda$hKs5bTLffofgXyuUxvS59KUCk(this.f$0);
                }
            }, 20L, TimeUnit.SECONDS);
            getTask().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener() { // from class: com.google.firebase.messaging.WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    scheduledFutureSchedule.cancel(false);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$hKs5bTLff-ofgXyu-UxvS59KUCk, reason: not valid java name */
        public static /* synthetic */ void m3550$r8$lambda$hKs5bTLffofgXyuUxvS59KUCk(BindRequest bindRequest) {
            bindRequest.getClass();
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + bindRequest.intent.getAction() + " finishing.");
            bindRequest.finish();
        }

        Task getTask() {
            return this.taskCompletionSource.getTask();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void finish() {
            this.taskCompletionSource.trySetResult(null);
        }
    }

    WithinAppServiceConnection(Context context, String str) {
        this(context, str, createScheduledThreadPoolExecutor());
    }

    private static ScheduledThreadPoolExecutor createScheduledThreadPoolExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    WithinAppServiceConnection(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.intentQueue = new ArrayDeque();
        this.connectionInProgress = false;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.connectionIntent = new Intent(str).setPackage(applicationContext.getPackageName());
        this.scheduledExecutorService = scheduledExecutorService;
    }

    synchronized Task sendIntent(Intent intent) {
        BindRequest bindRequest;
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            bindRequest = new BindRequest(intent);
            bindRequest.arrangeTimeout(this.scheduledExecutorService);
            this.intentQueue.add(bindRequest);
            flushQueue();
        } catch (Throwable th) {
            throw th;
        }
        return bindRequest.getTask();
    }

    private synchronized void flushQueue() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.intentQueue.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                WithinAppServiceBinder withinAppServiceBinder = this.binder;
                if (withinAppServiceBinder != null && withinAppServiceBinder.isBinderAlive()) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                    }
                    this.binder.send((BindRequest) this.intentQueue.poll());
                } else {
                    startConnectionIfNeeded();
                    return;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void startConnectionIfNeeded() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("binder is dead. start connection? ");
            sb.append(!this.connectionInProgress);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.connectionInProgress) {
            return;
        }
        this.connectionInProgress = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.context, this.connectionIntent, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e);
        }
        this.connectionInProgress = false;
        finishAllInQueue();
    }

    private void finishAllInQueue() {
        while (!this.intentQueue.isEmpty()) {
            ((BindRequest) this.intentQueue.poll()).finish();
        }
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
            }
            this.connectionInProgress = false;
            if (!(iBinder instanceof WithinAppServiceBinder)) {
                Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
                finishAllInQueue();
                return;
            }
            this.binder = (WithinAppServiceBinder) iBinder;
            flushQueue();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        flushQueue();
    }
}
