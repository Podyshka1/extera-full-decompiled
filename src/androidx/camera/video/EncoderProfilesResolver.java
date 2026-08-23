package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.DynamicRanges;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.video.internal.DynamicRangeMatchedEncoderProfilesProvider;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EncoderProfilesResolver {
    public static final Companion Companion = new Companion(null);
    public static final EncoderProfilesResolver EMPTY;
    private final Map fullySpecifiedMap;
    private final EncoderProfilesProvider hostProfilesProvider;
    private final Map nonFullySpecifiedMap;
    private final int qualitySource;
    private final Set supportedDynamicRanges;

    public EncoderProfilesResolver(EncoderProfilesProvider hostProfilesProvider, int i, Set supportedDynamicRanges) {
        Intrinsics.checkNotNullParameter(hostProfilesProvider, "hostProfilesProvider");
        Intrinsics.checkNotNullParameter(supportedDynamicRanges, "supportedDynamicRanges");
        this.hostProfilesProvider = hostProfilesProvider;
        this.qualitySource = i;
        this.fullySpecifiedMap = new LinkedHashMap();
        this.nonFullySpecifiedMap = new LinkedHashMap();
        Iterator it = supportedDynamicRanges.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange = (DynamicRange) it.next();
            CapabilitiesByQuality capabilitiesByQuality = new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.hostProfilesProvider, dynamicRange), this.qualitySource);
            List supportedQualities = capabilitiesByQuality.getSupportedQualities();
            Intrinsics.checkNotNullExpressionValue(supportedQualities, "getSupportedQualities(...)");
            if (!supportedQualities.isEmpty()) {
                this.fullySpecifiedMap.put(dynamicRange, capabilitiesByQuality);
            }
        }
        this.supportedDynamicRanges = this.fullySpecifiedMap.keySet();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        EncoderProfilesProvider EMPTY2 = EncoderProfilesProvider.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY2, "EMPTY");
        EMPTY = new EncoderProfilesResolver(EMPTY2, 1, SetsKt.emptySet());
    }

    public final Set getSupportedDynamicRanges() {
        return this.supportedDynamicRanges;
    }

    public final List getSupportedQualities(DynamicRange dynamicRange) {
        List supportedQualities;
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        return (capabilities == null || (supportedQualities = capabilities.getSupportedQualities()) == null) ? CollectionsKt.emptyList() : supportedQualities;
    }

    public final Size getResolution(Quality quality, DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(quality, "quality");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.getResolution(quality);
        }
        return null;
    }

    public final VideoValidatedEncoderProfilesProxy getProfiles(Quality quality, DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(quality, "quality");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.getProfiles(quality);
        }
        return null;
    }

    public final VideoValidatedEncoderProfilesProxy findNearestHigherSupportedEncoderProfilesFor(Size size, DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        CapabilitiesByQuality capabilities = getCapabilities(dynamicRange);
        if (capabilities != null) {
            return capabilities.findNearestHigherSupportedEncoderProfilesFor(size);
        }
        return null;
    }

    private final CapabilitiesByQuality getCapabilities(DynamicRange dynamicRange) {
        if (dynamicRange.isFullySpecified()) {
            return (CapabilitiesByQuality) this.fullySpecifiedMap.get(dynamicRange);
        }
        Map map = this.nonFullySpecifiedMap;
        Object capabilitiesByQuality = map.get(dynamicRange);
        if (capabilitiesByQuality == null) {
            capabilitiesByQuality = DynamicRanges.canResolve(dynamicRange, this.fullySpecifiedMap.keySet()) ? new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.hostProfilesProvider, dynamicRange), this.qualitySource) : null;
            map.put(dynamicRange, capabilitiesByQuality);
        }
        return (CapabilitiesByQuality) capabilitiesByQuality;
    }
}
