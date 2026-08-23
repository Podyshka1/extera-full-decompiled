package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.featuregroup.GroupableFeature;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/ImageFormatFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "imageCaptureOutputFormat", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(I)V", "getImageCaptureOutputFormat", "()I", "featureTypeInternal", "Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "getFeatureTypeInternal", "()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "getOutputFormatLabel", "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageFormatFeature extends GroupableFeature {
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.IMAGE_FORMAT;
    private final int imageCaptureOutputFormat;

    public ImageFormatFeature(int i) {
        this.imageCaptureOutputFormat = i;
    }

    public final int getImageCaptureOutputFormat() {
        return this.imageCaptureOutputFormat;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public String toString() {
        return "ImageFormatFeature(imageCaptureOutputFormat=" + getOutputFormatLabel() + ')';
    }

    private final String getOutputFormatLabel() {
        int i = this.imageCaptureOutputFormat;
        if (i == 0) {
            return "JPEG";
        }
        if (i == 1) {
            return "JPEG_R";
        }
        return "UNDEFINED(" + this.imageCaptureOutputFormat + ')';
    }
}
