package androidx.camera.video.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class PrematureEndOfStreamVideoQuirk implements Quirk {
    public static final PrematureEndOfStreamVideoQuirk INSTANCE = new PrematureEndOfStreamVideoQuirk();
    private static final boolean isCph1931;

    private PrematureEndOfStreamVideoQuirk() {
    }

    public static final boolean load() {
        return isCph1931;
    }

    static {
        isCph1931 = StringsKt.equals("OPPO", Build.BRAND, true) && StringsKt.equals("CPH1931", Build.MODEL, true);
    }
}
