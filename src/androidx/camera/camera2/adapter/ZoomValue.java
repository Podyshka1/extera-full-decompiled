package androidx.camera.camera2.adapter;

import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.core.ZoomState;

/* JADX INFO: loaded from: classes3.dex */
public final class ZoomValue implements ZoomState {
    private Float linearZoom;
    private final float maxZoomRatio;
    private final float minZoomRatio;
    private final float zoomRatio;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZoomValue)) {
            return false;
        }
        ZoomValue zoomValue = (ZoomValue) obj;
        return Float.compare(this.zoomRatio, zoomValue.zoomRatio) == 0 && Float.compare(this.minZoomRatio, zoomValue.minZoomRatio) == 0 && Float.compare(this.maxZoomRatio, zoomValue.maxZoomRatio) == 0;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.zoomRatio) * 31) + Float.floatToIntBits(this.minZoomRatio)) * 31) + Float.floatToIntBits(this.maxZoomRatio);
    }

    public String toString() {
        return "ZoomValue(zoomRatio=" + this.zoomRatio + ", minZoomRatio=" + this.minZoomRatio + ", maxZoomRatio=" + this.maxZoomRatio + ')';
    }

    public ZoomValue(float f, float f2, float f3) {
        this.zoomRatio = f;
        this.minZoomRatio = f2;
        this.maxZoomRatio = f3;
    }

    @Override // androidx.camera.core.ZoomState
    public float getZoomRatio() {
        return this.zoomRatio;
    }

    @Override // androidx.camera.core.ZoomState
    public float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    @Override // androidx.camera.core.ZoomState
    public float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.core.ZoomState
    public float getLinearZoom() {
        Float f = this.linearZoom;
        return f != null ? f.floatValue() : ZoomMath.INSTANCE.getLinearZoomFromZoomRatio(this.zoomRatio, this.minZoomRatio, this.maxZoomRatio);
    }
}
