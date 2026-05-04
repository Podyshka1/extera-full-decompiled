package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession$StateCallback;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class Api31Compat$$ExternalSyntheticApiModelOutline0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ ExtensionSessionConfiguration m56m(int i, List list, Executor executor, CameraExtensionSession$StateCallback cameraExtensionSession$StateCallback) {
        return new ExtensionSessionConfiguration(i, list, executor, cameraExtensionSession$StateCallback);
    }
}
