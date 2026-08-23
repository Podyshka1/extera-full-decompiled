package androidx.camera.video.internal.compat.quirk;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"CameraXQuirksClassDetector"})
public final class VideoInterlacingQuirk implements SurfaceProcessingQuirk {
    public static final VideoInterlacingQuirk INSTANCE = new VideoInterlacingQuirk();

    @Override // androidx.camera.core.internal.compat.quirk.SurfaceProcessingQuirk
    public /* synthetic */ boolean workaroundBySurfaceProcessing() {
        return SurfaceProcessingQuirk.CC.$default$workaroundBySurfaceProcessing(this);
    }

    private VideoInterlacingQuirk() {
    }

    private final List getDEVICE_MODELS() {
        return CollectionsKt.listOf("SM-N9208");
    }

    private final boolean isSamsungS6() {
        if (!StringsKt.equals(Build.BRAND, "Samsung", true)) {
            return false;
        }
        String PRODUCT = Build.PRODUCT;
        Intrinsics.checkNotNullExpressionValue(PRODUCT, "PRODUCT");
        return StringsKt.startsWith(PRODUCT, "zeroflte", true);
    }

    public static final boolean load() {
        VideoInterlacingQuirk videoInterlacingQuirk = INSTANCE;
        List device_models = videoInterlacingQuirk.getDEVICE_MODELS();
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String upperCase = MODEL.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return device_models.contains(upperCase) || videoInterlacingQuirk.isSamsungS6();
    }
}
