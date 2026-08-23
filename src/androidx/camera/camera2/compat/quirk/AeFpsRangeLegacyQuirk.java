package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class AeFpsRangeLegacyQuirk implements AeFpsRangeQuirk {
    public static final Companion Companion = new Companion(null);
    private final Lazy range$delegate;

    public AeFpsRangeLegacyQuirk(final CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        this.range$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.quirk.AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AeFpsRangeLegacyQuirk.range_delegate$lambda$0(cameraMetadata, this);
            }
        });
    }

    private final Range getRange() {
        return (Range) this.range$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Range range_delegate$lambda$0(CameraMetadata cameraMetadata, AeFpsRangeLegacyQuirk aeFpsRangeLegacyQuirk) {
        CameraCharacteristics.Key CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES = CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES, "CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES");
        return aeFpsRangeLegacyQuirk.pickSuitableFpsRange((Range[]) cameraMetadata.get(CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES));
    }

    private final Range pickSuitableFpsRange(Range[] rangeArr) {
        Range range = null;
        if (rangeArr != null && rangeArr.length != 0) {
            for (Range range2 : rangeArr) {
                Range correctedFpsRange = getCorrectedFpsRange(range2);
                Integer num = (Integer) correctedFpsRange.getUpper();
                if (num != null && num.intValue() == 30 && (range == null || ((Number) correctedFpsRange.getLower()).intValue() < ((Number) range.getLower()).intValue())) {
                    range = correctedFpsRange;
                }
            }
        }
        return range;
    }

    private final Range getCorrectedFpsRange(Range range) {
        Integer numValueOf = (Integer) range.getUpper();
        Integer numValueOf2 = (Integer) range.getLower();
        if (((Number) range.getUpper()).intValue() >= 1000) {
            numValueOf = Integer.valueOf(((Number) range.getUpper()).intValue() / MediaDataController.MAX_STYLE_RUNS_COUNT);
        }
        if (((Number) range.getLower()).intValue() >= 1000) {
            numValueOf2 = Integer.valueOf(((Number) range.getLower()).intValue() / MediaDataController.MAX_STYLE_RUNS_COUNT);
        }
        return new Range(numValueOf2, numValueOf);
    }

    @Override // androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk
    public Range getTargetAeFpsRange() {
        Range range = getRange();
        if (range != null) {
            return range;
        }
        Range FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
        return FRAME_RATE_RANGE_UNSPECIFIED;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            return CameraMetadata.Companion.isHardwareLevelLegacy(cameraMetadata);
        }
    }
}
