package androidx.media3.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class WakeLockManager {
    private boolean enabled;
    private final HandlerWrapper mainHandler;
    private boolean stayAwake;
    private final HandlerWrapper wakeLockHandler;
    private final WakeLockManagerInternal wakeLockManagerInternal;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean shouldAcquireWakelock(boolean z, boolean z2) {
        return z && z2;
    }

    public WakeLockManager(Context context, Looper looper, Clock clock) {
        this.wakeLockManagerInternal = new WakeLockManagerInternal(context.getApplicationContext());
        this.wakeLockHandler = clock.createHandler(looper, null);
        this.mainHandler = clock.createHandler(Looper.getMainLooper(), null);
    }

    public void setEnabled(boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        postUpdateWakeLock(z, this.stayAwake);
    }

    public void setStayAwake(boolean z) {
        if (this.stayAwake == z) {
            return;
        }
        this.stayAwake = z;
        if (this.enabled) {
            postUpdateWakeLock(true, z);
        }
    }

    private void postUpdateWakeLock(final boolean z, final boolean z2) {
        if (shouldAcquireWakelock(z, z2)) {
            this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.wakeLockManagerInternal.updateWakeLock(z, z2);
                }
            });
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        this.mainHandler.postDelayed(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.wakeLockManagerInternal.forceReleaseWakeLock(atomicBoolean);
            }
        }, 1000L);
        this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WakeLockManager.$r8$lambda$EPXjMTWyewP1efpegHOrXKE6eds(this.f$0, atomicBoolean, z, z2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EPXjMTWyewP1efpegHOrXKE6eds(WakeLockManager wakeLockManager, AtomicBoolean atomicBoolean, boolean z, boolean z2) {
        wakeLockManager.getClass();
        atomicBoolean.set(false);
        wakeLockManager.wakeLockManagerInternal.updateWakeLock(z, z2);
    }

    public static final class WakeLockManagerInternal {
        private final Context applicationContext;
        private PowerManager.WakeLock wakeLock;

        public WakeLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"WakelockTimeout"})
        public synchronized void updateWakeLock(boolean z, boolean z2) {
            if (z) {
                if (this.wakeLock == null) {
                    if (this.applicationContext.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                        Log.m164w("WakeLockManager", "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                        return;
                    }
                    PowerManager powerManager = (PowerManager) this.applicationContext.getSystemService("power");
                    if (powerManager == null) {
                        Log.m164w("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                        return;
                    } else {
                        PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                        this.wakeLock = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.setReferenceCounted(false);
                    }
                }
            }
            if (this.wakeLock == null) {
                return;
            }
            boolean zShouldAcquireWakelock = WakeLockManager.shouldAcquireWakelock(z, z2);
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (zShouldAcquireWakelock) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void forceReleaseWakeLock(final AtomicBoolean atomicBoolean) {
            if (atomicBoolean.get()) {
                new Thread(new Runnable() { // from class: androidx.media3.common.util.WakeLockManager$WakeLockManagerInternal$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.forceReleaseWakeLockInternal(atomicBoolean);
                    }
                }, "ExoPlayer:WakeLockManager").start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void forceReleaseWakeLockInternal(AtomicBoolean atomicBoolean) {
            PowerManager.WakeLock wakeLock;
            if (atomicBoolean.get() && (wakeLock = this.wakeLock) != null) {
                wakeLock.release();
            }
        }
    }
}
