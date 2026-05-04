package com.google.firebase.remoteconfig.internal.rollouts;

import android.util.Log;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.internal.ConfigCacheClient;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsState;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class RolloutsStateSubscriptionsHandler {
    private ConfigCacheClient activatedConfigsCache;
    private Executor executor;
    private RolloutsStateFactory rolloutsStateFactory;
    private Set subscribers = Collections.newSetFromMap(new ConcurrentHashMap());

    public RolloutsStateSubscriptionsHandler(ConfigCacheClient configCacheClient, RolloutsStateFactory rolloutsStateFactory, Executor executor) {
        this.activatedConfigsCache = configCacheClient;
        this.rolloutsStateFactory = rolloutsStateFactory;
        this.executor = executor;
    }

    public void registerRolloutsStateSubscriber(final RolloutsStateSubscriber rolloutsStateSubscriber) {
        this.subscribers.add(rolloutsStateSubscriber);
        final Task task = this.activatedConfigsCache.get();
        task.addOnSuccessListener(this.executor, new OnSuccessListener() { // from class: com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateSubscriptionsHandler$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                RolloutsStateSubscriptionsHandler.$r8$lambda$G2FlweAKkFv8RelwOveXNqMs9Nw(this.f$0, task, rolloutsStateSubscriber, (ConfigContainer) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$G2FlweAKkFv8RelwOveXNqMs9Nw(RolloutsStateSubscriptionsHandler rolloutsStateSubscriptionsHandler, Task task, final RolloutsStateSubscriber rolloutsStateSubscriber, ConfigContainer configContainer) {
        rolloutsStateSubscriptionsHandler.getClass();
        try {
            ConfigContainer configContainer2 = (ConfigContainer) task.getResult();
            if (configContainer2 != null) {
                final RolloutsState activeRolloutsState = rolloutsStateSubscriptionsHandler.rolloutsStateFactory.getActiveRolloutsState(configContainer2);
                rolloutsStateSubscriptionsHandler.executor.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateSubscriptionsHandler$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        rolloutsStateSubscriber.onRolloutsStateChanged(activeRolloutsState);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e);
        }
    }

    public void publishActiveRolloutsState(ConfigContainer configContainer) {
        try {
            final RolloutsState activeRolloutsState = this.rolloutsStateFactory.getActiveRolloutsState(configContainer);
            for (final RolloutsStateSubscriber rolloutsStateSubscriber : this.subscribers) {
                this.executor.execute(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateSubscriptionsHandler$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        rolloutsStateSubscriber.onRolloutsStateChanged(activeRolloutsState);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e);
        }
    }
}
