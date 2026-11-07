package androidx.camera.core.resolutionselector;

import android.util.Size;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ResolutionFilter {
    List<Size> filter(List<Size> list, int i);
}
