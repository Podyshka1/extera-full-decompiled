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
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\t¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;", "Landroidx/camera/core/impl/Quirk;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceCombination;", "getSamsungS7ExtraCombinations", "(Ljava/lang/String;)Ljava/util/List;", "getExtraSupportedSurfaceCombinations", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class ExtraSupportedSurfaceCombinationsQuirk implements Quirk {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final SurfaceCombination FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION;
    private static final SurfaceCombination FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION;
    private static final SurfaceCombination LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION;
    private static final Set<String> SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS;
    private static final Set<String> SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS;

    public final List<SurfaceCombination> getExtraSupportedSurfaceCombinations(String cameraId) {
        Companion companion = INSTANCE;
        if (companion.isSamsungS7$camera_camera2()) {
            return getSamsungS7ExtraCombinations(cameraId);
        }
        if (companion.supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() || companion.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()) {
            return CollectionsKt.listOf(LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION);
        }
        return CollectionsKt.emptyList();
    }

    private final List<SurfaceCombination> getSamsungS7ExtraCombinations(String cameraId) {
        ArrayList arrayList = new ArrayList();
        if (Intrinsics.areEqual(cameraId, "1")) {
            arrayList.add(FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION);
        }
        return arrayList;
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\r\u001a\u00020\u000eJ\r\u0010\u0012\u001a\u00020\u000eH\u0000¢\u0006\u0002\b\u0013J\r\u0010\u0014\u001a\u00020\u000eH\u0000¢\u0006\u0002\b\u0015J\r\u0010\u0016\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\u0019J\r\u0010\u001a\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION", "Landroidx/camera/core/impl/SurfaceCombination;", "FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION", "LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION", "SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS", _UrlKt.FRAGMENT_ENCODE_SET, "SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS", "isEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "isSamsungS7", "isSamsungS7$camera_camera2", "()Z", "supportExtraLevel3ConfigurationsGoogleDevice", "supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2", "supportExtraLevel3ConfigurationsSamsungDevice", "supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2", "createFullYuvPrivYuvConfiguration", "createFullYuvPrivYuvConfiguration$camera_camera2", "createFullYuvYuvYuvConfiguration", "createFullYuvYuvYuvConfiguration$camera_camera2", "createLevel3PrivPrivYuvSubsetConfiguration", "createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
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
            return ExtraSupportedSurfaceCombinationsQuirk.SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS.contains(Build.MODEL.toUpperCase(Locale.ROOT));
        }

        public final boolean supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() {
            if (!Device.INSTANCE.isSamsungDevice()) {
                return false;
            }
            String upperCase = Build.MODEL.toUpperCase(Locale.ROOT);
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
            SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createFullYuvYuvYuvConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }

        public final SurfaceCombination createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2() {
            SurfaceCombination surfaceCombination = new SurfaceCombination();
            SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
            SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.VGA, null, 4, null));
            surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.YUV, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
            return surfaceCombination;
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION = companion.createFullYuvPrivYuvConfiguration$camera_camera2();
        FULL_LEVEL_YUV_YUV_YUV_CONFIGURATION = companion.createFullYuvYuvYuvConfiguration$camera_camera2();
        LEVEL_3_LEVEL_PRIV_PRIV_YUV_SUBSET_CONFIGURATION = companion.createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2();
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS = SetsKt.setOf((Object[]) new String[]{"PIXEL 6", "PIXEL 6 PRO", "PIXEL 7", "PIXEL 7 PRO", "PIXEL 8", "PIXEL 8 PRO", "PIXEL 9", "PIXEL 9 PRO", "PIXEL 9 PRO XL", "PIXEL 9 PRO FOLD"});
        SUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS = SetsKt.setOf((Object[]) new String[]{"SM-S921", "SC-51E", "SCG25", "SM-S926", "SM-S928", "SC-52E", "SCG26", "SM-S931", "SM-S936", "SM-S937", "SM-S938", "SCG31", "SCG32", "SC-51F", "SC-52F"});
    }
}
