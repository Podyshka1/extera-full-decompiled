package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.quirk.CaptureIntentPreviewQuirk;
import androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.core.impl.Quirks;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\bJ'\u0010\u0002\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0004\u0012\u00020\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&¢\u0006\u0002\b\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;", _UrlKt.FRAGMENT_ENCODE_SET, "getOverrideParams", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "template", "Landroidx/camera/camera2/pipe/RequestTemplate;", "getOverrideParams-xlOpshk", "Bindings", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public interface TemplateParamsOverride {
    /* JADX INFO: renamed from: getOverrideParams-xlOpshk */
    Map<CaptureRequest.Key<?>, Object> mo1106getOverrideParamsxlOpshk(RequestTemplate template);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b'\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Bindings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride$Bindings$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "provideTemplateParamsOverride", "Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;", "cameraQuirks", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final TemplateParamsOverride provideTemplateParamsOverride(CameraQuirks cameraQuirks) {
                Quirks quirks = cameraQuirks.getQuirks();
                if (CaptureIntentPreviewQuirk.INSTANCE.workaroundByCaptureIntentPreview(quirks) || quirks.contains(ImageCaptureFailedForVideoSnapshotQuirk.class)) {
                    return new TemplateParamsQuirkOverride(quirks);
                }
                return NoOpTemplateParamsOverride.INSTANCE;
            }
        }
    }
}
