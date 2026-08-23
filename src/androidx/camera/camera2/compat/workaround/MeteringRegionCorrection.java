package androidx.camera.camera2.compat.workaround;

import android.graphics.PointF;
import androidx.camera.camera2.compat.quirk.AfRegionFlipHorizontallyQuirk;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.MeteringPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;", _UrlKt.FRAGMENT_ENCODE_SET, "getCorrectedPoint", "Landroid/graphics/PointF;", "meteringPoint", "Landroidx/camera/core/MeteringPoint;", "meteringMode", _UrlKt.FRAGMENT_ENCODE_SET, "Bindings", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public interface MeteringRegionCorrection {
    PointF getCorrectedPoint(MeteringPoint meteringPoint, int meteringMode);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b'\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection$Bindings;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Bindings {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection$Bindings$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "provideMeteringRegionCorrection", "Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;", "cameraQuirks", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final MeteringRegionCorrection provideMeteringRegionCorrection(CameraQuirks cameraQuirks) {
                if (cameraQuirks.getQuirks().contains(AfRegionFlipHorizontallyQuirk.class)) {
                    return MeteringRegionQuirkCorrection.INSTANCE;
                }
                return NoOpMeteringRegionCorrection.INSTANCE;
            }
        }
    }
}
