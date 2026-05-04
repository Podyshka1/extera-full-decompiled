package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class HighSpeedResolver {
    public static final Companion Companion = new Companion(null);
    private static final Range DEFAULT_FPS = new Range(120, 120);
    private final CameraMetadata cameraMetadata;
    private final Lazy isHighSpeedSupported$delegate;
    private final Lazy maxSize$delegate;
    private final Lazy streamConfigurationMapCompat$delegate;
    private final Lazy supportedSizes$delegate;

    public HighSpeedResolver(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        this.cameraMetadata = cameraMetadata;
        this.isHighSpeedSupported$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(HighSpeedResolver.isHighSpeedSupported_delegate$lambda$0(this.f$0));
            }
        });
        this.maxSize$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HighSpeedResolver.maxSize_delegate$lambda$0(this.f$0);
            }
        });
        this.streamConfigurationMapCompat$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HighSpeedResolver.streamConfigurationMapCompat_delegate$lambda$0(this.f$0);
            }
        });
        this.supportedSizes$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HighSpeedResolver.supportedSizes_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final boolean isHighSpeedSupported() {
        return ((Boolean) this.isHighSpeedSupported$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isHighSpeedSupported_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        CameraMetadata cameraMetadata = highSpeedResolver.cameraMetadata;
        CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
        int[] iArr = (int[]) cameraMetadata.get(REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            for (int i : iArr) {
                if (i == 9) {
                    return true;
                }
            }
        }
        return false;
    }

    public final Size getMaxSize() {
        return (Size) this.maxSize$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Size maxSize_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        List supportedSizes = highSpeedResolver.getSupportedSizes();
        if (supportedSizes.isEmpty()) {
            supportedSizes = null;
        }
        if (supportedSizes == null) {
            return null;
        }
        Iterator it = supportedSizes.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it.next();
        if (it.hasNext()) {
            int area = SizeUtil.getArea((Size) next);
            do {
                Object next2 = it.next();
                int area2 = SizeUtil.getArea((Size) next2);
                if (area < area2) {
                    next = next2;
                    area = area2;
                }
            } while (it.hasNext());
        }
        return (Size) next;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        return (StreamConfigurationMapCompat) this.streamConfigurationMapCompat$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StreamConfigurationMapCompat streamConfigurationMapCompat_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        CameraMetadata cameraMetadata = highSpeedResolver.cameraMetadata;
        CameraCharacteristics.Key SCALER_STREAM_CONFIGURATION_MAP = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        Intrinsics.checkNotNullExpressionValue(SCALER_STREAM_CONFIGURATION_MAP, "SCALER_STREAM_CONFIGURATION_MAP");
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            throw new IllegalArgumentException("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
        }
        return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(highSpeedResolver.cameraMetadata, streamConfigurationMap));
    }

    private final List getSupportedSizes() {
        return (List) this.supportedSizes$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List supportedSizes_delegate$lambda$0(HighSpeedResolver highSpeedResolver) {
        List list;
        Size[] highSpeedVideoSizes = highSpeedResolver.getStreamConfigurationMapCompat().getHighSpeedVideoSizes();
        return (highSpeedVideoSizes == null || (list = ArraysKt.toList(highSpeedVideoSizes)) == null) ? CollectionsKt.emptyList() : list;
    }

    public final Map filterCommonSupportedSizes(Map sizesMap) {
        Intrinsics.checkNotNullParameter(sizesMap, "sizesMap");
        List listFindCommonElements = findCommonElements(CollectionsKt.toList(sizesMap.values()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listFindCommonElements) {
            if (getSupportedSizes().contains((Size) obj)) {
                arrayList.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(sizesMap.size()));
        for (Map.Entry entry : sizesMap.entrySet()) {
            Object key = entry.getKey();
            List list = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list) {
                if (arrayList.contains((Size) obj2)) {
                    arrayList2.add(obj2);
                }
            }
            linkedHashMap.put(key, arrayList2);
        }
        return linkedHashMap;
    }

    public final int getMaxFrameRate(Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        List highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor(size);
        if (highSpeedVideoFpsRangesFor.isEmpty()) {
            highSpeedVideoFpsRangesFor = null;
        }
        if (highSpeedVideoFpsRangesFor == null) {
            Logger.m81w("HighSpeedResolver", "No supported high speed  fps for " + size);
            return 0;
        }
        Iterator it = highSpeedVideoFpsRangesFor.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        Integer num = (Integer) ((Range) it.next()).getUpper();
        while (it.hasNext()) {
            Integer num2 = (Integer) ((Range) it.next()).getUpper();
            if (num.compareTo(num2) < 0) {
                num = num2;
            }
        }
        Intrinsics.checkNotNullExpressionValue(num, "maxOf(...)");
        return num.intValue();
    }

    public final List getSizeArrangements(List sizesList) {
        Intrinsics.checkNotNullParameter(sizesList, "sizesList");
        if (sizesList.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List<Size> listFindCommonElements = findCommonElements(sizesList);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listFindCommonElements, 10));
        for (Size size : listFindCommonElements) {
            int size2 = sizesList.size();
            ArrayList arrayList2 = new ArrayList(size2);
            for (int i = 0; i < size2; i++) {
                arrayList2.add(size);
            }
            arrayList.add(arrayList2);
        }
        return arrayList;
    }

    public final Range[] getFrameRateRangesFor(List surfaceSizes) {
        Intrinsics.checkNotNullParameter(surfaceSizes, "surfaceSizes");
        int size = surfaceSizes.size();
        if (1 > size || size >= 3 || CollectionsKt.distinct(surfaceSizes).size() != 1) {
            return null;
        }
        List highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor((Size) surfaceSizes.get(0));
        if (highSpeedVideoFpsRangesFor.isEmpty()) {
            highSpeedVideoFpsRangesFor = null;
        }
        if (highSpeedVideoFpsRangesFor == null) {
            return null;
        }
        if (surfaceSizes.size() == 2) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : highSpeedVideoFpsRangesFor) {
                Range range = (Range) obj;
                if (Intrinsics.areEqual(range.getLower(), range.getUpper())) {
                    arrayList.add(obj);
                }
            }
            highSpeedVideoFpsRangesFor = arrayList;
        }
        return (Range[]) highSpeedVideoFpsRangesFor.toArray(new Range[0]);
    }

    private final List findCommonElements(List list) {
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List mutableList = CollectionsKt.toMutableList((Collection) CollectionsKt.first(list));
        Iterator it = CollectionsKt.drop(list, 1).iterator();
        while (it.hasNext()) {
            mutableList.retainAll((List) it.next());
        }
        return mutableList;
    }

    private final List getHighSpeedVideoFpsRangesFor(Size size) {
        Object objM3604constructorimpl;
        List listFilterNotNull;
        List list;
        try {
            Result.Companion companion = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(getStreamConfigurationMapCompat().getHighSpeedVideoFpsRangesFor(size));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM3604constructorimpl = Result.m3604constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3608isFailureimpl(objM3604constructorimpl)) {
            objM3604constructorimpl = null;
        }
        Range[] rangeArr = (Range[]) objM3604constructorimpl;
        return (rangeArr == null || (listFilterNotNull = ArraysKt.filterNotNull(rangeArr)) == null || (list = CollectionsKt.toList(listFilterNotNull)) == null) ? CollectionsKt.emptyList() : list;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Range getDEFAULT_FPS() {
            return HighSpeedResolver.DEFAULT_FPS;
        }

        public final boolean isHighSpeedOn(Collection attachedSurfaces, Collection newUseCaseConfigs) {
            boolean z;
            Intrinsics.checkNotNullParameter(attachedSurfaces, "attachedSurfaces");
            Intrinsics.checkNotNullParameter(newUseCaseConfigs, "newUseCaseConfigs");
            Collection collection = attachedSurfaces;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((AttachedSurfaceInfo) it.next()).getSessionType()));
            }
            Collection collection2 = newUseCaseConfigs;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
            Iterator it2 = collection2.iterator();
            while (true) {
                z = false;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList2.add(Integer.valueOf(((UseCaseConfig) it2.next()).getSessionType(0)));
            }
            List listPlus = CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
            boolean z2 = listPlus instanceof Collection;
            if (!z2 || !listPlus.isEmpty()) {
                Iterator it3 = listPlus.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    if (((Number) it3.next()).intValue() == 1) {
                        z = true;
                        break;
                    }
                }
            }
            if (!z || (z2 && listPlus.isEmpty())) {
                return z;
            }
            Iterator it4 = listPlus.iterator();
            while (it4.hasNext()) {
                if (((Number) it4.next()).intValue() != 1) {
                    throw new IllegalArgumentException("All sessionTypes should be high-speed when any of them is high-speed");
                }
            }
            return z;
        }
    }
}
