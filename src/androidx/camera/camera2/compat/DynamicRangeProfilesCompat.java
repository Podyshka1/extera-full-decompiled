package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.DynamicRange;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeProfilesCompat {
    public static final Companion Companion = new Companion(null);
    private final DynamicRangeProfilesCompatImpl impl;

    public interface DynamicRangeProfilesCompatImpl {
        Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange);

        Set getSupportedDynamicRanges();

        DynamicRangeProfiles unwrap();
    }

    public DynamicRangeProfilesCompat(DynamicRangeProfilesCompatImpl impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.impl = impl;
    }

    public final Set getSupportedDynamicRanges() {
        return this.impl.getSupportedDynamicRanges();
    }

    public final Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        return this.impl.getDynamicRangeCaptureRequestConstraints(dynamicRange);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DynamicRangeProfilesCompat fromCameraMetaData(CameraMetadata cameraMetadata) {
            DynamicRangeProfilesCompat dynamicRangesCompat;
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            if (Build.VERSION.SDK_INT >= 33) {
                CameraCharacteristics.Key REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES = CameraCharacteristics.REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES;
                Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES, "REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES");
                dynamicRangesCompat = toDynamicRangesCompat(C0116xa51471a6.m17m(cameraMetadata.get(REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES)));
            } else {
                dynamicRangesCompat = null;
            }
            return dynamicRangesCompat == null ? DynamicRangeProfilesCompatBaseImpl.Companion.getCOMPAT_INSTANCE() : dynamicRangesCompat;
        }

        public final DynamicRangeProfilesCompat toDynamicRangesCompat(DynamicRangeProfiles dynamicRangeProfiles) {
            if (dynamicRangeProfiles == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                return new DynamicRangeProfilesCompat(new DynamicRangeProfilesCompatApi33Impl(dynamicRangeProfiles));
            }
            throw new IllegalStateException(("DynamicRangeProfiles can only be converted to DynamicRangesCompat on API 33 or higher. is not supported on API " + i + " (requires API 33)").toString());
        }
    }

    public final DynamicRangeProfiles toDynamicRangeProfiles() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            return this.impl.unwrap();
        }
        throw new IllegalStateException(("DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher. is not supported on API " + i + " (requires API 33)").toString());
    }
}
