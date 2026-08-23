package androidx.camera.core.impl;

import androidx.camera.core.impl.DeferrableSurface;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DeferrableSurfaces {
    public static void incrementAll(List<DeferrableSurface> list) throws DeferrableSurface.SurfaceClosedException {
        if (list.isEmpty()) {
            return;
        }
        int i = 0;
        do {
            try {
                list.get(i).incrementUseCount();
                i++;
            } catch (DeferrableSurface.SurfaceClosedException e) {
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    list.get(i2).decrementUseCount();
                }
                throw e;
            }
        } while (i < list.size());
    }

    public static void decrementAll(List<DeferrableSurface> list) {
        Iterator<DeferrableSurface> it = list.iterator();
        while (it.hasNext()) {
            it.next().decrementUseCount();
        }
    }
}
