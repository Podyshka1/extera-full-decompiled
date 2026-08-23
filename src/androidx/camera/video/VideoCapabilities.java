package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoCapabilities {
    public static final VideoCapabilities EMPTY = new VideoCapabilities() { // from class: androidx.camera.video.VideoCapabilities.1
        @Override // androidx.camera.video.VideoCapabilities
        public /* synthetic */ Size getResolution(Quality quality, DynamicRange dynamicRange) {
            return CC.$default$getResolution(this, quality, dynamicRange);
        }

        @Override // androidx.camera.video.VideoCapabilities
        public Set getSupportedDynamicRanges() {
            return new HashSet();
        }

        @Override // androidx.camera.video.VideoCapabilities
        public List getSupportedQualities(DynamicRange dynamicRange) {
            return new ArrayList();
        }
    };

    Size getResolution(Quality quality, DynamicRange dynamicRange);

    Set getSupportedDynamicRanges();

    List getSupportedQualities(DynamicRange dynamicRange);

    /* JADX INFO: renamed from: androidx.camera.video.VideoCapabilities$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Size $default$getResolution(VideoCapabilities videoCapabilities, Quality quality, DynamicRange dynamicRange) {
            return null;
        }
    }
}
