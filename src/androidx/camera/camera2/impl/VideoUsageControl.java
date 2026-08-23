package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.core.Logger;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoUsageControl implements UseCaseCameraControl {
    private UseCaseCameraRequestControl requestControl;
    private final AtomicInt videoUsage = AtomicFU.atomic(0);

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this.requestControl = useCaseCameraRequestControl;
    }

    public final void incrementUsage() {
        int iIncrementAndGet = this.videoUsage.incrementAndGet();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "incrementUsage: videoUsage = " + iIncrementAndGet);
        }
    }

    public final void decrementUsage() {
        int iDecrementAndGet = this.videoUsage.decrementAndGet();
        if (iDecrementAndGet >= 0) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "decrementUsage: videoUsage = " + iDecrementAndGet);
                return;
            }
            return;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "decrementUsage: videoUsage = " + iDecrementAndGet + ", which is less than 0!");
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        this.videoUsage.setValue(0);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "reset: videoUsage = 0");
        }
    }

    public final boolean isInVideoUsage() {
        int value = this.videoUsage.getValue();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "isInVideoUsage: videoUsage = " + value);
        }
        return value > 0;
    }
}
