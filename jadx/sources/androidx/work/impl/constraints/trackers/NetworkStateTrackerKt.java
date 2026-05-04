package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.core.net.ConnectivityManagerCompat;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class NetworkStateTrackerKt {
    private static final String TAG;

    public static final ConstraintTracker NetworkStateTracker(Context context, TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        if (Build.VERSION.SDK_INT >= 24) {
            return new NetworkStateTracker24(context, taskExecutor);
        }
        return new NetworkStateTrackerPre24(context, taskExecutor);
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("NetworkStateTracker");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    public static final boolean isActiveNetworkValidated(ConnectivityManager connectivityManager) {
        Intrinsics.checkNotNullParameter(connectivityManager, "<this>");
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (SecurityException e) {
            Logger.get().error(TAG, "Unable to validate active network", e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final NetworkState getActiveNetworkState(ConnectivityManager connectivityManager, boolean z) {
        boolean z2;
        SecurityException securityException;
        boolean z3;
        boolean z4;
        Intrinsics.checkNotNullParameter(connectivityManager, "connectivityManager");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z5 = false;
            if (activeNetworkInfo != null) {
                try {
                    if (activeNetworkInfo.isConnected()) {
                        z3 = false;
                        z5 = true;
                        z4 = true;
                    } else {
                        z3 = false;
                        z4 = true;
                    }
                    boolean zIsActiveNetworkValidated = isActiveNetworkValidated(connectivityManager);
                    boolean zIsActiveNetworkMetered = ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager);
                    if (activeNetworkInfo != null) {
                        if (activeNetworkInfo.isRoaming()) {
                            z4 = z3;
                        }
                        z2 = z;
                        try {
                            return new NetworkState(z5, zIsActiveNetworkValidated, zIsActiveNetworkMetered, z4, z2);
                        } catch (SecurityException e) {
                            e = e;
                            securityException = e;
                            Logger.get().error(TAG, "Unable to get active network state", securityException);
                            return new NetworkState(false, false, false, true, z2);
                        }
                    }
                } catch (SecurityException e2) {
                    securityException = e2;
                    z2 = z;
                }
            }
        } catch (SecurityException e3) {
            e = e3;
            z2 = z;
        }
        Logger.get().error(TAG, "Unable to get active network state", securityException);
        return new NetworkState(false, false, false, true, z2);
    }

    public static final NetworkState getActiveNetworkState(NetworkCapabilities capabilities, boolean z) {
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        return new NetworkState(capabilities.hasCapability(12), capabilities.hasCapability(16), !capabilities.hasCapability(11), capabilities.hasCapability(18), z);
    }
}
