package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ConfigCacheClient {
    private Task cachedContainerTask = null;
    private final Executor executor;
    private final ConfigStorageClient storageClient;
    private static final Map clientInstances = new HashMap();
    private static final Executor DIRECT_EXECUTOR = new CredentialManager$$ExternalSyntheticLambda0();

    private ConfigCacheClient(Executor executor, ConfigStorageClient configStorageClient) {
        this.executor = executor;
        this.storageClient = configStorageClient;
    }

    public ConfigContainer getBlocking() {
        return getBlocking(5L);
    }

    ConfigContainer getBlocking(long j) {
        synchronized (this) {
            try {
                Task task = this.cachedContainerTask;
                if (task != null && task.isSuccessful()) {
                    return (ConfigContainer) this.cachedContainerTask.getResult();
                }
                try {
                    return (ConfigContainer) await(get(), j, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    Log.d("FirebaseRemoteConfig", "Reading from storage file failed.", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Task put(ConfigContainer configContainer) {
        return put(configContainer, true);
    }

    public Task put(final ConfigContainer configContainer, final boolean z) {
        return Tasks.call(this.executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.ConfigCacheClient$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.storageClient.write(configContainer);
            }
        }).onSuccessTask(this.executor, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.ConfigCacheClient$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return ConfigCacheClient.$r8$lambda$LvQjX7XEpXst4uSOi9kWWub2vbA(this.f$0, z, configContainer, (Void) obj);
            }
        });
    }

    public static /* synthetic */ Task $r8$lambda$LvQjX7XEpXst4uSOi9kWWub2vbA(ConfigCacheClient configCacheClient, boolean z, ConfigContainer configContainer, Void r3) {
        if (z) {
            configCacheClient.updateInMemoryConfigContainer(configContainer);
        } else {
            configCacheClient.getClass();
        }
        return Tasks.forResult(configContainer);
    }

    public synchronized Task get() {
        try {
            Task task = this.cachedContainerTask;
            if (task == null || (task.isComplete() && !this.cachedContainerTask.isSuccessful())) {
                Executor executor = this.executor;
                final ConfigStorageClient configStorageClient = this.storageClient;
                Objects.requireNonNull(configStorageClient);
                this.cachedContainerTask = Tasks.call(executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.ConfigCacheClient$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return configStorageClient.read();
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.cachedContainerTask;
    }

    public void clear() {
        synchronized (this) {
            this.cachedContainerTask = Tasks.forResult(null);
        }
        this.storageClient.clear();
    }

    private synchronized void updateInMemoryConfigContainer(ConfigContainer configContainer) {
        this.cachedContainerTask = Tasks.forResult(configContainer);
    }

    public static synchronized ConfigCacheClient getInstance(Executor executor, ConfigStorageClient configStorageClient) {
        String fileName;
        Map map;
        try {
            fileName = configStorageClient.getFileName();
            map = clientInstances;
            if (!map.containsKey(fileName)) {
                map.put(fileName, new ConfigCacheClient(executor, configStorageClient));
            }
        } catch (Throwable th) {
            throw th;
        }
        return (ConfigCacheClient) map.get(fileName);
    }

    private static Object await(Task task, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        AwaitListener awaitListener = new AwaitListener();
        Executor executor = DIRECT_EXECUTOR;
        task.addOnSuccessListener(executor, awaitListener);
        task.addOnFailureListener(executor, awaitListener);
        task.addOnCanceledListener(executor, awaitListener);
        if (!awaitListener.await(j, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class AwaitListener implements OnSuccessListener, OnFailureListener, OnCanceledListener {
        private final CountDownLatch latch;

        private AwaitListener() {
            this.latch = new CountDownLatch(1);
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Object obj) {
            this.latch.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(Exception exc) {
            this.latch.countDown();
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void onCanceled() {
            this.latch.countDown();
        }

        public boolean await(long j, TimeUnit timeUnit) {
            return this.latch.await(j, timeUnit);
        }
    }
}
