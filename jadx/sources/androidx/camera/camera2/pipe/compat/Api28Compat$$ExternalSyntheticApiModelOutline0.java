package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.params.SessionConfiguration;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class Api28Compat$$ExternalSyntheticApiModelOutline0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ SessionConfiguration m54m(int i, List list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {
        return new SessionConfiguration(i, list, executor, stateCallback);
    }
}
