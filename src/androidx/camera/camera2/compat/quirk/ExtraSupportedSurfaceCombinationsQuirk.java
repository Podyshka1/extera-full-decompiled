package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtraSupportedSurfaceCombinationsQuirk implements Quirk {
    public static final Companion Companion;
    private static final SurfaceCombination FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION;
    private static final SurfaceCombination FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION;
    private static final SurfaceCombination LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION;
    private static final Set SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS;
    private static final Set SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS;

    public final List getExtraSupportedSurfaceCombinations(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Companion companion = Companion;
        if (companion.isSamsungS7$camera_camera2()) {
            return getSamsungS7ExtraCombinations(cameraId);
        }
        if (companion.supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() || companion.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()) {
            return CollectionsKt.listOf(LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION);
        }
        return CollectionsKt.emptyList();
    }

    private final List getSamsungS7ExtraCombinations(String str) {
        ArrayList arrayList = new ArrayList();
        if (Intrinsics.areEqual(str, "1")) {
            arrayList.add(FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION);
        }
        return arrayList;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isEnabled() {
            return isSamsungS7$camera_camera2() || supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() || supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2();
        }

        public final boolean isSamsungS7$camera_camera2() {
            String str = Build.DEVICE;
            return StringsKt.equals("heroqltevzw", str, true) || StringsKt.equals("heroqltetmo", str, true);
        }

        public final boolean supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() {
            if (!Device.INSTANCE.isGoogleDevice()) {
                return false;
            }
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase = MODEL.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS.contains(upperCase);
        }

        public final boolean supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            String upperCase = MODEL.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            Iterator it = ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS.iterator();
            while (it.hasNext()) {
                if (StringsKt.startsWith$default(upperCase, (String) it.next(), false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        }

        public final SurfaceCombination createFullYuvPrivYuvConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createFullYuvYuvYuvConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.Companion;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.YUV, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION = companion.createFullYuvPrivYuvConfiguration$camera_camera2();
        FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION = companion.createFullYuvYuvYuvConfiguration$camera_camera2();
        LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION = companion.createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2();
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS = SetsKt.setOf((Object[]) new String[]{"PIXEL 6", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO", "PIXEL 9", "PIXEL 9 PRO", "PIXEL 9 PRO XL", "PIXEL 9 PRO FOLD"});
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS = SetsKt.setOf((Object[]) new String[]{"SM-S921", "SC-51E", "SCG25", "SM-S926", "SM-S928", "SC-52E", "SCG26", "SM-S931", "SM-S936", "SM-S937", "SM-S938", "SCG31", "SCG32", "SC-51F", "SC-52F"});
    }
}
