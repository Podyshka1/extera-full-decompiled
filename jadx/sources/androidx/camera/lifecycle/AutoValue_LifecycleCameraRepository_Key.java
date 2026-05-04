package androidx.camera.lifecycle;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.lifecycle.LifecycleCameraRepository;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_LifecycleCameraRepository_Key extends LifecycleCameraRepository.Key {
    private final CameraIdentifier cameraIdentifier;
    private final int lifecycleOwnerHash;

    AutoValue_LifecycleCameraRepository_Key(int i, CameraIdentifier cameraIdentifier) {
        this.lifecycleOwnerHash = i;
        if (cameraIdentifier == null) {
            throw new NullPointerException("Null cameraIdentifier");
        }
        this.cameraIdentifier = cameraIdentifier;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.Key
    public int getLifecycleOwnerHash() {
        return this.lifecycleOwnerHash;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.Key
    public CameraIdentifier getCameraIdentifier() {
        return this.cameraIdentifier;
    }

    public String toString() {
        return "Key{lifecycleOwnerHash=" + this.lifecycleOwnerHash + ", cameraIdentifier=" + this.cameraIdentifier + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LifecycleCameraRepository.Key) {
            LifecycleCameraRepository.Key key = (LifecycleCameraRepository.Key) obj;
            if (this.lifecycleOwnerHash == key.getLifecycleOwnerHash() && this.cameraIdentifier.equals(key.getCameraIdentifier())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.lifecycleOwnerHash ^ 1000003) * 1000003) ^ this.cameraIdentifier.hashCode();
    }
}
