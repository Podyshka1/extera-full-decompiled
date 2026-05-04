package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoStabilizationFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final VideoStabilization DEFAULT_STABILIZATION = VideoStabilization.OFF;
    private final FeatureTypeInternal featureTypeInternal;
    private final VideoStabilization videoStabilization;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoStabilization.values().length];
            try {
                iArr[VideoStabilization.f25ON.ordinal()] = 1;
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
        Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
        this.videoStabilization = videoStabilization;
        this.featureTypeInternal = FeatureTypeInternal.VIDEO_STABILIZATION;
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
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
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
        throw new NoWhenBranchMatchedException();
    }

    public String toString() {
        return "VideoStabilizationFeature(mode=" + this.videoStabilization.name() + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
