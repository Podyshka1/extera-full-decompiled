package androidx.camera.core.impl;

import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LensFacingCameraFilter implements CameraFilter {
    private final int mLensFacing;

    @Override // androidx.camera.core.CameraFilter
    public /* synthetic */ Identifier getIdentifier() {
        return CameraFilter.DEFAULT_ID;
    }

    public LensFacingCameraFilter(int i) {
        this.mLensFacing = i;
    }

    @Override // androidx.camera.core.CameraFilter
    public List filter(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CameraInfo cameraInfo = (CameraInfo) it.next();
            Preconditions.checkArgument(cameraInfo instanceof CameraInfoInternal, "The camera info doesn't contain internal implementation.");
            if (cameraInfo.getLensFacing() == this.mLensFacing) {
                arrayList.add(cameraInfo);
            }
        }
        return arrayList;
    }

    public int getLensFacing() {
        return this.mLensFacing;
    }
}
