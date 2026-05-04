package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class TopicsStore {
    private static WeakReference topicsStoreWeakReference;
    private final SharedPreferences sharedPreferences;
    private final Executor syncExecutor;
    private SharedPreferencesQueue topicOperationsQueue;

    private TopicsStore(SharedPreferences sharedPreferences, Executor executor) {
        this.syncExecutor = executor;
        this.sharedPreferences = sharedPreferences;
    }

    private synchronized void initStore() {
        this.topicOperationsQueue = SharedPreferencesQueue.createInstance(this.sharedPreferences, "topic_operation_queue", ",", this.syncExecutor);
    }

    public static synchronized TopicsStore getInstance(Context context, Executor executor) {
        TopicsStore topicsStore;
        try {
            WeakReference weakReference = topicsStoreWeakReference;
            topicsStore = weakReference != null ? (TopicsStore) weakReference.get() : null;
            if (topicsStore == null) {
                topicsStore = new TopicsStore(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                topicsStore.initStore();
                topicsStoreWeakReference = new WeakReference(topicsStore);
            }
        } catch (Throwable th) {
            throw th;
        }
        return topicsStore;
    }

    synchronized TopicOperation getNextTopicOperation() {
        return TopicOperation.from(this.topicOperationsQueue.peek());
    }

    synchronized boolean removeTopicOperation(TopicOperation topicOperation) {
        return this.topicOperationsQueue.remove(topicOperation.serialize());
    }
}
