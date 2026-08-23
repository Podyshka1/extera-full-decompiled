package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018¨\u0006\u001a"}, d2 = {"Landroidx/camera/core/streamsharing/PreferredChildSize;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/graphics/Rect;", "cropRectBeforeScaling", "Landroid/util/Size;", "childSizeToScale", "originalSelectedChildSize", "<init>", "(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroid/graphics/Rect;", "getCropRectBeforeScaling", "()Landroid/graphics/Rect;", "Landroid/util/Size;", "getChildSizeToScale", "()Landroid/util/Size;", "getOriginalSelectedChildSize", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class PreferredChildSize {
    private final Size childSizeToScale;
    private final Rect cropRectBeforeScaling;
    private final Size originalSelectedChildSize;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreferredChildSize)) {
            return false;
        }
        PreferredChildSize preferredChildSize = (PreferredChildSize) other;
        return Intrinsics.areEqual(this.cropRectBeforeScaling, preferredChildSize.cropRectBeforeScaling) && Intrinsics.areEqual(this.childSizeToScale, preferredChildSize.childSizeToScale) && Intrinsics.areEqual(this.originalSelectedChildSize, preferredChildSize.originalSelectedChildSize);
    }

    public int hashCode() {
        return (((this.cropRectBeforeScaling.hashCode() * 31) + this.childSizeToScale.hashCode()) * 31) + this.originalSelectedChildSize.hashCode();
    }

    public String toString() {
        return "PreferredChildSize(cropRectBeforeScaling=" + this.cropRectBeforeScaling + ", childSizeToScale=" + this.childSizeToScale + ", originalSelectedChildSize=" + this.originalSelectedChildSize + ')';
    }

    public PreferredChildSize(Rect rect, Size size, Size size2) {
        this.cropRectBeforeScaling = rect;
        this.childSizeToScale = size;
        this.originalSelectedChildSize = size2;
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
