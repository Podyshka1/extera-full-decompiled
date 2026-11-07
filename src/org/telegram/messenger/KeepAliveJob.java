package org.telegram.messenger;

import android.content.Intent;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.support.JobIntentService;

/* JADX INFO: loaded from: classes.dex */
public class KeepAliveJob extends JobIntentService {
    private static volatile CountDownLatch countDownLatch;
    private static volatile boolean startingJob;
    private static final Object sync = new Object();
    private static Runnable finishJobByTimeoutRunnable = new KeepAliveJob$$ExternalSyntheticLambda0();

    public static void startJob() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.KeepAliveJob$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                KeepAliveJob.$r8$lambda$KunmSAUOG7za9CVFvrm3r_2vjUE();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$KunmSAUOG7za9CVFvrm3r_2vjUE() {
        if (startingJob || countDownLatch != null) {
            return;
        }
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("starting keep-alive job");
            }
            synchronized (sync) {
                startingJob = true;
            }
            JobIntentService.enqueueWork(ApplicationLoader.applicationContext, KeepAliveJob.class, 1000, new Intent());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void finishJobInternal() {
        synchronized (sync) {
            try {
                if (countDownLatch != null) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("finish keep-alive job");
                    }
                    countDownLatch.countDown();
                }
                if (startingJob) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("finish queued keep-alive job");
                    }
                    startingJob = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void finishJob() {
        Utilities.globalQueue.postRunnable(new KeepAliveJob$$ExternalSyntheticLambda0());
    }

    @Override // org.telegram.messenger.support.JobIntentService
    public void onHandleWork(Intent intent) {
        synchronized (sync) {
            try {
                if (startingJob) {
                    countDownLatch = new CountDownLatch(1);
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("started keep-alive job");
                    }
                    Utilities.globalQueue.postRunnable(finishJobByTimeoutRunnable, 60000L);
                    try {
                        countDownLatch.await();
                    } catch (Throwable unused) {
                    }
                    Utilities.globalQueue.cancelRunnable(finishJobByTimeoutRunnable);
                    synchronized (sync) {
                        countDownLatch = null;
                    }
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m989d("ended keep-alive job");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
