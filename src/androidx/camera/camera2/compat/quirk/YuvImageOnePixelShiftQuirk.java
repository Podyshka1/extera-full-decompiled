package androidx.camera.camera2.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.impl.Quirk;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class YuvImageOnePixelShiftQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isMotorolaMotoG3() || isSamsungSMG532F() || isSamsungSMJ700F() || isSamsungSMA920F() || isSamsungSMJ415F() || isXiaomiMiA1();
        }

        private final boolean isMotorolaMotoG3() {
            return Device.INSTANCE.isMotorolaDevice() && StringsKt.equals("MotoG3", Build.MODEL, true);
        }

        private final boolean isSamsungSMG532F() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("SM-G532F", Build.MODEL, true);
        }

        private final boolean isSamsungSMJ700F() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("SM-J700F", Build.MODEL, true);
        }

        private final boolean isSamsungSMJ415F() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("SM-J415F", Build.MODEL, true);
        }

        private final boolean isSamsungSMA920F() {
            return Device.INSTANCE.isSamsungDevice() && StringsKt.equals("SM-A920F", Build.MODEL, true);
        }

        private final boolean isXiaomiMiA1() {
            return Device.INSTANCE.isXiaomiDevice() && StringsKt.equals("Mi A1", Build.MODEL, true);
        }
    }
}
