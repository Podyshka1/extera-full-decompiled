package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.DynamicRanges;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.config.VideoConfigUtil;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MimeMatchedVideoCapabilities implements VideoCapabilities {
    private final CameraInfoInternal cameraInfo;
    private final String mime;
    private final Lazy validatedData$delegate;

    public MimeMatchedVideoCapabilities(String mime, CameraInfoInternal cameraInfo, final VideoEncoderInfo.Finder videoEncoderInfoFinder) {
        Intrinsics.checkNotNullParameter(mime, "mime");
        Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
        Intrinsics.checkNotNullParameter(videoEncoderInfoFinder, "videoEncoderInfoFinder");
        this.mime = mime;
        this.cameraInfo = cameraInfo;
        this.validatedData$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.video.MimeMatchedVideoCapabilities$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MimeMatchedVideoCapabilities.validatedData_delegate$lambda$0(videoEncoderInfoFinder, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class ValidatedData {
        private final Set dynamicRanges;
        private final Map qualityToSizeMap;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ValidatedData)) {
                return false;
            }
            ValidatedData validatedData = (ValidatedData) obj;
            return Intrinsics.areEqual(this.dynamicRanges, validatedData.dynamicRanges) && Intrinsics.areEqual(this.qualityToSizeMap, validatedData.qualityToSizeMap);
        }

        public int hashCode() {
            return (this.dynamicRanges.hashCode() * 31) + this.qualityToSizeMap.hashCode();
        }

        public String toString() {
            return "ValidatedData(dynamicRanges=" + this.dynamicRanges + ", qualityToSizeMap=" + this.qualityToSizeMap + ')';
        }

        public ValidatedData(Set dynamicRanges, Map qualityToSizeMap) {
            Intrinsics.checkNotNullParameter(dynamicRanges, "dynamicRanges");
            Intrinsics.checkNotNullParameter(qualityToSizeMap, "qualityToSizeMap");
            this.dynamicRanges = dynamicRanges;
            this.qualityToSizeMap = qualityToSizeMap;
        }

        public /* synthetic */ ValidatedData(Set set, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? SetsKt.emptySet() : set, (i & 2) != 0 ? MapsKt.emptyMap() : map);
        }

        public final Set getDynamicRanges() {
            return this.dynamicRanges;
        }

        public final Map getQualityToSizeMap() {
            return this.qualityToSizeMap;
        }
    }

    private final ValidatedData getValidatedData() {
        return (ValidatedData) this.validatedData$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final ValidatedData validatedData_delegate$lambda$0(VideoEncoderInfo.Finder finder, MimeMatchedVideoCapabilities mimeMatchedVideoCapabilities) {
        Object next;
        VideoEncoderInfo videoEncoderInfoFind = finder.find(mimeMatchedVideoCapabilities.mime);
        int i = 3;
        Set set = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        Object[] objArr10 = 0;
        Object[] objArr11 = 0;
        if (videoEncoderInfoFind == null) {
            return new ValidatedData(set, objArr11 == true ? 1 : 0, i, objArr10 == true ? 1 : 0);
        }
        Set supportedDynamicRanges = mimeMatchedVideoCapabilities.cameraInfo.getSupportedDynamicRanges();
        Intrinsics.checkNotNullExpressionValue(supportedDynamicRanges, "getSupportedDynamicRanges(...)");
        if (supportedDynamicRanges.isEmpty()) {
            return new ValidatedData(objArr9 == true ? 1 : 0, objArr8 == true ? 1 : 0, i, objArr7 == true ? 1 : 0);
        }
        Set setIntersect = CollectionsKt.intersect(supportedDynamicRanges, VideoConfigUtil.INSTANCE.getDynamicRangesForMime(mimeMatchedVideoCapabilities.mime));
        if (setIntersect.isEmpty()) {
            return new ValidatedData(objArr6 == true ? 1 : 0, objArr5 == true ? 1 : 0, i, objArr4 == true ? 1 : 0);
        }
        List supportedResolutions = mimeMatchedVideoCapabilities.cameraInfo.getSupportedResolutions(34);
        Intrinsics.checkNotNullExpressionValue(supportedResolutions, "getSupportedResolutions(...)");
        HashSet hashSet = CollectionsKt.toHashSet(supportedResolutions);
        List sortedQualities = Quality.getSortedQualities();
        Intrinsics.checkNotNullExpressionValue(sortedQualities, "getSortedQualities(...)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : sortedQualities) {
            if (obj instanceof Quality.ConstantQuality) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) obj2;
            List typicalSizes = constantQuality.getTypicalSizes();
            Intrinsics.checkNotNullExpressionValue(typicalSizes, "getTypicalSizes(...)");
            Iterator it = typicalSizes.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Size size2 = (Size) next;
                if (hashSet.contains(size2) && videoEncoderInfoFind.isSizeSupported(size2.getWidth(), size2.getHeight())) {
                    break;
                }
            }
            Size size3 = (Size) next;
            Pair pairM1081to = size3 != null ? TuplesKt.m1081to(constantQuality, size3) : null;
            if (pairM1081to != null) {
                arrayList2.add(pairM1081to);
            }
        }
        Map map = MapsKt.toMap(arrayList2);
        if (map.isEmpty()) {
            return new ValidatedData(objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0);
        }
        return new ValidatedData(setIntersect, map);
    }

    @Override // androidx.camera.video.VideoCapabilities
    public Set getSupportedDynamicRanges() {
        return getValidatedData().getDynamicRanges();
    }

    @Override // androidx.camera.video.VideoCapabilities
    public List getSupportedQualities(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        if (DynamicRanges.canResolve(dynamicRange, getValidatedData().getDynamicRanges())) {
            return CollectionsKt.toList(getValidatedData().getQualityToSizeMap().keySet());
        }
        return CollectionsKt.emptyList();
    }

    @Override // androidx.camera.video.VideoCapabilities
    public Size getResolution(Quality quality, DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(quality, "quality");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        if (DynamicRanges.canResolve(dynamicRange, getValidatedData().getDynamicRanges())) {
            return (Size) getValidatedData().getQualityToSizeMap().get(quality);
        }
        return null;
    }

    public String toString() {
        return "MimeMatchedVideoCapabilities(mime=" + this.mime + ", cameraInfo=" + this.cameraInfo + ')';
    }
}
