package androidx.camera.core.internal;

import android.media.MediaCodec;
import android.util.Range;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class HighSpeedFpsModifier {
    private static final Companion Companion = new Companion(null);

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void modifyFpsForPreviewOnlyRepeating(Collection outputConfigs, CaptureConfig.Builder repeatingConfigBuilder) {
        Range expectedFrameRateRange;
        Intrinsics.checkNotNullParameter(outputConfigs, "outputConfigs");
        Intrinsics.checkNotNullParameter(repeatingConfigBuilder, "repeatingConfigBuilder");
        if (outputConfigs.size() != 2 || !hasVideoSurface(outputConfigs) || hasVideoSurface(repeatingConfigBuilder) || (expectedFrameRateRange = repeatingConfigBuilder.getExpectedFrameRateRange()) == null) {
            return;
        }
        if (!isHighSpeedFixedFps(expectedFrameRateRange)) {
            expectedFrameRateRange = null;
        }
        if (expectedFrameRateRange != null) {
            repeatingConfigBuilder.setExpectedFrameRateRange(toPreviewOnlyRange(expectedFrameRateRange));
        }
    }

    private final boolean isHighSpeedFixedFps(Range range) {
        return ((Number) range.getUpper()).intValue() >= 120 && Intrinsics.areEqual(range.getLower(), range.getUpper());
    }

    private final Range toPreviewOnlyRange(Range range) {
        Range range2 = new Range(30, range.getUpper());
        Logger.m76d("HighSpeedFpsModifier", "Modified high-speed FPS range from " + range + " to " + range2);
        return range2;
    }

    private final boolean hasVideoSurface(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return false;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            DeferrableSurface surface = ((SessionConfig.OutputConfig) it.next()).getSurface();
            Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
            if (isVideoSurface(surface)) {
                return true;
            }
        }
        return false;
    }

    private final boolean hasVideoSurface(CaptureConfig.Builder builder) {
        Set<DeferrableSurface> surfaces = builder.getSurfaces();
        Intrinsics.checkNotNullExpressionValue(surfaces, "getSurfaces(...)");
        if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(surfaces) && surfaces.isEmpty()) {
            return false;
        }
        for (DeferrableSurface deferrableSurface : surfaces) {
            Intrinsics.checkNotNull(deferrableSurface);
            if (isVideoSurface(deferrableSurface)) {
                return true;
            }
        }
        return false;
    }

    private final boolean isVideoSurface(DeferrableSurface deferrableSurface) {
        return Intrinsics.areEqual(deferrableSurface.getContainerClass(), MediaCodec.class);
    }
}
