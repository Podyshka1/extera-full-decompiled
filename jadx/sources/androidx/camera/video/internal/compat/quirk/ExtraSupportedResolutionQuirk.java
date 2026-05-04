package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;

/* JADX INFO: loaded from: classes4.dex */
public class ExtraSupportedResolutionQuirk implements SurfaceProcessingQuirk {
    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public /* synthetic */ boolean workaroundBySurfaceProcessing() {
        return SurfaceProcessingQuirk.CC.$default$workaroundBySurfaceProcessing(this);
    }

    static boolean load() {
        return isMotoE5Play();
    }

    private static boolean isMotoE5Play() {
        return "motorola".equalsIgnoreCase(Build.BRAND) && "moto e5 play".equalsIgnoreCase(Build.MODEL);
    }
}
