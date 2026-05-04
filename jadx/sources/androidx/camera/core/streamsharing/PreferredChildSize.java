package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Size;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PreferredChildSize {
    private final Size childSizeToScale;
    private final Rect cropRectBeforeScaling;
    private final Size originalSelectedChildSize;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreferredChildSize)) {
            return false;
        }
        PreferredChildSize preferredChildSize = (PreferredChildSize) obj;
        return Intrinsics.areEqual(this.cropRectBeforeScaling, preferredChildSize.cropRectBeforeScaling) && Intrinsics.areEqual(this.childSizeToScale, preferredChildSize.childSizeToScale) && Intrinsics.areEqual(this.originalSelectedChildSize, preferredChildSize.originalSelectedChildSize);
    }

    public int hashCode() {
        return (((this.cropRectBeforeScaling.hashCode() * 31) + this.childSizeToScale.hashCode()) * 31) + this.originalSelectedChildSize.hashCode();
    }

    public String toString() {
        return "PreferredChildSize(cropRectBeforeScaling=" + this.cropRectBeforeScaling + ", childSizeToScale=" + this.childSizeToScale + ", originalSelectedChildSize=" + this.originalSelectedChildSize + ')';
    }

    public PreferredChildSize(Rect cropRectBeforeScaling, Size childSizeToScale, Size originalSelectedChildSize) {
        Intrinsics.checkNotNullParameter(cropRectBeforeScaling, "cropRectBeforeScaling");
        Intrinsics.checkNotNullParameter(childSizeToScale, "childSizeToScale");
        Intrinsics.checkNotNullParameter(originalSelectedChildSize, "originalSelectedChildSize");
        this.cropRectBeforeScaling = cropRectBeforeScaling;
        this.childSizeToScale = childSizeToScale;
        this.originalSelectedChildSize = originalSelectedChildSize;
    }

    public final Rect getCropRectBeforeScaling() {
        return this.cropRectBeforeScaling;
    }

    public final Size getChildSizeToScale() {
        return this.childSizeToScale;
    }

    public final Size getOriginalSelectedChildSize() {
        return this.originalSelectedChildSize;
    }
}
