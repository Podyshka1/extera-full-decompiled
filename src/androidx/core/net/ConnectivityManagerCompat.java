package androidx.core.net;

import android.net.ConnectivityManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConnectivityManagerCompat {
    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        return connectivityManager.isActiveNetworkMetered();
    }
}
