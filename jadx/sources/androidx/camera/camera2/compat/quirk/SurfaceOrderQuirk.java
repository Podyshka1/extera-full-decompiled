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
public final class SurfaceOrderQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final List BUILD_HARDWARE_SET = CollectionsKt.listOf((Object[]) new String[]{"samsungexynos7570", "samsungexynos7870"});

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            List list = SurfaceOrderQuirk.BUILD_HARDWARE_SET;
            String HARDWARE = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = HARDWARE.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return list.contains(lowerCase);
        }
    }
}
