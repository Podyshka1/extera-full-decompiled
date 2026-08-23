package androidx.camera.core;

import androidx.lifecycle.LiveData;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraInfo {
    CameraIdentifier getCameraIdentifier();

    LiveData getCameraState();

    int getLensFacing();

    int getSensorRotationDegrees();

    int getSensorRotationDegrees(int i);

    LiveData getZoomState();

    boolean hasFlashUnit();
}
