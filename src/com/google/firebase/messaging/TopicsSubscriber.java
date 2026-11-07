package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class TopicsSubscriber {
    private static final long MAX_DELAY_SEC = 28800;
    private final Context context;
    private final Metadata metadata;
    private final TopicsStore store;
    private final ScheduledExecutorService syncExecutor;
    private final TopicSubscriptionClient topicSubscriptionClient;
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> pendingOperations = new ArrayMap();
    private boolean syncScheduledOrRunning = false;

    public static Task<TopicsSubscriber> createInstance(final FirebaseApp firebaseApp, final FirebaseMessaging firebaseMessaging, final FirebaseInstallationsApi firebaseInstallationsApi, final Metadata metadata, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.TopicsSubscriber$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TopicsSubscriber.$r8$lambda$cQ44f2KmT4VOqIrhzI03BvbnygI(context, scheduledExecutorService, metadata, firebaseApp, firebaseMessaging, firebaseInstallationsApi);
            }
        });
    }

    public static /* synthetic */ TopicsSubscriber $r8$lambda$cQ44f2KmT4VOqIrhzI03BvbnygI(Context context, ScheduledExecutorService scheduledExecutorService, Metadata metadata, FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) {
        return new TopicsSubscriber(metadata, TopicsStore.getInstance(context, scheduledExecutorService), new TopicSubscriptionClient(firebaseApp, firebaseMessaging, firebaseInstallationsApi), context, scheduledExecutorService);
    }

    public TopicsSubscriber(Metadata metadata, TopicsStore topicsStore, TopicSubscriptionClient topicSubscriptionClient, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.metadata = metadata;
        this.store = topicsStore;
        this.topicSubscriptionClient = topicSubscriptionClient;
        this.context = context;
        this.syncExecutor = scheduledExecutorService;
    }

    public boolean hasPendingOperation() {
        return this.store.getNextTopicOperation() != null;
    }

    public void startTopicsSyncIfNecessary() {
        if (hasPendingOperation()) {
            startSync();
        }
    }

    private void startSync() {
        if (isSyncScheduledOrRunning()) {
            return;
        }
        syncWithDelaySecondsInternal(0L);
    }

    public void syncWithDelaySecondsInternal(long j) {
        scheduleSyncTaskWithDelaySeconds(new TopicsSyncTask(this, this.context, this.metadata, Math.min(Math.max(30L, 2 * j), MAX_DELAY_SEC)), j);
        setSyncScheduledOrRunning(true);
    }

    public void scheduleSyncTaskWithDelaySeconds(Runnable runnable, long j) {
        this.syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (isDebugLogEnabled() == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
    
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean syncTopics() {
        while (true) {
            synchronized (this) {
                try {
                    TopicOperation nextTopicOperation = this.store.getNextTopicOperation();
                    if (nextTopicOperation == null) {
                        break;
                    }
                    if (!performTopicOperation(nextTopicOperation)) {
                        return false;
                    }
                    this.store.removeTopicOperation(nextTopicOperation);
                    markCompletePendingOperation(nextTopicOperation);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void markCompletePendingOperation(TopicOperation topicOperation) {
        synchronized (this.pendingOperations) {
            try {
                String strSerialize = topicOperation.serialize();
                if (this.pendingOperations.containsKey(strSerialize)) {
                    ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.pendingOperations.get(strSerialize);
                    TaskCompletionSource<Void> taskCompletionSourcePoll = arrayDeque.poll();
                    if (taskCompletionSourcePoll != null) {
                        taskCompletionSourcePoll.setResult(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.pendingOperations.remove(strSerialize);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean performTopicOperation(TopicOperation topicOperation) throws IOException {
        try {
            String operation = topicOperation.getOperation();
            int iHashCode = operation.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && operation.equals("U")) {
                    blockingUnsubscribeFromTopic(topicOperation.getTopic());
                    if (!isDebugLogEnabled()) {
                        return true;
                    }
                    Log.d("FirebaseMessaging", "Unsubscribe from topic: " + topicOperation.getTopic() + " succeeded.");
                    return true;
                }
            } else if (operation.equals("S")) {
                blockingSubscribeToTopic(topicOperation.getTopic());
                if (!isDebugLogEnabled()) {
                    return true;
                }
                Log.d("FirebaseMessaging", "Subscribe to topic: " + topicOperation.getTopic() + " succeeded.");
                return true;
            }
            if (!isDebugLogEnabled()) {
                return true;
            }
            Log.d("FirebaseMessaging", "Unknown topic operation" + topicOperation + ".");
            return true;
        } catch (IOException e) {
            if ("SERVICE_NOT_AVAILABLE".equals(e.getMessage()) || "INTERNAL_SERVER_ERROR".equals(e.getMessage())) {
                Log.e("FirebaseMessaging", "Topic operation failed: " + e.getMessage() + ". Will retry Topic operation.");
                return false;
            }
            if (e.getMessage() == null) {
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            throw e;
        }
    }

    private void blockingSubscribeToTopic(String str) throws IOException {
        this.topicSubscriptionClient.subscribe(str);
    }

    private void blockingUnsubscribeFromTopic(String str) throws IOException {
        this.topicSubscriptionClient.unsubscribe(str);
    }

    public synchronized boolean isSyncScheduledOrRunning() {
        return this.syncScheduledOrRunning;
    }

    public synchronized void setSyncScheduledOrRunning(boolean z) {
        this.syncScheduledOrRunning = z;
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }
}
