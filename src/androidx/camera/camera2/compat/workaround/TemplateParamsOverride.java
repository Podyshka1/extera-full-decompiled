package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface TemplateParamsOverride {
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk */
    Map mo1415getOverrideParamsxlOpshk(RequestTemplate requestTemplate);

    public static abstract class Bindings {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final TemplateParamsOverride provideTemplateParamsOverride(CameraQuirks cameraQuirks) {
                Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
                Quirks quirks = cameraQuirks.getQuirks();
                if (CaptureIntentPreviewQuirk.Companion.workaroundByCaptureIntentPreview(quirks) || quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class)) {
                    return new TemplateParamsQuirkOverride(quirks);
                }
                return NoOpTemplateParamsOverride.INSTANCE;
            }
        }
    }
}
