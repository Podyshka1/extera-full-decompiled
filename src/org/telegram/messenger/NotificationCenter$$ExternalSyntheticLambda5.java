package org.telegram.messenger;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class NotificationCenter$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ NotificationCenter f$0;

    public /* synthetic */ NotificationCenter$$ExternalSyntheticLambda5(NotificationCenter notificationCenter) {
        this.f$0 = notificationCenter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.checkForExpiredNotifications();
    }
}
