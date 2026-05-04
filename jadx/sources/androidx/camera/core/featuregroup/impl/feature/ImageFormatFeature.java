package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.featuregroup.GroupableFeature;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageFormatFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
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

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
