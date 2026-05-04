package androidx.camera.camera2.pipe;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraInterop {
    public static final CameraInterop INSTANCE = new CameraInterop();
    private static final AtomicInt captureSessionIds = AtomicFU.atomic(0);

    public static final class CameraCaptureSessionId {
        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1610constructorimpl(int i) {
            return i;
        }
    }

    public interface CaptureSessionListener {
        /* JADX INFO: renamed from: onActive-rphkYDA */
        void mo1433onActiverphkYDA(String str, int i);

        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA */
        void mo1434onCaptureQueueEmptyrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onClosed-rphkYDA */
        void mo1435onClosedrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA */
        void mo1436onConfigureFailedrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onConfigured-rphkYDA */
        void mo1437onConfiguredrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onReady-rphkYDA */
        void mo1438onReadyrphkYDA(String str, int i);
    }

    private CameraInterop() {
    }
}
