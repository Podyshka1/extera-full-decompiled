package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;

/* JADX INFO: loaded from: classes4.dex */
final class WakeLockManager {
    private boolean enabled;
    private boolean stayAwake;
    private final HandlerWrapper wakeLockHandler;
    private final WakeLockManagerInternal wakeLockManagerInternal;

    public WakeLockManager(Context context, Looper looper, Clock clock) {
        this.wakeLockManagerInternal = new WakeLockManagerInternal(context.getApplicationContext());
        this.wakeLockHandler = clock.createHandler(looper, null);
    }

    public void setEnabled(final boolean z) {
        if (this.enabled == z) {
            return;
        }
        this.enabled = z;
        final boolean z2 = this.stayAwake;
        this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.wakeLockManagerInternal.updateWakeLock(z, z2);
            }
        });
    }

    public void setStayAwake(final boolean z) {
        if (this.stayAwake == z) {
            return;
        }
        this.stayAwake = z;
        if (this.enabled) {
            this.wakeLockHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.WakeLockManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.wakeLockManagerInternal.updateWakeLock(true, z);
                }
            });
        }
    }

    public static final class WakeLockManagerInternal {
        private final Context applicationContext;
        private PowerManager.WakeLock wakeLock;

        public WakeLockManagerInternal(Context context) {
            this.applicationContext = context;
        }

        @SuppressLint({"WakelockTimeout"})
        public void updateWakeLock(boolean z, boolean z2) {
            if (z && this.wakeLock == null) {
                PowerManager powerManager = (PowerManager) this.applicationContext.getSystemService("power");
                if (powerManager == null) {
                    Log.m163w("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                    return;
                } else {
                    PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                    this.wakeLock = wakeLockNewWakeLock;
                    wakeLockNewWakeLock.setReferenceCounted(false);
                }
            }
            PowerManager.WakeLock wakeLock = this.wakeLock;
            if (wakeLock == null) {
                return;
            }
            if (z && z2) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }
}
