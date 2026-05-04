package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.Locale;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtraCroppingQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);
    private static final Map SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP = MapsKt.mutableMapOf(TuplesKt.m1081to("SM-T580", null), TuplesKt.m1081to("SM-J710MN", new Range(21, 26)), TuplesKt.m1081to("SM-A320FL", null), TuplesKt.m1081to("SM-G570M", null), TuplesKt.m1081to("SM-G610F", null), TuplesKt.m1081to("SM-G610M", new Range(21, 26)));

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SurfaceConfig.ConfigType.values().length];
            try {
                iArr[SurfaceConfig.ConfigType.PRIV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SurfaceConfig.ConfigType.YUV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SurfaceConfig.ConfigType.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final Size getVerifiedResolution(SurfaceConfig.ConfigType configType) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        if (!Companion.isSamsungDistortion$camera_camera2()) {
            return null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[configType.ordinal()];
        if (i == 1) {
            return new Size(1920, 1080);
        }
        if (i == 2) {
            return new Size(1280, 720);
        }
        if (i != 3) {
            return null;
        }
        return new Size(3264, 1836);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isSamsungDistortion$camera_camera2();
        }

        public final boolean isSamsungDistortion$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            Map map = ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            Locale locale = Locale.ROOT;
            String upperCase = MODEL.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            if (!map.containsKey(upperCase)) {
                return false;
            }
            Map map2 = ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase2 = MODEL.toUpperCase(locale);
            Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
            Range range = (Range) map2.get(upperCase2);
            if (range != null) {
                return range.contains(Integer.valueOf(Build.VERSION.SDK_INT));
            }
            return true;
        }
    }
}
