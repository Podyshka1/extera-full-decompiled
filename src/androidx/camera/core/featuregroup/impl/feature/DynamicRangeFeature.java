package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.impl.CameraInfoInternal;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\tX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/DynamicRangeFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "dynamicRange", "Landroidx/camera/core/DynamicRange;", "<init>", "(Landroidx/camera/core/DynamicRange;)V", "getDynamicRange", "()Landroidx/camera/core/DynamicRange;", "featureTypeInternal", "Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "getFeatureTypeInternal", "()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;", "isSupportedIndividually", _UrlKt.FRAGMENT_ENCODE_SET, "cameraInfoInternal", "Landroidx/camera/core/impl/CameraInfoInternal;", "sessionConfig", "Landroidx/camera/core/SessionConfig;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class DynamicRangeFeature extends GroupableFeature {

    @JvmField
    public static final DynamicRange DEFAULT_DYNAMIC_RANGE = DynamicRange.SDR;
    private final DynamicRange dynamicRange;
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.DYNAMIC_RANGE;

    public DynamicRangeFeature(DynamicRange dynamicRange) {
        this.dynamicRange = dynamicRange;
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
        Set<DynamicRange> supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        Logger.m74d("DynamicRangeFeature", "isSupportedIndividually: cameraInfoSupportedDynamicRanges = " + supportedDynamicRanges + ", this = " + this);
        if (!supportedDynamicRanges.contains(this.dynamicRange)) {
            return false;
        }
        for (UseCase useCase : sessionConfig.getUseCases()) {
            Set<DynamicRange> supportedDynamicRanges2 = useCase.getSupportedDynamicRanges(cameraInfoInternal);
            Logger.m74d("DynamicRangeFeature", "isSupportedIndividually: useCaseSupportedDynamicRanges = " + supportedDynamicRanges2 + ", this = " + this + ", useCases = " + useCase);
            if (supportedDynamicRanges2 != null && !supportedDynamicRanges2.contains(this.dynamicRange)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "DynamicRangeFeature(dynamicRange=" + this.dynamicRange + ')';
    }
}
