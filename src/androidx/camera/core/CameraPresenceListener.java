package androidx.camera.core;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraPresenceListener {
    void onCamerasAdded(Set<CameraIdentifier> set);

    void onCamerasRemoved(Set<CameraIdentifier> set);
}
