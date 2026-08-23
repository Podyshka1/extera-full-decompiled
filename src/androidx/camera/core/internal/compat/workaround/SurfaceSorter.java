package androidx.camera.core.internal.compat.workaround;

import android.media.MediaCodec;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.SurfaceOrderQuirk;
import androidx.camera.core.streamsharing.StreamSharing;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SurfaceSorter {
    private final boolean mHasQuirk;

    public SurfaceSorter() {
        this.mHasQuirk = DeviceQuirks.get(SurfaceOrderQuirk.class) != null;
    }

    public void sort(List list) {
        if (this.mHasQuirk) {
            Collections.sort(list, new Comparator() { // from class: androidx.camera.core.internal.compat.workaround.SurfaceSorter$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return SurfaceSorter.$r8$lambda$UabBosrqJDhzqUepvZGts2v0jo8(this.f$0, (SessionConfig.OutputConfig) obj, (SessionConfig.OutputConfig) obj2);
                }
            });
        }
    }

    public static /* synthetic */ int $r8$lambda$UabBosrqJDhzqUepvZGts2v0jo8(SurfaceSorter surfaceSorter, SessionConfig.OutputConfig outputConfig, SessionConfig.OutputConfig outputConfig2) {
        surfaceSorter.getClass();
        return surfaceSorter.getSurfacePriority(outputConfig.getSurface()) - surfaceSorter.getSurfacePriority(outputConfig2.getSurface());
    }

    private int getSurfacePriority(DeferrableSurface deferrableSurface) {
        if (deferrableSurface.getContainerClass() == MediaCodec.class) {
            return 2;
        }
        return (deferrableSurface.getContainerClass() == Preview.class || deferrableSurface.getContainerClass() == StreamSharing.class) ? 0 : 1;
    }
}
