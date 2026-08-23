package androidx.camera.camera2.config;

import androidx.camera.camera2.impl.UseCaseCamera;

/* JADX INFO: loaded from: classes3.dex */
public interface UseCaseCameraComponent {

    public interface Builder {
        UseCaseCameraComponent build();

        Builder config(UseCaseCameraConfig useCaseCameraConfig);
    }

    UseCaseCamera getUseCaseCamera();
}
