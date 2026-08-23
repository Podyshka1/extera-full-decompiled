package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MetadataTransform {
    private final int future;
    private final int past;
    private final TransformFn transformFn;

    public interface TransformFn {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetadataTransform)) {
            return false;
        }
        MetadataTransform metadataTransform = (MetadataTransform) obj;
        return this.past == metadataTransform.past && this.future == metadataTransform.future && Intrinsics.areEqual(this.transformFn, metadataTransform.transformFn);
    }

    public int hashCode() {
        return (((this.past * 31) + this.future) * 31) + this.transformFn.hashCode();
    }

    public String toString() {
        return "MetadataTransform(past=" + this.past + ", future=" + this.future + ", transformFn=" + this.transformFn + ')';
    }

    public MetadataTransform(int i, int i2, TransformFn transformFn) {
        Intrinsics.checkNotNullParameter(transformFn, "transformFn");
        this.past = i;
        this.future = i2;
        this.transformFn = transformFn;
        if (i < 0) {
            throw new IllegalStateException("Check failed.");
        }
        if (i2 < 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public /* synthetic */ MetadataTransform(int i, int i2, TransformFn transformFn, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new TransformFn() { // from class: androidx.camera.camera2.pipe.MetadataTransform.1
        } : transformFn);
    }
}
