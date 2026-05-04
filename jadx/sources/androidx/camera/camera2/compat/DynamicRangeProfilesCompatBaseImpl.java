package androidx.camera.camera2.compat;

import android.hardware.camera2.params.DynamicRangeProfiles;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.core.DynamicRange;
import androidx.core.util.Preconditions;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeProfilesCompatBaseImpl implements DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl {
    public static final Companion Companion = new Companion(null);
    private static final DynamicRangeProfilesCompat COMPAT_INSTANCE = new DynamicRangeProfilesCompat(new DynamicRangeProfilesCompatBaseImpl());
    private static final Set SDR_ONLY = SetsKt.setOf(DynamicRange.SDR);

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public DynamicRangeProfiles unwrap() {
        return null;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set getSupportedDynamicRanges() {
        return SDR_ONLY;
    }

    @Override // androidx.camera.camera2.compat.DynamicRangeProfilesCompat.DynamicRangeProfilesCompatImpl
    public Set getDynamicRangeCaptureRequestConstraints(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Preconditions.checkArgument(Intrinsics.areEqual(DynamicRange.SDR, dynamicRange), "DynamicRange is not supported: " + dynamicRange);
        return SDR_ONLY;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DynamicRangeProfilesCompat getCOMPAT_INSTANCE() {
            return DynamicRangeProfilesCompatBaseImpl.COMPAT_INSTANCE;
        }
    }
}
