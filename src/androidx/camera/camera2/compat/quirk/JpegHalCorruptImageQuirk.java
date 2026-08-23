package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SoftwareJpegEncodingPreferredQuirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class JpegHalCorruptImageQuirk implements SoftwareJpegEncodingPreferredQuirk {
    public static final Companion Companion = new Companion(null);
    private static final List KNOWN_AFFECTED_DEVICES = CollectionsKt.listOf((Object[]) new String[]{"heroqltevzw", "heroqltetmo", "k61v1_basic_ref"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            List list = JpegHalCorruptImageQuirk.KNOWN_AFFECTED_DEVICES;
            String DEVICE = Build.DEVICE;
            Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
            String lowerCase = DEVICE.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }
    }
}
