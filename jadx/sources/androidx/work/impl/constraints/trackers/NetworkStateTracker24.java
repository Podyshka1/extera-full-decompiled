package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi24;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkStateTracker24 extends ConstraintTracker {
    private final ConnectivityManager connectivityManager;
    private volatile boolean isBlocked;
    private final Object lock;
    private final NetworkStateTracker24$networkCallback$1 networkCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1] */
    public NetworkStateTracker24(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        Object systemService = getAppContext().getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.connectivityManager = (ConnectivityManager) systemService;
        this.lock = new Object();
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
                Intrinsics.checkNotNullParameter(network, "network");
                Intrinsics.checkNotNullParameter(capabilities, "capabilities");
                Logger.get().debug(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + capabilities);
                NetworkStateTracker24 networkStateTracker24 = this.this$0;
                networkStateTracker24.setState(Build.VERSION.SDK_INT >= 28 ? NetworkStateTrackerKt.getActiveNetworkState(capabilities, networkStateTracker24.isBlocked) : NetworkStateTrackerKt.getActiveNetworkState(networkStateTracker24.connectivityManager, this.this$0.isBlocked));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                Logger.get().debug(NetworkStateTrackerKt.TAG, "Network connection lost");
                this.this$0.setState(new NetworkState(false, false, false, false, false));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onBlockedStatusChanged(Network network, boolean z) {
                Intrinsics.checkNotNullParameter(network, "network");
                if (Intrinsics.areEqual(network, this.this$0.connectivityManager.getActiveNetwork())) {
                    Logger.get().debug(NetworkStateTrackerKt.TAG, "Network blocked status changed: " + z);
                    NetworkState networkState = (NetworkState) this.this$0.getState();
                    Object obj = this.this$0.lock;
                    NetworkStateTracker24 networkStateTracker24 = this.this$0;
                    synchronized (obj) {
                        if (networkStateTracker24.isBlocked == z) {
                            return;
                        }
                        networkStateTracker24.isBlocked = z;
                        Unit unit = Unit.INSTANCE;
                        this.this$0.setState(NetworkState.copy$default(networkState, false, false, false, false, z, 15, null));
                    }
                }
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public NetworkState readSystemState() {
        if (Build.VERSION.SDK_INT >= 28) {
            ConnectivityManager connectivityManager = this.connectivityManager;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null) {
                return NetworkStateTrackerKt.getActiveNetworkState(networkCapabilities, this.isBlocked);
            }
        }
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, this.isBlocked);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        try {
            Logger.get().debug(NetworkStateTrackerKt.TAG, "Registering network callback");
            NetworkApi24.registerDefaultNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        try {
            Logger.get().debug(NetworkStateTrackerKt.TAG, "Unregistering network callback");
            this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e2);
        }
    }
}
