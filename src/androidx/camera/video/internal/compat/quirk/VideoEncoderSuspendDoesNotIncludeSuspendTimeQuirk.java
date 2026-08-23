package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;

/* JADX INFO: loaded from: classes4.dex */
public class VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk implements Quirk {
    static boolean load() {
        return "Samsung".equalsIgnoreCase(Build.BRAND) && Build.VERSION.SDK_INT < 29;
    }
}
