package androidx.camera.core.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CameraCaptureCallbacks {
    public static CameraCaptureCallback createNoOpCallback() {
        return new NoOpCameraCaptureCallback();
    }

    static CameraCaptureCallback createComboCallback(List list) {
        if (list.isEmpty()) {
            return createNoOpCallback();
        }
        if (list.size() == 1) {
            return (CameraCaptureCallback) list.get(0);
        }
        return new ComboCameraCaptureCallback(list);
    }

    public static CameraCaptureCallback createComboCallback(CameraCaptureCallback... cameraCaptureCallbackArr) {
        return createComboCallback(Arrays.asList(cameraCaptureCallbackArr));
    }

    static final class NoOpCameraCaptureCallback extends CameraCaptureCallback {
        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, CameraCaptureFailure cameraCaptureFailure) {
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureStarted(int i) {
        }

        NoOpCameraCaptureCallback() {
        }
    }

    public static final class ComboCameraCaptureCallback extends CameraCaptureCallback {
        private final List mCallbacks = new ArrayList();

        ComboCameraCaptureCallback(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) it.next();
                if (!(cameraCaptureCallback instanceof NoOpCameraCaptureCallback)) {
                    this.mCallbacks.add(cameraCaptureCallback);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureStarted(int i) {
            Iterator it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).onCaptureStarted(i);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, CameraCaptureResult cameraCaptureResult) {
            Iterator it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).onCaptureCompleted(i, cameraCaptureResult);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, CameraCaptureFailure cameraCaptureFailure) {
            Iterator it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).onCaptureFailed(i, cameraCaptureFailure);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled(int i) {
            Iterator it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).onCaptureCancelled(i);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureProcessProgressed(int i, int i2) {
            Iterator it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                ((CameraCaptureCallback) it.next()).onCaptureProcessProgressed(i, i2);
            }
        }
    }
}
