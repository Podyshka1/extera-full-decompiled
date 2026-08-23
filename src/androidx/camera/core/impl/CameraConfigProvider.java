package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.core.CameraInfo;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraConfigProvider {
    public static final CameraConfigProvider EMPTY = new CameraConfigProvider() { // from class: androidx.camera.core.impl.CameraConfigProvider$$ExternalSyntheticLambda0
        @Override // androidx.camera.core.impl.CameraConfigProvider
        public final CameraConfig getConfig(CameraInfo cameraInfo, Context context) {
            return CameraConfigProvider.$r8$lambda$7WTJfU0r9J9r4DloMvQnvbitKag(cameraInfo, context);
        }
    };

    CameraConfig getConfig(CameraInfo cameraInfo, Context context);

    static /* synthetic */ CameraConfig $r8$lambda$7WTJfU0r9J9r4DloMvQnvbitKag(CameraInfo cameraInfo, Context context) {
        return null;
    }
}
