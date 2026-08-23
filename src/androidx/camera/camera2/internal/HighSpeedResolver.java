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
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00160\u001b\"\u0004\b\u0000\u0010\u001c2\u0018\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u0002H\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00160\u001bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\fJ&\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00160\u00162\u0012\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00160\u0016J'\u0010#\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0%\u0018\u00010$2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\f0\u0016¢\u0006\u0002\u0010'J$\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u0016\"\u0004\b\u0000\u0010\u001c*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001c0\u00160\u0016H\u0002J\u001c\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0%0\u00162\u0006\u0010 \u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0006\u0010\bR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0012\u0010\u0013R!\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\n\u001a\u0004\b\u0017\u0010\u0018¨\u0006+"}, d2 = {"Landroidx/camera/camera2/internal/HighSpeedResolver;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;)V", "isHighSpeedSupported", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "isHighSpeedSupported$delegate", "Lkotlin/Lazy;", "maxSize", "Landroid/util/Size;", "getMaxSize", "()Landroid/util/Size;", "maxSize$delegate", "streamConfigurationMapCompat", "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;", "getStreamConfigurationMapCompat", "()Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;", "streamConfigurationMapCompat$delegate", "supportedSizes", _UrlKt.FRAGMENT_ENCODE_SET, "getSupportedSizes", "()Ljava/util/List;", "supportedSizes$delegate", "filterCommonSupportedSizes", _UrlKt.FRAGMENT_ENCODE_SET, "T", "sizesMap", "getMaxFrameRate", _UrlKt.FRAGMENT_ENCODE_SET, "size", "getSizeArrangements", "sizesList", "getFrameRateRangesFor", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Range;", "surfaceSizes", "(Ljava/util/List;)[Landroid/util/Range;", "findCommonElements", "getHighSpeedVideoFpsRangesFor", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHighSpeedResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HighSpeedResolver.kt\nandroidx/camera/camera2/internal/HighSpeedResolver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,237:1\n774#2:238\n865#2,2:239\n1252#2,2:243\n774#2:245\n865#2,2:246\n1255#2:248\n1563#2:250\n1634#2,3:251\n774#2:254\n865#2,2:255\n1869#2,2:261\n1969#2,14:265\n465#3:241\n415#3:242\n1#4:249\n37#5:257\n36#5,3:258\n12667#6,2:263\n*S KotlinDebug\n*F\n+ 1 HighSpeedResolver.kt\nandroidx/camera/camera2/internal/HighSpeedResolver\n*L\n80#1:238\n80#1:239,2\n81#1:243,2\n81#1:245\n81#1:246,2\n81#1:248\n130#1:250\n130#1:251,3\n160#1:254\n160#1:255,2\n182#1:261,2\n48#1:265,14\n81#1:241\n81#1:242\n164#1:257\n164#1:258,3\n41#1:263,2\n*E\n"})
public final class HighSpeedResolver {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Range<Integer> DEFAULT_FPS = new Range<>(120, 120);
    private final CameraMetadata cameraMetadata;

    /* JADX INFO: renamed from: isHighSpeedSupported$delegate, reason: from kotlin metadata */
    private final Lazy isHighSpeedSupported = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(HighSpeedResolver.$r8$lambda$O5QZeAnVoeGmQjN2Jc9dlH23mag(this.f$0));
        }
    });

    /* JADX INFO: renamed from: maxSize$delegate, reason: from kotlin metadata */
    private final Lazy maxSize = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HighSpeedResolver.$r8$lambda$ZNvvifbt712SApORMdG7iRlzVn4(this.f$0);
        }
    });

    /* JADX INFO: renamed from: streamConfigurationMapCompat$delegate, reason: from kotlin metadata */
    private final Lazy streamConfigurationMapCompat = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HighSpeedResolver.$r8$lambda$F31AeowgvxM3uU8JKUsYWGum9Ro(this.f$0);
        }
    });

    /* JADX INFO: renamed from: supportedSizes$delegate, reason: from kotlin metadata */
    private final Lazy supportedSizes = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.internal.HighSpeedResolver$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HighSpeedResolver.$r8$lambda$y1qpmO2j3UYk6EnWiZS3G3Hx_Sw(this.f$0);
        }
    });

    public HighSpeedResolver(CameraMetadata cameraMetadata) {
        this.cameraMetadata = cameraMetadata;
    }

    public final boolean isHighSpeedSupported() {
        return ((Boolean) this.isHighSpeedSupported.getValue()).booleanValue();
    }

    public static boolean $r8$lambda$O5QZeAnVoeGmQjN2Jc9dlH23mag(HighSpeedResolver highSpeedResolver) {
        int[] iArr = (int[]) highSpeedResolver.cameraMetadata.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
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
        return (Size) this.maxSize.getValue();
    }

    public static Size $r8$lambda$ZNvvifbt712SApORMdG7iRlzVn4(HighSpeedResolver highSpeedResolver) {
        List<Size> supportedSizes = highSpeedResolver.getSupportedSizes();
        if (supportedSizes.isEmpty()) {
            supportedSizes = null;
        }
        if (supportedSizes != null) {
            Iterator<T> it = supportedSizes.iterator();
            if (!it.hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m978m();
            } else {
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
        }
        return null;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        return (StreamConfigurationMapCompat) this.streamConfigurationMapCompat.getValue();
    }

    public static StreamConfigurationMapCompat $r8$lambda$F31AeowgvxM3uU8JKUsYWGum9Ro(HighSpeedResolver highSpeedResolver) {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) highSpeedResolver.cameraMetadata.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
            return null;
        }
        return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(highSpeedResolver.cameraMetadata, streamConfigurationMap));
    }

    private final List<Size> getSupportedSizes() {
        return (List) this.supportedSizes.getValue();
    }

    public static List $r8$lambda$y1qpmO2j3UYk6EnWiZS3G3Hx_Sw(HighSpeedResolver highSpeedResolver) {
        List list;
        Size[] highSpeedVideoSizes = highSpeedResolver.getStreamConfigurationMapCompat().getHighSpeedVideoSizes();
        return (highSpeedVideoSizes == null || (list = ArraysKt.toList(highSpeedVideoSizes)) == null) ? CollectionsKt.emptyList() : list;
    }

    public final <T> Map<T, List<Size>> filterCommonSupportedSizes(Map<T, ? extends List<Size>> sizesMap) {
        List<T> listFindCommonElements = findCommonElements(CollectionsKt.toList(sizesMap.values()));
        ArrayList arrayList = new ArrayList();
        for (T t : listFindCommonElements) {
            if (getSupportedSizes().contains((Size) t)) {
                arrayList.add(t);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(sizesMap.size()));
        Iterator<T> it = sizesMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            List list = (List) entry.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (arrayList.contains((Size) obj)) {
                    arrayList2.add(obj);
                }
            }
            linkedHashMap.put(key, arrayList2);
        }
        return linkedHashMap;
    }

    public final int getMaxFrameRate(Size size) {
        List<Range<Integer>> highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor(size);
        if (highSpeedVideoFpsRangesFor.isEmpty()) {
            highSpeedVideoFpsRangesFor = null;
        }
        if (highSpeedVideoFpsRangesFor == null) {
            Logger.m80w("HighSpeedResolver", "No supported high speed  fps for " + size);
            return 0;
        }
        Iterator<T> it = highSpeedVideoFpsRangesFor.iterator();
        if (!it.hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m978m();
            return 0;
        }
        Integer num = (Integer) ((Range) it.next()).getUpper();
        while (it.hasNext()) {
            Integer num2 = (Integer) ((Range) it.next()).getUpper();
            if (num.compareTo(num2) < 0) {
                num = num2;
            }
        }
        return num.intValue();
    }

    public final List<List<Size>> getSizeArrangements(List<? extends List<Size>> sizesList) {
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

    public final Range<Integer>[] getFrameRateRangesFor(List<Size> surfaceSizes) {
        int size = surfaceSizes.size();
        if (1 > size || size >= 3 || CollectionsKt.distinct(surfaceSizes).size() != 1) {
            return null;
        }
        List<Range<Integer>> highSpeedVideoFpsRangesFor = getHighSpeedVideoFpsRangesFor(surfaceSizes.get(0));
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

    private final <T> List<T> findCommonElements(List<? extends List<? extends T>> list) {
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List<T> mutableList = CollectionsKt.toMutableList((Collection) CollectionsKt.first((List) list));
        Iterator<T> it = CollectionsKt.drop(list, 1).iterator();
        while (it.hasNext()) {
            mutableList.retainAll((List) it.next());
        }
        return mutableList;
    }

    private final List<Range<Integer>> getHighSpeedVideoFpsRangesFor(Size size) {
        Object objM3291constructorimpl;
        List listFilterNotNull;
        List<Range<Integer>> list;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3291constructorimpl = Result.m3291constructorimpl(getStreamConfigurationMapCompat().getHighSpeedVideoFpsRangesFor(size));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3291constructorimpl = Result.m3291constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3297isFailureimpl(objM3291constructorimpl)) {
            objM3291constructorimpl = null;
        }
        Range[] rangeArr = (Range[]) objM3291constructorimpl;
        return (rangeArr == null || (listFilterNotNull = ArraysKt.filterNotNull(rangeArr)) == null || (list = CollectionsKt.toList(listFilterNotNull)) == null) ? CollectionsKt.emptyList() : list;
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J(\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00110\u000eH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/internal/HighSpeedResolver$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "DEFAULT_FPS", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "getDEFAULT_FPS", "()Landroid/util/Range;", "isHighSpeedOn", _UrlKt.FRAGMENT_ENCODE_SET, "attachedSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "newUseCaseConfigs", "Landroidx/camera/core/impl/UseCaseConfig;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHighSpeedResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HighSpeedResolver.kt\nandroidx/camera/camera2/internal/HighSpeedResolver$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,237:1\n1563#2:238\n1634#2,3:239\n1563#2:242\n1634#2,3:243\n1761#2,3:246\n1740#2,3:249\n*S KotlinDebug\n*F\n+ 1 HighSpeedResolver.kt\nandroidx/camera/camera2/internal/HighSpeedResolver$Companion\n*L\n222#1:238\n222#1:239,3\n223#1:242\n223#1:243,3\n225#1:246,3\n229#1:249,3\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Range<Integer> getDEFAULT_FPS() {
            return HighSpeedResolver.DEFAULT_FPS;
        }

        @JvmStatic
        public final boolean isHighSpeedOn(Collection<? extends AttachedSurfaceInfo> attachedSurfaces, Collection<? extends UseCaseConfig<?>> newUseCaseConfigs) {
            boolean z;
            Collection<? extends AttachedSurfaceInfo> collection = attachedSurfaces;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((AttachedSurfaceInfo) it.next()).getSessionType()));
            }
            Collection<? extends UseCaseConfig<?>> collection2 = newUseCaseConfigs;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection2, 10));
            Iterator<T> it2 = collection2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Integer.valueOf(((UseCaseConfig) it2.next()).getSessionType(0)));
            }
            List listPlus = CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
            boolean z2 = listPlus instanceof Collection;
            if (z2 && listPlus.isEmpty()) {
                z = false;
            } else {
                Iterator it3 = listPlus.iterator();
                while (it3.hasNext()) {
                    if (((Number) it3.next()).intValue() == 1) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            if (!z || (z2 && listPlus.isEmpty())) {
                return z;
            }
            Iterator it4 = listPlus.iterator();
            while (it4.hasNext()) {
                if (((Number) it4.next()).intValue() != 1) {
                    f$$ExternalSyntheticBUOutline1.m178m("All sessionTypes should be high-speed when any of them is high-speed");
                    return false;
                }
            }
            return z;
        }
    }
}
