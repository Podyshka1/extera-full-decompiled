package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.RepeatingStreamConstraintForVideoRecordingQuirk;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import java.util.ArrayList;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SupportedRepeatingSurfaceSizeKt {
    private static final Size MINI_PREVIEW_SIZE_HUAWEI_MATE_9 = new Size(320, 240);
    private static final Comparator SIZE_COMPARATOR = new CompareSizesByArea();

    public static final Size[] getSupportedRepeatingSurfaceSizes(Size[] sizeArr) {
        Intrinsics.checkNotNullParameter(sizeArr, "<this>");
        if (((RepeatingStreamConstraintForVideoRecordingQuirk) DeviceQuirks.INSTANCE.get(RepeatingStreamConstraintForVideoRecordingQuirk.class)) == null) {
            return sizeArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : sizeArr) {
            if (SIZE_COMPARATOR.compare(size, MINI_PREVIEW_SIZE_HUAWEI_MATE_9) >= 0) {
                arrayList.add(size);
            }
        }
        return (Size[]) arrayList.toArray(new Size[0]);
    }
}
