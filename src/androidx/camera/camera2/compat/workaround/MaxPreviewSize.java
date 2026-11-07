package androidx.camera.camera2.compat.workaround;

import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.core.impl.SurfaceConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;", _UrlKt.FRAGMENT_ENCODE_SET, "extraCroppingQuirk", "Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;", "<init>", "(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;)V", "getMaxPreviewResolution", "Landroid/util/Size;", "defaultMaxPreviewResolution", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class MaxPreviewSize {
    private final ExtraCroppingQuirk extraCroppingQuirk;

    public MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk) {
        this.extraCroppingQuirk = extraCroppingQuirk;
    }

    public /* synthetic */ MaxPreviewSize(ExtraCroppingQuirk extraCroppingQuirk, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (ExtraCroppingQuirk) DeviceQuirks.INSTANCE.get(ExtraCroppingQuirk.class) : extraCroppingQuirk);
    }

    public final Size getMaxPreviewResolution(Size defaultMaxPreviewResolution) {
        Size verifiedResolution;
        ExtraCroppingQuirk extraCroppingQuirk = this.extraCroppingQuirk;
        return (extraCroppingQuirk == null || (verifiedResolution = extraCroppingQuirk.getVerifiedResolution(SurfaceConfig.ConfigType.PRIV)) == null || verifiedResolution.getWidth() * verifiedResolution.getHeight() <= defaultMaxPreviewResolution.getWidth() * defaultMaxPreviewResolution.getHeight()) ? defaultMaxPreviewResolution : verifiedResolution;
    }
}
