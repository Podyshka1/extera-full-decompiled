package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u0018B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0014\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Landroidx/camera/camera2/pipe/MetadataTransform;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "past", "future", "Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;", "transformFn", "<init>", "(IILandroidx/camera/camera2/pipe/MetadataTransform$TransformFn;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getPast", "getFuture", "Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;", "getTransformFn", "()Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;", "TransformFn", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MetadataTransform {
    private final int future;
    private final int past;
    private final TransformFn transformFn;

    @kotlin.Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public interface TransformFn {
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MetadataTransform)) {
            return false;
        }
        MetadataTransform metadataTransform = (MetadataTransform) other;
        return this.past == metadataTransform.past && this.future == metadataTransform.future && Intrinsics.areEqual(this.transformFn, metadataTransform.transformFn);
    }

    public int hashCode() {
        return (((Integer.hashCode(this.past) * 31) + Integer.hashCode(this.future)) * 31) + this.transformFn.hashCode();
    }

    public String toString() {
        return "MetadataTransform(past=" + this.past + ", future=" + this.future + ", transformFn=" + this.transformFn + ')';
    }

    public MetadataTransform(int i, int i2, TransformFn transformFn) {
        this.past = i;
        this.future = i2;
        this.transformFn = transformFn;
        if (i < 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
            throw null;
        }
        if (i2 >= 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
        throw null;
    }

    public /* synthetic */ MetadataTransform(int i, int i2, TransformFn transformFn, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new TransformFn() { // from class: androidx.camera.camera2.pipe.MetadataTransform.1
        } : transformFn);
    }
}
