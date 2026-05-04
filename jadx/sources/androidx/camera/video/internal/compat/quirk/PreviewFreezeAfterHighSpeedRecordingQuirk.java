package androidx.camera.video.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PreviewFreezeAfterHighSpeedRecordingQuirk implements Quirk {
    public static final PreviewFreezeAfterHighSpeedRecordingQuirk INSTANCE = new PreviewFreezeAfterHighSpeedRecordingQuirk();
    private static final boolean isPixelPhone;

    private PreviewFreezeAfterHighSpeedRecordingQuirk() {
    }

    public static final boolean load() {
        return isPixelPhone;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    static {
        boolean z;
        if (StringsKt.equals(Build.BRAND, "google", true)) {
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            z = StringsKt.startsWith(MODEL, "Pixel", true);
        }
        isPixelPhone = z;
    }
}
