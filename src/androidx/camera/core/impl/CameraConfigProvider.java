package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.CameraConfigProvider;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraConfigProvider {
    public static final CameraConfigProvider EMPTY = new CameraConfigProvider() { // from class: androidx.camera.core.impl.CameraConfigProvider$$ExternalSyntheticLambda0
        @Override // androidx.camera.core.impl.CameraConfigProvider
        public final CameraConfig getConfig(CameraInfo cameraInfo, Context context) {
            return CameraConfigProvider.CC.lambda$static$0(cameraInfo, context);
        }
    };

    CameraConfig getConfig(CameraInfo cameraInfo, Context context);

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraConfigProvider$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        static {
            CameraConfigProvider cameraConfigProvider = CameraConfigProvider.EMPTY;
        }

        public static /* synthetic */ CameraConfig lambda$static$0(CameraInfo cameraInfo, Context context) {
            return null;
        }
    }
}
