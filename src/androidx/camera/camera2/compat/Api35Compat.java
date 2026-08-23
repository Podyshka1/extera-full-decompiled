package androidx.camera.camera2.compat;

import android.hardware.camera2.CaptureRequest;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api35Compat {
    public static final Api35Compat INSTANCE = new Api35Compat();

    private Api35Compat() {
    }

    public static final void setFlashStrengthLevel(Map parameters, int i) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        parameters.put(CaptureRequest.FLASH_STRENGTH_LEVEL, Integer.valueOf(i));
    }
}
