package androidx.camera.core;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraControl {
    ListenableFuture enableTorch(boolean z);

    ListenableFuture setZoomRatio(float f);

    ListenableFuture startFocusAndMetering(FocusMeteringAction focusMeteringAction);

    public static final class OperationCanceledException extends Exception {
        public OperationCanceledException(String str) {
            super(str);
        }
    }
}
