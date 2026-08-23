package androidx.camera.core.featuregroup;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.featuregroup.impl.feature.DynamicRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.featuregroup.impl.feature.ImageFormatFeature;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final GroupableFeature FPS_60;
    public static final GroupableFeature HDR_HLG10;
    public static final GroupableFeature IMAGE_ULTRA_HDR;
    public static final GroupableFeature PREVIEW_STABILIZATION;
    private final Lazy featureType$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.core.featuregroup.GroupableFeature$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(GroupableFeature.featureType_delegate$lambda$0(this.f$0));
        }
    });

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public abstract FeatureTypeInternal getFeatureTypeInternal();

    public boolean isSupportedIndividually(CameraInfoInternal cameraInfoInternal, SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int featureType_delegate$lambda$0(GroupableFeature groupableFeature) {
        return groupableFeature.toFeatureType(groupableFeature.getFeatureTypeInternal());
    }

    private final int toFeatureType(FeatureTypeInternal featureTypeInternal) {
        int i = WhenMappings.$EnumSwitchMapping$0[featureTypeInternal.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 4;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        DynamicRange HLG_10_BIT = DynamicRange.HLG_10_BIT;
        Intrinsics.checkNotNullExpressionValue(HLG_10_BIT, "HLG_10_BIT");
        HDR_HLG10 = new DynamicRangeFeature(HLG_10_BIT);
        FPS_60 = new FpsRangeFeature(60, 60);
        PREVIEW_STABILIZATION = new VideoStabilizationFeature(VideoStabilization.PREVIEW);
        IMAGE_ULTRA_HDR = new ImageFormatFeature(1);
    }
}
