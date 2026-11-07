package androidx.camera.core.internal;

import android.media.MediaCodec;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000b\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0018\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r*\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0012\u0010\u0010\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\f\u0010\u0010\u001a\u00020\f*\u00020\nH\u0002J\f\u0010\u0011\u001a\u00020\f*\u00020\u0012H\u0002¨\u0006\u0014"}, d2 = {"Landroidx/camera/core/internal/HighSpeedFpsModifier;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "modifyFpsForPreviewOnlyRepeating", _UrlKt.FRAGMENT_ENCODE_SET, "outputConfigs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SessionConfig$OutputConfig;", "repeatingConfigBuilder", "Landroidx/camera/core/impl/CaptureConfig$Builder;", "isHighSpeedFixedFps", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "toPreviewOnlyRange", "hasVideoSurface", "isVideoSurface", "Landroidx/camera/core/impl/DeferrableSurface;", "Companion", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHighSpeedFpsModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HighSpeedFpsModifier.kt\nandroidx/camera/core/internal/HighSpeedFpsModifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1#2:91\n1761#3,3:92\n1761#3,3:95\n*S KotlinDebug\n*F\n+ 1 HighSpeedFpsModifier.kt\nandroidx/camera/core/internal/HighSpeedFpsModifier\n*L\n80#1:92,3\n85#1:95,3\n*E\n"})
public final class HighSpeedFpsModifier {
    private static final Companion Companion = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/camera/core/internal/HighSpeedFpsModifier$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "PREVIEW_ONLY_FPS_LOWER", _UrlKt.FRAGMENT_ENCODE_SET, "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final void modifyFpsForPreviewOnlyRepeating(Collection<? extends SessionConfig.OutputConfig> outputConfigs, CaptureConfig.Builder repeatingConfigBuilder) {
        Range<Integer> expectedFrameRateRange;
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

    private final boolean isHighSpeedFixedFps(Range<Integer> range) {
        return ((Number) range.getUpper()).intValue() >= 120 && Intrinsics.areEqual(range.getLower(), range.getUpper());
    }

    private final Range<Integer> toPreviewOnlyRange(Range<Integer> range) {
        Range<Integer> range2 = new Range<>(30, range.getUpper());
        Logger.m74d("HighSpeedFpsModifier", "Modified high-speed FPS range from " + range + " to " + range2);
        return range2;
    }

    private final boolean hasVideoSurface(Collection<? extends SessionConfig.OutputConfig> collection) {
        Collection<? extends SessionConfig.OutputConfig> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return false;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (isVideoSurface(((SessionConfig.OutputConfig) it.next()).getSurface())) {
                return true;
            }
        }
        return false;
    }

    private final boolean hasVideoSurface(CaptureConfig.Builder builder) {
        Set<DeferrableSurface> surfaces = builder.getSurfaces();
        if (surfaces != null && surfaces.isEmpty()) {
            return false;
        }
        Iterator<T> it = surfaces.iterator();
        while (it.hasNext()) {
            if (isVideoSurface((DeferrableSurface) it.next())) {
                return true;
            }
        }
        return false;
    }

    private final boolean isVideoSurface(DeferrableSurface deferrableSurface) {
        return Intrinsics.areEqual(deferrableSurface.getContainerClass(), MediaCodec.class);
    }
}
