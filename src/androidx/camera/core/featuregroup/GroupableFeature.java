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
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b&\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0017¢\u0006\u0004\b\r\u0010\u000eR\u001b\u0010\u0013\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00048'X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Landroidx/camera/core/featuregroup/GroupableFeature;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", _UrlKt.FRAGMENT_ENCODE_SET, "toFeatureType", "(Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;)I", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfoInternal", "Landroidx/camera/core/SessionConfig;", "sessionConfig", _UrlKt.FRAGMENT_ENCODE_SET, "isSupportedIndividually", "(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;)Z", "featureType$delegate", "Lkotlin/Lazy;", "getFeatureType", "()I", "featureType", "getFeatureTypeInternal", "()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "featureTypeInternal", "Companion", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class GroupableFeature {

    /* JADX INFO: renamed from: featureType$delegate, reason: from kotlin metadata */
    private final Lazy featureType = LazyKt.lazy(new Function0() { // from class: androidx.camera.core.featuregroup.GroupableFeature$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            GroupableFeature groupableFeature = this.f$0;
            return Integer.valueOf(groupableFeature.toFeatureType(groupableFeature.getFeatureTypeInternal()));
        }
    });

    @JvmField
    public static final GroupableFeature HDR_HLG10 = new DynamicRangeFeature(DynamicRange.HLG_10_BIT);

    @JvmField
    public static final GroupableFeature FPS_60 = new FpsRangeFeature(60, 60);

    @JvmField
    public static final GroupableFeature PREVIEW_STABILIZATION = new VideoStabilizationFeature(VideoStabilization.PREVIEW);

    @JvmField
    public static final GroupableFeature IMAGE_ULTRA_HDR = new ImageFormatFeature(1);

    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
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
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int toFeatureType(FeatureTypeInternal featureTypeInternal) {
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
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
        return 0;
    }
}
