package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PreviewPixelHDRnetQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List SUPPORTED_DEVICES = CollectionsKt.listOf((Object[]) new String[]{"sunfish", "bramble", "redfin", "barbet"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            if (!Device.INSTANCE.isGoogleDevice()) {
                return false;
            }
            List list = PreviewPixelHDRnetQuirk.SUPPORTED_DEVICES;
            String DEVICE = Build.DEVICE;
            Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = DEVICE.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }
    }
}
