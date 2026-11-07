package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.hardware.camera2.CameraCharacteristics;
import android.util.Range;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\r\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u0016\u0010\u000e\u001a\u0012\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0018\u00010\u000fH\u0002¢\u0006\u0002\u0010\u0010J\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016R#\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk;", "Landroidx/camera/core/internal/compat/quirk/AeFpsRangeQuirk;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;)V", "range", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "getRange", "()Landroid/util/Range;", "range$delegate", "Lkotlin/Lazy;", "pickSuitableFpsRange", "availableFpsRanges", _UrlKt.FRAGMENT_ENCODE_SET, "([Landroid/util/Range;)Landroid/util/Range;", "getCorrectedFpsRange", "fpsRange", "getTargetAeFpsRange", "Companion", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"CameraXQuirksClassDetector"})
public final class AeFpsRangeLegacyQuirk implements AeFpsRangeQuirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: range$delegate, reason: from kotlin metadata */
    private final Lazy range;

    public AeFpsRangeLegacyQuirk(final CameraMetadata cameraMetadata) {
        this.range = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.quirk.AeFpsRangeLegacyQuirk$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.pickSuitableFpsRange((Range[]) cameraMetadata.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES));
            }
        });
    }

    private final Range<Integer> getRange() {
        return (Range) this.range.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Range<Integer> pickSuitableFpsRange(Range<Integer>[] availableFpsRanges) {
        Range<Integer> range = null;
        if (availableFpsRanges != null && availableFpsRanges.length != 0) {
            for (Range<Integer> range2 : availableFpsRanges) {
                Range<Integer> correctedFpsRange = getCorrectedFpsRange(range2);
                Integer num = (Integer) correctedFpsRange.getUpper();
                if (num != null && num.intValue() == 30 && (range == null || ((Number) correctedFpsRange.getLower()).intValue() < ((Number) range.getLower()).intValue())) {
                    range = correctedFpsRange;
                }
            }
        }
        return range;
    }

    private final Range<Integer> getCorrectedFpsRange(Range<Integer> fpsRange) {
        Integer numValueOf = (Integer) fpsRange.getUpper();
        Integer numValueOf2 = (Integer) fpsRange.getLower();
        if (((Number) fpsRange.getUpper()).intValue() >= 1000) {
            numValueOf = Integer.valueOf(((Number) fpsRange.getUpper()).intValue() / 1000);
        }
        if (((Number) fpsRange.getLower()).intValue() >= 1000) {
            numValueOf2 = Integer.valueOf(((Number) fpsRange.getLower()).intValue() / 1000);
        }
        return new Range<>(numValueOf2, numValueOf);
    }

    @Override // androidx.camera.core.internal.compat.quirk.AeFpsRangeQuirk
    public Range<Integer> getTargetAeFpsRange() {
        Range<Integer> range = getRange();
        return range == null ? StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED : range;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/compat/quirk/AeFpsRangeLegacyQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled(CameraMetadata cameraMetadata) {
            return CameraMetadata.INSTANCE.isHardwareLevelLegacy(cameraMetadata);
        }
    }
}
