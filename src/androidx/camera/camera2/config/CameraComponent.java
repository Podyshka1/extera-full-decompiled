package androidx.camera.camera2.config;

import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.internal.StreamSpecsCalculator;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraComponent {

    public interface Builder {
        CameraComponent build();

        Builder config(CameraConfig cameraConfig);

        Builder streamSpecsCalculator(StreamSpecsCalculator streamSpecsCalculator);
    }

    CameraInternal getCameraInternal();
}
