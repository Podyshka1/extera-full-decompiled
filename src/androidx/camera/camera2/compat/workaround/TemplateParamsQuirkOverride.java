package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class TemplateParamsQuirkOverride implements TemplateParamsOverride {
    private final boolean workaroundByCaptureIntentPreview;
    private final boolean workaroundByCaptureIntentStillCapture;

    public TemplateParamsQuirkOverride(Quirks quirks) {
        Intrinsics.checkNotNullParameter(quirks, "quirks");
        this.workaroundByCaptureIntentPreview = CaptureIntentPreviewQuirk.Companion.workaroundByCaptureIntentPreview(quirks);
        this.workaroundByCaptureIntentStillCapture = quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class);
    }

    @Override // androidx.camera.camera2.compat.workaround.TemplateParamsOverride
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk */
    public Map mo1415getOverrideParamsxlOpshk(RequestTemplate requestTemplate) {
        if (requestTemplate != null && requestTemplate.m1760unboximpl() == 3 && this.workaroundByCaptureIntentPreview) {
            return MapsKt.mapOf(TuplesKt.m1081to(CaptureRequest.CONTROL_CAPTURE_INTENT, 1));
        }
        if (requestTemplate != null && requestTemplate.m1760unboximpl() == 4 && this.workaroundByCaptureIntentStillCapture) {
            return MapsKt.mapOf(TuplesKt.m1081to(CaptureRequest.CONTROL_CAPTURE_INTENT, 2));
        }
        return MapsKt.emptyMap();
    }
}
