package androidx.camera.camera2.impl;

import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.pipe.CameraMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPipeCameraProperties implements CameraProperties {
    private final CameraConfig cameraConfig;
    private final CameraMetadata cameraMetadata;
    private final CameraMetadata metadata;

    public CameraPipeCameraProperties(CameraConfig cameraConfig, CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraConfig, "cameraConfig");
        this.cameraConfig = cameraConfig;
        this.cameraMetadata = cameraMetadata;
        Intrinsics.checkNotNull(cameraMetadata);
        this.metadata = cameraMetadata;
    }

    @Override // androidx.camera.camera2.impl.CameraProperties
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public String mo1439getCameraIdDz_R5H8() {
        return this.cameraConfig.m1417getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.camera2.impl.CameraProperties
    public CameraMetadata getMetadata() {
        return this.metadata;
    }
}
