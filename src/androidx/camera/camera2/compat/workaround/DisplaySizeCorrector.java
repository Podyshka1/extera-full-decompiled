package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.SmallDisplaySizeQuirk;

/* JADX INFO: loaded from: classes3.dex */
public final class DisplaySizeCorrector {
    private final SmallDisplaySizeQuirk smallDisplaySizeQuirk = (SmallDisplaySizeQuirk) DeviceQuirks.INSTANCE.get(SmallDisplaySizeQuirk.class);

    public final Size getDisplaySize() {
        SmallDisplaySizeQuirk smallDisplaySizeQuirk = this.smallDisplaySizeQuirk;
        if (smallDisplaySizeQuirk != null) {
            return smallDisplaySizeQuirk.getDisplaySize();
        }
        return null;
    }
}
