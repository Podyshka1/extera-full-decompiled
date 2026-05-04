package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final DynamicRange DEFAULT_DYNAMIC_RANGE;
    private final DynamicRange dynamicRange;
    private final FeatureTypeInternal featureTypeInternal;

    public DynamicRangeFeature(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        this.dynamicRange = dynamicRange;
        this.featureTypeInternal = FeatureTypeInternal.DYNAMIC_RANGE;
    }

    public final DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public boolean isSupportedIndividually(CameraInfoInternal cameraInfoInternal, SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        Set supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        Intrinsics.checkNotNullExpressionValue(supportedDynamicRanges, "getSupportedDynamicRanges(...)");
        Logger.m76d("DynamicRangeFeature", "isSupportedIndividually: cameraInfoSupportedDynamicRanges = " + supportedDynamicRanges + ", this = " + this);
        if (!supportedDynamicRanges.contains(this.dynamicRange)) {
            return false;
        }
        for (UseCase useCase : sessionConfig.getUseCases()) {
            Set supportedDynamicRanges2 = useCase.getSupportedDynamicRanges(cameraInfoInternal);
            Logger.m76d("DynamicRangeFeature", "isSupportedIndividually: useCaseSupportedDynamicRanges = " + supportedDynamicRanges2 + ", this = " + this + ", useCases = " + useCase);
            if (supportedDynamicRanges2 != null && !supportedDynamicRanges2.contains(this.dynamicRange)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "DynamicRangeFeature(dynamicRange=" + this.dynamicRange + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        DynamicRange SDR = DynamicRange.SDR;
        Intrinsics.checkNotNullExpressionValue(SDR, "SDR");
        DEFAULT_DYNAMIC_RANGE = SDR;
    }
}
