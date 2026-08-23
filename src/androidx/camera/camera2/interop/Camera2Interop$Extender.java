package androidx.camera.camera2.interop;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.impl.Camera2ImplConfigKt;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2Interop$Extender {
    private ExtendableBuilder baseBuilder;

    public Camera2Interop$Extender(ExtendableBuilder baseBuilder) {
        Intrinsics.checkNotNullParameter(baseBuilder, "baseBuilder");
        this.baseBuilder = baseBuilder;
    }

    public final Camera2Interop$Extender setCaptureRequestOption(CaptureRequest.Key key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.baseBuilder.getMutableConfig().insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), Config.OptionPriority.ALWAYS_OVERRIDE, obj);
        return this;
    }
}
