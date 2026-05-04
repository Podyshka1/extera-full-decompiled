package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class RepeatingStreamConstraintForVideoRecordingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isHuaweiMate9();
        }

        private final boolean isHuaweiMate9() {
            return Device.INSTANCE.isHuaweiDevice() && StringsKt.equals("mha-l29", Build.MODEL, true);
        }
    }
}
