package org.telegram.messenger;

import android.os.SystemClock;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.ConnectionsManager;

/* JADX INFO: loaded from: classes.dex */
public class ProxyPingController {
    private static final ProxyPingController INSTANCE = new ProxyPingController();
    private final Runnable pingRunnable = new Runnable() { // from class: org.telegram.messenger.ProxyPingController$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        SharedConfig.ProxyInfo proxyInfo;
        if (SharedConfig.isProxyEnabled() && (proxyInfo = SharedConfig.currentProxy) != null) {
            int iNative_getCurrentPingTime = ConnectionsManager.native_getCurrentPingTime(UserConfig.selectedAccount);
            if (iNative_getCurrentPingTime > 0) {
                proxyInfo.ping = iNative_getCurrentPingTime;
                proxyInfo.availableCheckTime = SystemClock.elapsedRealtime();
                proxyInfo.available = true;
            } else {
                proxyInfo.ping = 0L;
                proxyInfo.available = false;
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.proxyPingUpdated, Integer.valueOf(iNative_getCurrentPingTime));
        }
        scheduleNextPing();
    }

    private void scheduleNextPing() {
        AndroidUtilities.cancelRunOnUIThread(this.pingRunnable);
        AndroidUtilities.runOnUIThread(this.pingRunnable, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    public static void init() {
        INSTANCE.scheduleNextPing();
    }
}
