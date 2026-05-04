package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DynamicRangeResolver {
    private final CameraMetadata cameraMetadata;
    private final DynamicRangeProfilesCompat dynamicRangesInfo;
    private final boolean is10BitSupported;

    public DynamicRangeResolver(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        this.cameraMetadata = cameraMetadata;
        CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
        int[] iArr = (int[]) cameraMetadata.get(REQUEST_AVAILABLE_CAPABILITIES);
        this.is10BitSupported = iArr != null ? ArraysKt.contains(iArr, 18) : false;
        this.dynamicRangesInfo = DynamicRangeProfilesCompat.Companion.fromCameraMetaData(cameraMetadata);
    }

    public final boolean is10BitDynamicRangeSupported() {
        return this.is10BitSupported;
    }

    public final Map resolveAndValidateDynamicRanges(List existingSurfaces, List newUseCaseConfigs, List useCasePriorityOrder) {
        Intrinsics.checkNotNullParameter(existingSurfaces, "existingSurfaces");
        Intrinsics.checkNotNullParameter(newUseCaseConfigs, "newUseCaseConfigs");
        Intrinsics.checkNotNullParameter(useCasePriorityOrder, "useCasePriorityOrder");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = existingSurfaces.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange = ((AttachedSurfaceInfo) it.next()).getDynamicRange();
            Intrinsics.checkNotNullExpressionValue(dynamicRange, "getDynamicRange(...)");
            linkedHashSet.add(dynamicRange);
        }
        Set supportedDynamicRanges = this.dynamicRangesInfo.getSupportedDynamicRanges();
        Set mutableSet = CollectionsKt.toMutableSet(supportedDynamicRanges);
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            updateConstraints(mutableSet, (DynamicRange) it2.next(), this.dynamicRangesInfo);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = useCasePriorityOrder.iterator();
        while (it3.hasNext()) {
            UseCaseConfig useCaseConfig = (UseCaseConfig) newUseCaseConfigs.get(((Number) it3.next()).intValue());
            DynamicRange dynamicRange2 = useCaseConfig.getDynamicRange();
            Intrinsics.checkNotNullExpressionValue(dynamicRange2, "getDynamicRange(...)");
            if (isFullyUnspecified(dynamicRange2)) {
                arrayList3.add(useCaseConfig);
            } else if (isPartiallySpecified(dynamicRange2)) {
                arrayList2.add(useCaseConfig);
            } else {
                arrayList.add(useCaseConfig);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ArrayList arrayList4 = new ArrayList();
        arrayList4.addAll(arrayList);
        arrayList4.addAll(arrayList2);
        arrayList4.addAll(arrayList3);
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList4.get(i);
            i++;
            UseCaseConfig useCaseConfig2 = (UseCaseConfig) obj;
            DynamicRange dynamicRangeResolveDynamicRangeAndUpdateConstraints = resolveDynamicRangeAndUpdateConstraints(supportedDynamicRanges, linkedHashSet, linkedHashSet2, useCaseConfig2, mutableSet);
            linkedHashMap.put(useCaseConfig2, dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            if (!linkedHashSet.contains(dynamicRangeResolveDynamicRangeAndUpdateConstraints)) {
                linkedHashSet2.add(dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            }
        }
        return linkedHashMap;
    }

    private final DynamicRange resolveDynamicRangeAndUpdateConstraints(Set set, Set set2, Set set3, UseCaseConfig useCaseConfig, Set set4) {
        DynamicRange dynamicRange = useCaseConfig.getDynamicRange();
        Intrinsics.checkNotNullExpressionValue(dynamicRange, "getDynamicRange(...)");
        String targetName = useCaseConfig.getTargetName();
        Intrinsics.checkNotNullExpressionValue(targetName, "getTargetName(...)");
        DynamicRange dynamicRangeResolveDynamicRange = resolveDynamicRange(dynamicRange, set4, set2, set3, targetName);
        if (dynamicRangeResolveDynamicRange != null) {
            updateConstraints(set4, dynamicRangeResolveDynamicRange, this.dynamicRangesInfo);
            return dynamicRangeResolveDynamicRange;
        }
        throw new IllegalArgumentException("Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  " + useCaseConfig.getTargetName() + "\nRequested dynamic range:\n  " + dynamicRange + "\nSupported dynamic ranges:\n  " + set + "\nConstrained set of concurrent dynamic ranges:\n  " + set4);
    }

    private final DynamicRange resolveDynamicRange(DynamicRange dynamicRange, Set set, Set set2, Set set3, String str) {
        DynamicRange recommended10BitDynamicRange;
        if (dynamicRange.isFullySpecified()) {
            if (set.contains(dynamicRange)) {
                return dynamicRange;
            }
            return null;
        }
        int encoding = dynamicRange.getEncoding();
        int bitDepth = dynamicRange.getBitDepth();
        if (encoding == 1 && bitDepth == 0) {
            DynamicRange dynamicRange2 = DynamicRange.SDR;
            if (set.contains(dynamicRange2)) {
                return dynamicRange2;
            }
            return null;
        }
        DynamicRange dynamicRangeFindSupportedHdrMatch = findSupportedHdrMatch(dynamicRange, set2, set);
        if (dynamicRangeFindSupportedHdrMatch != null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from existing attached surface.\n" + dynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch);
            }
            return dynamicRangeFindSupportedHdrMatch;
        }
        DynamicRange dynamicRangeFindSupportedHdrMatch2 = findSupportedHdrMatch(dynamicRange, set3, set);
        if (dynamicRangeFindSupportedHdrMatch2 != null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from concurrently bound use case.\n" + dynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch2);
            }
            return dynamicRangeFindSupportedHdrMatch2;
        }
        DynamicRange SDR = DynamicRange.SDR;
        Intrinsics.checkNotNullExpressionValue(SDR, "SDR");
        if (canResolveWithinConstraints(dynamicRange, SDR, set)) {
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " to no compatible HDR dynamic ranges.\n" + dynamicRange + "\n->\n" + SDR);
            }
            return SDR;
        }
        if (encoding == 2 && (bitDepth == 10 || bitDepth == 0)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (Build.VERSION.SDK_INT >= 33) {
                recommended10BitDynamicRange = Api33Impl.INSTANCE.getRecommended10BitDynamicRange(this.cameraMetadata);
                if (recommended10BitDynamicRange != null) {
                    linkedHashSet.add(recommended10BitDynamicRange);
                }
            } else {
                recommended10BitDynamicRange = null;
            }
            DynamicRange HLG_10_BIT = DynamicRange.HLG_10_BIT;
            Intrinsics.checkNotNullExpressionValue(HLG_10_BIT, "HLG_10_BIT");
            linkedHashSet.add(HLG_10_BIT);
            DynamicRange dynamicRangeFindSupportedHdrMatch3 = findSupportedHdrMatch(dynamicRange, linkedHashSet, set);
            if (dynamicRangeFindSupportedHdrMatch3 != null) {
                Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    String str2 = Camera2Logger.TRUNCATED_TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("DynamicRangeResolver: Resolved dynamic range for use case ");
                    sb.append(str);
                    sb.append("from ");
                    sb.append(Intrinsics.areEqual(dynamicRangeFindSupportedHdrMatch3, recommended10BitDynamicRange) ? "recommended" : "required");
                    sb.append(" 10-bit supported dynamic range.\n");
                    sb.append(dynamicRange);
                    sb.append("\n->\n");
                    sb.append(dynamicRangeFindSupportedHdrMatch3);
                    Log.d(str2, sb.toString());
                }
                return dynamicRangeFindSupportedHdrMatch3;
            }
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange3 = (DynamicRange) it.next();
            if (!dynamicRange3.isFullySpecified()) {
                throw new IllegalStateException("Candidate dynamic range must be fully specified.");
            }
            if (!Intrinsics.areEqual(dynamicRange3, DynamicRange.SDR) && canResolveDynamicRange(dynamicRange, dynamicRange3)) {
                Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + str + " from validated dynamic range constraints or supported HDR dynamic ranges.\n" + dynamicRange + "\n->\n" + dynamicRange3);
                }
                return dynamicRange3;
            }
        }
        return null;
    }

    private final void updateConstraints(Set set, DynamicRange dynamicRange, DynamicRangeProfilesCompat dynamicRangeProfilesCompat) {
        Preconditions.checkState(!set.isEmpty(), "Cannot update already-empty constraints.");
        Set dynamicRangeCaptureRequestConstraints = dynamicRangeProfilesCompat.getDynamicRangeCaptureRequestConstraints(dynamicRange);
        if (dynamicRangeCaptureRequestConstraints.isEmpty()) {
            return;
        }
        Set set2 = CollectionsKt.toSet(set);
        set.retainAll(dynamicRangeCaptureRequestConstraints);
        if (set.isEmpty()) {
            throw new IllegalArgumentException(("Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  " + dynamicRange + "\nConstraints:\n  " + dynamicRangeCaptureRequestConstraints + "\nExisting constraints:\n  " + set2).toString());
        }
    }

    private final DynamicRange findSupportedHdrMatch(DynamicRange dynamicRange, Collection collection, Set set) {
        if (dynamicRange.getEncoding() == 1) {
            return null;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange2 = (DynamicRange) it.next();
            int encoding = dynamicRange2.getEncoding();
            if (!dynamicRange2.isFullySpecified()) {
                throw new IllegalStateException("Fully specified DynamicRange must have fully defined encoding.");
            }
            if (encoding != 1 && canResolveWithinConstraints(dynamicRange, dynamicRange2, set)) {
                return dynamicRange2;
            }
        }
        return null;
    }

    private final boolean isFullyUnspecified(DynamicRange dynamicRange) {
        return Intrinsics.areEqual(dynamicRange, DynamicRange.UNSPECIFIED);
    }

    private final boolean isPartiallySpecified(DynamicRange dynamicRange) {
        if (dynamicRange.getEncoding() == 2) {
            return true;
        }
        if (dynamicRange.getEncoding() == 0 || dynamicRange.getBitDepth() != 0) {
            return dynamicRange.getEncoding() == 0 && dynamicRange.getBitDepth() != 0;
        }
        return true;
    }

    private final boolean canResolveWithinConstraints(DynamicRange dynamicRange, DynamicRange dynamicRange2, Set set) {
        if (!set.contains(dynamicRange2)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled("CXCP")) {
                return false;
            }
            Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Candidate Dynamic range is not within constraints.\nDynamic range to resolve:\n  " + dynamicRange + "\nCandidate dynamic range:\n  " + dynamicRange2);
            return false;
        }
        return canResolveDynamicRange(dynamicRange, dynamicRange2);
    }

    private final boolean canResolveDynamicRange(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        if (!dynamicRange2.isFullySpecified()) {
            throw new IllegalStateException(("Fully specified range " + dynamicRange2 + " not actually fully specified.").toString());
        }
        if (dynamicRange.getEncoding() == 2 && dynamicRange2.getEncoding() == 1) {
            return false;
        }
        if (dynamicRange.getEncoding() == 2 || dynamicRange.getEncoding() == 0 || dynamicRange.getEncoding() == dynamicRange2.getEncoding()) {
            return dynamicRange.getBitDepth() == 0 || dynamicRange.getBitDepth() == dynamicRange2.getBitDepth();
        }
        return false;
    }

    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public final DynamicRange getRecommended10BitDynamicRange(CameraMetadata cameraMetadata) {
            Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
            CameraCharacteristics.Key REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE = CameraCharacteristics.REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE;
            Intrinsics.checkNotNullExpressionValue(REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE, "REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE");
            Long l = (Long) cameraMetadata.get(REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE);
            if (l != null) {
                return DynamicRangeConversions.INSTANCE.profileToDynamicRange(l.longValue());
            }
            return null;
        }
    }
}
