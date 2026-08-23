package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.core.impl.SessionConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PreviewPixelHDRnetKt {
    private static final Rational ASPECT_RATIO_16_9 = new Rational(16, 9);

    public static final void setupHDRnet(SessionConfig.Builder builder, Size resolution) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        if (((PreviewPixelHDRnetQuirk) DeviceQuirks.INSTANCE.get(PreviewPixelHDRnetQuirk.class)) == null || isAspectRatioMatch(resolution, ASPECT_RATIO_16_9)) {
            return;
        }
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        CaptureRequest.Key TONEMAP_MODE = CaptureRequest.TONEMAP_MODE;
        Intrinsics.checkNotNullExpressionValue(TONEMAP_MODE, "TONEMAP_MODE");
        builder2.setCaptureRequestOption(TONEMAP_MODE, 2);
        builder.addImplementationOptions(builder2.build());
    }

    private static final boolean isAspectRatioMatch(Size size, Rational rational) {
        return Intrinsics.areEqual(rational, new Rational(size.getWidth(), size.getHeight()));
    }
}
