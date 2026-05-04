package androidx.camera.video.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class GLProcessingStuckOnCodecFlushQuirk implements Quirk {
    public static final GLProcessingStuckOnCodecFlushQuirk INSTANCE = new GLProcessingStuckOnCodecFlushQuirk();

    private GLProcessingStuckOnCodecFlushQuirk() {
    }

    public static final boolean load() {
        return INSTANCE.isPositivoTwist2Pro();
    }

    private final boolean isPositivoTwist2Pro() {
        return StringsKt.equals("positivo", Build.BRAND, true) && StringsKt.equals("twist 2 pro", Build.MODEL, true);
    }
}
