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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class GuaranteedConfigurationsUtil {
    public static final GuaranteedConfigurationsUtil INSTANCE = new GuaranteedConfigurationsUtil();
    private static final Lazy QUERYABLE_VIC_FCQ_COMBINATIONS$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GuaranteedConfigurationsUtil.QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0();
        }
    });
    private static final Lazy QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.GuaranteedConfigurationsUtil$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GuaranteedConfigurationsUtil.QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0();
        }
    });

    private GuaranteedConfigurationsUtil() {
    }

    public final List getQUERYABLE_VIC_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_VIC_FCQ_COMBINATIONS$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0() {
        return INSTANCE.generateVicQueryableFcqCombinations();
    }

    public final List getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS() {
        return (List) QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0() {
        return INSTANCE.generateBaklavaQueryableFcqCombinations();
    }

    public static final List getLegacySupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getLimitedSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getFullSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getRAWSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getBurstSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getLevel3SupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getUltraHighResolutionSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getUltraHdrSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getConcurrentSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List generateSupportedCombinationList(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getLegacySupportedCombinationList());
        if (i == 0 || i == 1 || i == 3 || i == 4) {
            arrayList.addAll(getLimitedSupportedCombinationList());
        }
        if (i == 1 || i == 3) {
            arrayList.addAll(getFullSupportedCombinationList());
        }
        if (z) {
            arrayList.addAll(getRAWSupportedCombinationList());
        }
        if (z2 && i == 0) {
            arrayList.addAll(getBurstSupportedCombinationList());
        }
        if (i == 3) {
            arrayList.addAll(getLevel3SupportedCombinationList());
        }
        return arrayList;
    }

    public static final List get10BitSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public final List getStreamUseCaseSupportedCombinationList() {
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List getPreviewStabilizationSupportedCombinationList() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    public static final List generateHighSpeedSupportedCombinationList(Size maxSupportedSize, SurfaceSizeDefinition surfaceSizeDefinition) {
        Intrinsics.checkNotNullParameter(maxSupportedSize, "maxSupportedSize");
        Intrinsics.checkNotNullParameter(surfaceSizeDefinition, "surfaceSizeDefinition");
        ArrayList arrayList = new ArrayList();
        SurfaceConfig surfaceConfigTransformSurfaceConfig$default = SurfaceConfig.Companion.transformSurfaceConfig$default(SurfaceConfig.Companion, 34, maxSupportedSize, surfaceSizeDefinition, 0, null, null, 56, null);
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        surfaceCombination.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        surfaceCombination2.addSurfaceConfig(surfaceConfigTransformSurfaceConfig$default);
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    private final List generateVicQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    private final List generateBaklavaQueryableFcqCombinations() {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
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

    private final List createPrivJpegXCombinations(SurfaceConfig.ConfigSize configSize, SurfaceConfig.ConfigSize configSize2) {
        ArrayList arrayList = new ArrayList();
        SurfaceCombination surfaceCombination = new SurfaceCombination();
        SurfaceConfig.Companion companion = SurfaceConfig.Companion;
        SurfaceConfig.ConfigType configType = SurfaceConfig.ConfigType.PRIV;
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG, configSize2, null, 4, null));
        arrayList.add(surfaceCombination);
        SurfaceCombination surfaceCombination2 = new SurfaceCombination();
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, configType, configSize, null, 4, null));
        surfaceCombination2.addSurfaceConfig(SurfaceConfig.Companion.create$default(companion, SurfaceConfig.ConfigType.JPEG_R, configSize2, null, 4, null));
        arrayList.add(surfaceCombination2);
        return arrayList;
    }

    public final List getQueryableFcqCombinations$camera_camera2(CameraMetadata cameraMetadata, VideoStabilization videoStabilization) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Intrinsics.checkNotNullParameter(videoStabilization, "videoStabilization");
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 35) {
            CameraCharacteristics.Key INFO_SESSION_CONFIGURATION_QUERY_VERSION = CameraCharacteristics.INFO_SESSION_CONFIGURATION_QUERY_VERSION;
            Intrinsics.checkNotNullExpressionValue(INFO_SESSION_CONFIGURATION_QUERY_VERSION, "INFO_SESSION_CONFIGURATION_QUERY_VERSION");
            Object obj = cameraMetadata.get(INFO_SESSION_CONFIGURATION_QUERY_VERSION);
            if (obj != null) {
                int iIntValue = ((Number) obj).intValue();
                if (iIntValue >= 35 && videoStabilization != VideoStabilization.f25ON) {
                    arrayList.addAll(getQUERYABLE_VIC_FCQ_COMBINATIONS());
                }
                if (iIntValue >= 36 && videoStabilization != VideoStabilization.PREVIEW) {
                    arrayList.addAll(getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS());
                    return arrayList;
                }
            } else {
                throw new IllegalArgumentException("Required value was null.");
            }
        }
        return arrayList;
    }
}
