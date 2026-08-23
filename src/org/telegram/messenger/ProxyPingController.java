package org.telegram.messenger;

import android.os.SystemClock;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestTimeDelegate;

/* JADX INFO: loaded from: classes.dex */
public class ProxyPingController {
    private static final ProxyPingController INSTANCE = new ProxyPingController();
    private final Runnable pingRunnable = new Runnable() { // from class: org.telegram.messenger.ProxyPingController$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        final SharedConfig.ProxyInfo proxyInfo;
        if (SharedConfig.isProxyEnabled() && (proxyInfo = SharedConfig.currentProxy) != null) {
            ConnectionsManager.getInstance(UserConfig.selectedAccount).checkProxy(proxyInfo.address, proxyInfo.port, proxyInfo.username, proxyInfo.password, proxyInfo.secret, new RequestTimeDelegate() { // from class: org.telegram.messenger.ProxyPingController$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestTimeDelegate
                public final void run(long j) {
                    this.f$0.lambda$new$1(proxyInfo, j);
                }
            });
        } else {
            scheduleNextPing();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(final SharedConfig.ProxyInfo proxyInfo, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ProxyPingController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0(j, proxyInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(long j, SharedConfig.ProxyInfo proxyInfo) {
        if (j != -1) {
            proxyInfo.ping = j;
            proxyInfo.availableCheckTime = SystemClock.elapsedRealtime();
            proxyInfo.available = true;
        } else {
            proxyInfo.available = false;
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.proxyPingUpdated, Integer.valueOf((int) j));
        scheduleNextPing();
    }

    private void scheduleNextPing() {
        AndroidUtilities.cancelRunOnUIThread(this.pingRunnable);
        AndroidUtilities.runOnUIThread(this.pingRunnable, 10000L);
    }

    public static void init() {
        INSTANCE.scheduleNextPing();
    }
}
