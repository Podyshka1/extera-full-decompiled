package androidx.camera.core;

import android.view.Surface;
import androidx.camera.core.SurfaceRequest;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_SurfaceRequest_Result extends SurfaceRequest.Result {
    private final int resultCode;
    private final Surface surface;

    AutoValue_SurfaceRequest_Result(int i, Surface surface) {
        this.resultCode = i;
        if (surface == null) {
            throw new NullPointerException("Null surface");
        }
        this.surface = surface;
    }

    @Override // androidx.camera.core.SurfaceRequest.Result
    public int getResultCode() {
        return this.resultCode;
    }

    @Override // androidx.camera.core.SurfaceRequest.Result
    public Surface getSurface() {
        return this.surface;
    }

    public String toString() {
        return "Result{resultCode=" + this.resultCode + ", surface=" + this.surface + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceRequest.Result) {
            SurfaceRequest.Result result = (SurfaceRequest.Result) obj;
            if (this.resultCode == result.getResultCode() && this.surface.equals(result.getSurface())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.resultCode ^ 1000003) * 1000003) ^ this.surface.hashCode();
    }
}
