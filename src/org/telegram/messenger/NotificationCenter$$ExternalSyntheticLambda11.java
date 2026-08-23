package org.telegram.messenger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class NotificationCenter$$ExternalSyntheticLambda11 implements Runnable {
    public final /* synthetic */ NotificationCenter f$0;

    public /* synthetic */ NotificationCenter$$ExternalSyntheticLambda11(NotificationCenter notificationCenter) {
        this.f$0 = notificationCenter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.checkForExpiredNotifications();
    }
}
