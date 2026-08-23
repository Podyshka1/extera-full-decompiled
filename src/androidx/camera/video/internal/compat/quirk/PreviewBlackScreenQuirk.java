package androidx.camera.video.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PreviewBlackScreenQuirk implements SurfaceProcessingQuirk {
    public static final Companion Companion = new Companion(null);
    private static final boolean isMotorolaEdge20Fusion;
    private static final boolean isSamsungSmT580;

    public static final boolean load() {
        return Companion.load();
    }

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public /* synthetic */ boolean workaroundBySurfaceProcessing() {
        return SurfaceProcessingQuirk.CC.$default$workaroundBySurfaceProcessing(this);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean load() {
            return PreviewBlackScreenQuirk.isMotorolaEdge20Fusion || PreviewBlackScreenQuirk.isSamsungSmT580;
        }
    }

    static {
        String str = Build.BRAND;
        isMotorolaEdge20Fusion = StringsKt.equals(str, "motorola", true) && StringsKt.equals(Build.MODEL, "motorola edge 20 fusion", true);
        isSamsungSmT580 = StringsKt.equals(str, "samsung", true) && StringsKt.equals(Build.MODEL, "sm-t580", true);
    }
}
