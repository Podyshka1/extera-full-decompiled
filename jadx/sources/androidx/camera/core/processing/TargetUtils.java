package androidx.camera.core.processing;

import androidx.camera.core.impl.Quirks$$ExternalSyntheticBackport0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TargetUtils {
    public static boolean isSuperset(int i, int i2) {
        return (i & i2) == i2;
    }

    public static String getHumanReadableName(int i) {
        ArrayList arrayList = new ArrayList();
        if ((i & 4) != 0) {
            arrayList.add("IMAGE_CAPTURE");
        }
        if ((i & 1) != 0) {
            arrayList.add("PREVIEW");
        }
        if ((i & 2) != 0) {
            arrayList.add("VIDEO_CAPTURE");
        }
        return Quirks$$ExternalSyntheticBackport0.m93m("|", arrayList);
    }
}
