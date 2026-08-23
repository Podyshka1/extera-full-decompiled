package androidx.camera.core;

import androidx.camera.core.CameraState;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_CameraState extends CameraState {
    private final CameraState.StateError error;
    private final CameraState.Type type;

    AutoValue_CameraState(CameraState.Type type, CameraState.StateError stateError) {
        if (type == null) {
            throw new NullPointerException("Null type");
        }
        this.type = type;
        this.error = stateError;
    }

    @Override // androidx.camera.core.CameraState
    public CameraState.Type getType() {
        return this.type;
    }

    @Override // androidx.camera.core.CameraState
    public CameraState.StateError getError() {
        return this.error;
    }

    public String toString() {
        return "CameraState{type=" + this.type + ", error=" + this.error + "}";
    }

    public boolean equals(Object obj) {
        CameraState.StateError stateError;
        if (obj == this) {
            return true;
        }
        if (obj instanceof CameraState) {
            CameraState cameraState = (CameraState) obj;
            if (this.type.equals(cameraState.getType()) && ((stateError = this.error) != null ? stateError.equals(cameraState.getError()) : cameraState.getError() == null)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.type.hashCode() ^ 1000003) * 1000003;
        CameraState.StateError stateError = this.error;
        return iHashCode ^ (stateError == null ? 0 : stateError.hashCode());
    }
}
