package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "videoStabilization", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "<init>", "(Landroidx/camera/core/impl/stabilization/VideoStabilization;)V", "getVideoStabilization", "()Landroidx/camera/core/impl/stabilization/VideoStabilization;", "featureTypeInternal", "Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "getFeatureTypeInternal", "()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "isSupportedIndividually", _UrlKt.FRAGMENT_ENCODE_SET, "cameraInfoInternal", "Landroidx/camera/core/impl/CameraInfoInternal;", "sessionConfig", "Landroidx/camera/core/SessionConfig;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoStabilizationFeature extends GroupableFeature {

    @JvmField
    public static final VideoStabilization DEFAULT_STABILIZATION = VideoStabilization.OFF;
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.VIDEO_STABILIZATION;
    private final VideoStabilization videoStabilization;

    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoStabilization.values().length];
            try {
                iArr[VideoStabilization.ON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VideoStabilization.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VideoStabilization.OFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[VideoStabilization.UNSPECIFIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public VideoStabilizationFeature(VideoStabilization videoStabilization) {
        this.videoStabilization = videoStabilization;
    }

    public final VideoStabilization getVideoStabilization() {
        return this.videoStabilization;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public boolean isSupportedIndividually(CameraInfoInternal cameraInfoInternal, SessionConfig sessionConfig) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.videoStabilization.ordinal()];
        if (i == 1) {
            return cameraInfoInternal.isVideoStabilizationSupported();
        }
        if (i == 2) {
            return cameraInfoInternal.isPreviewStabilizationSupported();
        }
        if (i == 3 || i == 4) {
            return true;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
        return false;
    }

    public String toString() {
        return "VideoStabilizationFeature(mode=" + this.videoStabilization.name() + ')';
    }
}
