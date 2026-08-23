package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class ImageCapturePixelHDRPlusQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_MODELS = CollectionsKt.listOf((Object[]) new String[]{"Pixel 2", "Pixel 2 XL", "Pixel 3", "Pixel 3 XL"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return ImageCapturePixelHDRPlusQuirk.BUILD_MODELS.contains(Build.MODEL) && Device.INSTANCE.isGoogleDevice() && Build.VERSION.SDK_INT >= 26;
        }
    }
}
