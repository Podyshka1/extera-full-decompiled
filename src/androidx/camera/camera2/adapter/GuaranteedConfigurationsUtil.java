package androidx.camera.camera2.adapter;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J&\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0007J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007J\u001e\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0007J\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u001e\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0002J#\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0000¢\u0006\u0002\b0R!\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\n\u001a\u0004\b\f\u0010\b¨\u00061"}, d2 = {"Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "QUERYABLE_VIC_FCQ_COMBINATIONS", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceCombination;", "getQUERYABLE_VIC_FCQ_COMBINATIONS", "()Ljava/util/List;", "QUERYABLE_VIC_FCQ_COMBINATIONS$delegate", "Lkotlin/Lazy;", "QUERYABLE_BAKLAVA_FCQ_COMBINATIONS", "getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS", "QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate", "getLegacySupportedCombinationList", "getLimitedSupportedCombinationList", "getFullSupportedCombinationList", "getRAWSupportedCombinationList", "getBurstSupportedCombinationList", "getLevel3SupportedCombinationList", "getUltraHighResolutionSupportedCombinationList", "getUltraHdrSupportedCombinationList", "getConcurrentSupportedCombinationList", "generateSupportedCombinationList", "hardwareLevel", _UrlKt.FRAGMENT_ENCODE_SET, "isRawSupported", _UrlKt.FRAGMENT_ENCODE_SET, "isBurstCaptureSupported", "get10BitSupportedCombinationList", "getStreamUseCaseSupportedCombinationList", "getPreviewStabilizationSupportedCombinationList", "generateHighSpeedSupportedCombinationList", "maxSupportedSize", "Landroid/util/Size;", "surfaceSizeDefinition", "Landroidx/camera/core/impl/SurfaceSizeDefinition;", "generateVicQueryableFcqCombinations", "generateBaklavaQueryableFcqCombinations", "createPrivJpegXCombinations", "privSize", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "jpegXSize", "getQueryableFcqCombinations", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "videoStabilization", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "getQueryableFcqCombinations$camera_camera2", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGuaranteedConfigurationsUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuaranteedConfigurationsUtil.kt\nandroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1120:1\n1#2:1121\n*E\n"})
public final class GuaranteedConfigurationsUtil {
    public static final GuaranteedConfigurationsUtil INSTANCE = new GuaranteedConfigurationsUtil();

    /* JADX INFO: renamed from: QUERYABLE_VIC_FCQ_COMBINATIONS$delegate, reason: from kotlin metadata */
    private static final Lazy QUERYABLE_VIC_FCQ_COMBINATIONS = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GuaranteedConfigurationsUtil.INSTANCE.generateVicQueryableFcqCombinations();
        }
    });

    /* JADX INFO: renamed from: QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate, reason: from kotlin metadata */
    private static final Lazy QUERYABLE_BAKLAVA_FCQ_COMBINATIONS = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GuaranteedConfigurationsUtil.INSTANCE.generateBaklavaQueryableFcqCombinations();
        }
    });

    private GuaranteedConfigurationsUtil() {
    }

    public final List<SurfaceCombination> getQUERYABLE_VIC_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_VIC_FCQ_COMBINATIONS.getValue();
    }

    public final List<SurfaceCombination> getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_BAKLAVA_FCQ_COMBINATIONS.getValue();
    }

    @JvmStatic
    public static final List<SurfaceCombination> getLegacySupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination8);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getLimitedSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, SurfaceConfig.ConfigSize.MAXIMUM, null, 4, null));
        arrayList.add(surfaceCombination6);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getFullSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize2, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.VGA;
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination6);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getRAWSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.RAW;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination8);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getBurstSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination3);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getLevel3SupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.VGA;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.RAW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize3, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getUltraHighResolutionSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.ULTRA_MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType4 = SurfaceConfig.ConfigType.RAW;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize4, null, 4, null));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null));
        arrayList.add(surfaceCombination8);
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize4, null, 4, null));
        arrayList.add(surfaceCombination9);
        SurfaceCombination surfaceCombination10 = new SurfaceCombination();
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null));
        arrayList.add(surfaceCombination10);
        SurfaceCombination surfaceCombination11 = new SurfaceCombination();
        surfaceCombination11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        surfaceCombination11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination11.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null));
        arrayList.add(surfaceCombination11);
        SurfaceCombination surfaceCombination12 = new SurfaceCombination();
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize, null, 4, null));
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination12.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType4, configSize4, null, 4, null));
        arrayList.add(surfaceCombination12);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getUltraHdrSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.JPEG_R;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.PRIV, SurfaceConfig.ConfigSize.PREVIEW, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> getConcurrentSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.YUV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.PRIV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination8);
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination9);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> generateSupportedCombinationList(int hardwareLevel, boolean isRawSupported, boolean isBurstCaptureSupported) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getLegacySupportedCombinationList());
        if (hardwareLevel == 0 || hardwareLevel == 1 || hardwareLevel == 3 || hardwareLevel == 4) {
            arrayList.addAll(getLimitedSupportedCombinationList());
        }
        if (hardwareLevel == 1 || hardwareLevel == 3) {
            arrayList.addAll(getFullSupportedCombinationList());
        }
        if (isRawSupported) {
            arrayList.addAll(getRAWSupportedCombinationList());
        }
        if (isBurstCaptureSupported && hardwareLevel == 0) {
            arrayList.addAll(getBurstSupportedCombinationList());
        }
        if (hardwareLevel == 3) {
            arrayList.addAll(getLevel3SupportedCombinationList());
        }
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> get10BitSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        Unit unit = Unit.INSTANCE;
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize, null, 4, null));
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.RECORD;
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize3, null, 4, null));
        return CollectionsKt.listOf((Object[]) new SurfaceCombination[]{surfaceCombination, surfaceCombination2, surfaceCombination3, surfaceCombination4, surfaceCombination5, surfaceCombination6, surfaceCombination7, surfaceCombination8});
    }

    public final List<SurfaceCombination> getStreamUseCaseSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        StreamUseCase streamUseCase = StreamUseCase.PREVIEW_VIDEO_STILL;
        surfaceCombination.addSurfaceConfig(companion.create(configType, configSize, streamUseCase));
        Unit unit = Unit.INSTANCE;
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(companion.create(configType2, configSize, streamUseCase));
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.RECORD;
        StreamUseCase streamUseCase2 = StreamUseCase.VIDEO_RECORD;
        surfaceCombination3.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM;
        StreamUseCase streamUseCase3 = StreamUseCase.STILL_CAPTURE;
        surfaceCombination5.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(companion.create(configType2, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.PREVIEW;
        StreamUseCase streamUseCase4 = StreamUseCase.PREVIEW;
        surfaceCombination7.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination7.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination8.addSurfaceConfig(companion.create(configType2, configSize3, streamUseCase3));
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination9.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination10 = new SurfaceCombination();
        surfaceCombination10.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination10.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        SurfaceCombination surfaceCombination11 = new SurfaceCombination();
        surfaceCombination11.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination11.addSurfaceConfig(companion.create(configType2, configSize4, streamUseCase4));
        SurfaceCombination surfaceCombination12 = new SurfaceCombination();
        surfaceCombination12.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination12.addSurfaceConfig(companion.create(configType, configSize2, streamUseCase2));
        surfaceCombination12.addSurfaceConfig(companion.create(configType3, configSize2, streamUseCase3));
        SurfaceCombination surfaceCombination13 = new SurfaceCombination();
        surfaceCombination13.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination13.addSurfaceConfig(companion.create(configType2, configSize2, streamUseCase2));
        surfaceCombination13.addSurfaceConfig(companion.create(configType3, configSize2, streamUseCase3));
        SurfaceCombination surfaceCombination14 = new SurfaceCombination();
        surfaceCombination14.addSurfaceConfig(companion.create(configType, configSize4, streamUseCase4));
        surfaceCombination14.addSurfaceConfig(companion.create(configType2, configSize4, streamUseCase4));
        surfaceCombination14.addSurfaceConfig(companion.create(configType3, configSize3, streamUseCase3));
        return CollectionsKt.listOf((Object[]) new SurfaceCombination[]{surfaceCombination, surfaceCombination2, surfaceCombination3, surfaceCombination4, surfaceCombination5, surfaceCombination6, surfaceCombination7, surfaceCombination8, surfaceCombination9, surfaceCombination10, surfaceCombination11, surfaceCombination12, surfaceCombination13, surfaceCombination14});
    }

    @JvmStatic
    public static final List<SurfaceCombination> getPreviewStabilizationSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1440P_4_3;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigType configType2 = SurfaceConfig.ConfigType.YUV;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        SurfaceConfig.ConfigType configType3 = SurfaceConfig.ConfigType.JPEG;
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.MAXIMUM;
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType3, configSize2, null, 4, null));
        arrayList.add(surfaceCombination4);
        SurfaceCombination surfaceCombination5 = new SurfaceCombination();
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination5.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination5);
        SurfaceCombination surfaceCombination6 = new SurfaceCombination();
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        surfaceCombination6.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize2, null, 4, null));
        arrayList.add(surfaceCombination6);
        SurfaceCombination surfaceCombination7 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.PREVIEW;
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination7.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination7);
        SurfaceCombination surfaceCombination8 = new SurfaceCombination();
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombination8.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination8);
        SurfaceCombination surfaceCombination9 = new SurfaceCombination();
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize3, null, 4, null));
        surfaceCombination9.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination9);
        SurfaceCombination surfaceCombination10 = new SurfaceCombination();
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize3, null, 4, null));
        surfaceCombination10.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType2, configSize, null, 4, null));
        arrayList.add(surfaceCombination10);
        return arrayList;
    }

    @JvmStatic
    public static final List<SurfaceCombination> generateHighSpeedSupportedCombinationList(Size maxSupportedSize, SurfaceSizeDefinition surfaceSizeDefinition) {
        ArrayList arrayList = new ArrayList();
        SurfaceConfig surfaceConfigTransformSurfaceConfig$default = SurfaceConfig.Companion.transformSurfaceConfig$default(SurfaceConfig.INSTANCE, 34, maxSupportedSize, surfaceSizeDefinition, 0, null, null, 56, null);
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        surfaceCombination.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SurfaceCombination> generateVicQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        SurfaceConfig.ConfigSize configSize2 = SurfaceConfig.ConfigSize.S720P_16_9;
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize2, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceConfig.ConfigSize configSize3 = SurfaceConfig.ConfigSize.MAXIMUM_16_9;
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize3));
        SurfaceConfig.ConfigSize configSize4 = SurfaceConfig.ConfigSize.UHD;
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize4));
        arrayList.addAll(createPrivJpegXCombinations(configSize, SurfaceConfig.ConfigSize.S1440P_16_9));
        arrayList.addAll(createPrivJpegXCombinations(configSize, configSize));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize3));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize4));
        arrayList.addAll(createPrivJpegXCombinations(configSize2, configSize));
        SurfaceConfig.ConfigSize configSize5 = SurfaceConfig.ConfigSize.X_VGA;
        SurfaceConfig.ConfigSize configSize6 = SurfaceConfig.ConfigSize.MAXIMUM_4_3;
        arrayList.addAll(createPrivJpegXCombinations(configSize5, configSize6));
        arrayList.addAll(createPrivJpegXCombinations(SurfaceConfig.ConfigSize.S1080P_4_3, configSize6));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<SurfaceCombination> generateBaklavaQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        SurfaceConfig.ConfigSize configSize = SurfaceConfig.ConfigSize.S1080P_16_9;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.S1440P_16_9, null, 4, null));
        arrayList.add(surfaceCombination2);
        SurfaceCombination surfaceCombination3 = new SurfaceCombination();
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination3.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, SurfaceConfig.ConfigSize.UHD, null, 4, null));
        arrayList.add(surfaceCombination3);
        SurfaceCombination surfaceCombination4 = new SurfaceCombination();
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.YUV, configSize, null, 4, null));
        surfaceCombination4.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        arrayList.add(surfaceCombination4);
        return arrayList;
    }

    private final List<SurfaceCombination> createPrivJpegXCombinations(SurfaceConfig.ConfigSize privSize, SurfaceConfig.ConfigSize jpegXSize) {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, privSize, null, 4, null));
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, jpegXSize, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, privSize, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG_R, jpegXSize, null, 4, null));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    public final List<SurfaceCombination> getQueryableFcqCombinations$camera_camera2(CameraMetadata cameraMetadata, VideoStabilization videoStabilization) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 35) {
            Object obj = cameraMetadata.get((CameraCharacteristics.Key<Object>) CameraCharacteristics.INFO_SESSION_CONFIGURATION_QUERY_VERSION);
            if (obj != null) {
                int iIntValue = ((Number) obj).intValue();
                if (iIntValue >= 35 && videoStabilization != VideoStabilization.ON) {
                    arrayList.addAll(getQUERYABLE_VIC_FCQ_COMBINATIONS());
                }
                if (iIntValue >= 36 && videoStabilization != VideoStabilization.PREVIEW) {
                    arrayList.addAll(getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS());
                    return arrayList;
                }
            } else {
                f$$ExternalSyntheticBUOutline1.m178m("Required value was null.");
                return null;
            }
        }
        return arrayList;
    }
}
