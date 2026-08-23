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
import androidx.view.LifecycleRegistry$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0001AB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JU\u0010\u000f\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010JK\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0011\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ5\u0010!\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u00072\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010'\u001a\u00020$2\u0006\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010&J-\u0010*\u001a\u00020$2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00072\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010/J\r\u00100\u001a\u00020$¢\u0006\u0004\b0\u00101JK\u00109\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u0004\u0012\u00020\u0007082\f\u00104\u001a\b\u0012\u0004\u0012\u000203022\u0010\u00105\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b022\f\u00107\u001a\b\u0012\u0004\u0012\u00020602¢\u0006\u0004\b9\u0010:R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010>\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010@¨\u0006B"}, d2 = {"Landroidx/camera/camera2/internal/DynamicRangeResolver;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/DynamicRange;", "supportedDynamicRanges", "orderedExistingDynamicRanges", "orderedNewDynamicRanges", "Landroidx/camera/core/impl/UseCaseConfig;", "config", _UrlKt.FRAGMENT_ENCODE_SET, "outCombinedConstraints", "resolveDynamicRangeAndUpdateConstraints", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfig;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;", "requestedDynamicRange", "combinedConstraints", _UrlKt.FRAGMENT_ENCODE_SET, "rangeOwnerLabel", "resolveDynamicRange", "(Landroidx/camera/core/DynamicRange;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Landroidx/camera/core/DynamicRange;", "newDynamicRange", "Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;", "dynamicRangesInfo", _UrlKt.FRAGMENT_ENCODE_SET, "updateConstraints", "(Ljava/util/Set;Landroidx/camera/core/DynamicRange;Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;)V", "rangeToMatch", _UrlKt.FRAGMENT_ENCODE_SET, "fullySpecifiedCandidateRanges", "constraints", "findSupportedHdrMatch", "(Landroidx/camera/core/DynamicRange;Ljava/util/Collection;Ljava/util/Set;)Landroidx/camera/core/DynamicRange;", "dynamicRange", _UrlKt.FRAGMENT_ENCODE_SET, "isFullyUnspecified", "(Landroidx/camera/core/DynamicRange;)Z", "isPartiallySpecified", "rangeToResolve", "candidateRange", "canResolveWithinConstraints", "(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z", "testRange", "fullySpecifiedRange", "canResolveDynamicRange", "(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z", "is10BitDynamicRangeSupported", "()Z", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "existingSurfaces", "newUseCaseConfigs", _UrlKt.FRAGMENT_ENCODE_SET, "useCasePriorityOrder", _UrlKt.FRAGMENT_ENCODE_SET, "resolveAndValidateDynamicRanges", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "getCameraMetadata", "()Landroidx/camera/camera2/pipe/CameraMetadata;", "is10BitSupported", "Z", "Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat;", "Api33Impl", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDynamicRangeResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicRangeResolver.kt\nandroidx/camera/camera2/internal/DynamicRangeResolver\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,481:1\n85#2,4:482\n85#2,4:486\n85#2,4:490\n85#2,4:494\n85#2,4:498\n85#2,4:502\n*S KotlinDebug\n*F\n+ 1 DynamicRangeResolver.kt\nandroidx/camera/camera2/internal/DynamicRangeResolver\n*L\n218#1:482,4\n236#1:486,4\n256#1:490,4\n287#1:494,4\n316#1:498,4\n426#1:502,4\n*E\n"})
public final class DynamicRangeResolver {
    private final CameraMetadata cameraMetadata;
    private final DynamicRangeProfilesCompat dynamicRangesInfo;
    private final boolean is10BitSupported;

    public DynamicRangeResolver(CameraMetadata cameraMetadata) {
        this.cameraMetadata = cameraMetadata;
        int[] iArr = (int[]) cameraMetadata.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        this.is10BitSupported = iArr != null ? ArraysKt.contains(iArr, 18) : false;
        this.dynamicRangesInfo = DynamicRangeProfilesCompat.INSTANCE.fromCameraMetaData(cameraMetadata);
    }

    /* JADX INFO: renamed from: is10BitDynamicRangeSupported, reason: from getter */
    public final boolean getIs10BitSupported() {
        return this.is10BitSupported;
    }

    public final Map<UseCaseConfig<?>, DynamicRange> resolveAndValidateDynamicRanges(List<? extends AttachedSurfaceInfo> existingSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasePriorityOrder) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<? extends AttachedSurfaceInfo> it = existingSurfaces.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(it.next().getDynamicRange());
        }
        Set<DynamicRange> supportedDynamicRanges = this.dynamicRangesInfo.getSupportedDynamicRanges();
        Set<DynamicRange> mutableSet = CollectionsKt.toMutableSet(supportedDynamicRanges);
        Iterator<DynamicRange> it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            updateConstraints(mutableSet, it2.next(), this.dynamicRangesInfo);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<Integer> it3 = useCasePriorityOrder.iterator();
        while (it3.hasNext()) {
            UseCaseConfig<?> useCaseConfig = newUseCaseConfigs.get(it3.next().intValue());
            DynamicRange dynamicRange = useCaseConfig.getDynamicRange();
            if (isFullyUnspecified(dynamicRange)) {
                arrayList3.add(useCaseConfig);
            } else if (isPartiallySpecified(dynamicRange)) {
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
            UseCaseConfig<?> useCaseConfig2 = (UseCaseConfig) obj;
            DynamicRangeResolver dynamicRangeResolver = this;
            DynamicRange dynamicRangeResolveDynamicRangeAndUpdateConstraints = dynamicRangeResolver.resolveDynamicRangeAndUpdateConstraints(supportedDynamicRanges, linkedHashSet, linkedHashSet2, useCaseConfig2, mutableSet);
            linkedHashMap.put(useCaseConfig2, dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            if (!linkedHashSet.contains(dynamicRangeResolveDynamicRangeAndUpdateConstraints)) {
                linkedHashSet2.add(dynamicRangeResolveDynamicRangeAndUpdateConstraints);
            }
            this = dynamicRangeResolver;
        }
        return linkedHashMap;
    }

    private final DynamicRange resolveDynamicRangeAndUpdateConstraints(Set<DynamicRange> supportedDynamicRanges, Set<DynamicRange> orderedExistingDynamicRanges, Set<DynamicRange> orderedNewDynamicRanges, UseCaseConfig<?> config, Set<DynamicRange> outCombinedConstraints) {
        DynamicRange dynamicRange = config.getDynamicRange();
        DynamicRange dynamicRangeResolveDynamicRange = resolveDynamicRange(dynamicRange, outCombinedConstraints, orderedExistingDynamicRanges, orderedNewDynamicRanges, config.getTargetName());
        if (dynamicRangeResolveDynamicRange != null) {
            updateConstraints(outCombinedConstraints, dynamicRangeResolveDynamicRange, this.dynamicRangesInfo);
            return dynamicRangeResolveDynamicRange;
        }
        throw new IllegalArgumentException("Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  " + config.getTargetName() + "\nRequested dynamic range:\n  " + dynamicRange + "\nSupported dynamic ranges:\n  " + supportedDynamicRanges + "\nConstrained set of concurrent dynamic ranges:\n  " + outCombinedConstraints);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x017f, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final DynamicRange resolveDynamicRange(DynamicRange requestedDynamicRange, Set<DynamicRange> combinedConstraints, Set<DynamicRange> orderedExistingDynamicRanges, Set<DynamicRange> orderedNewDynamicRanges, String rangeOwnerLabel) {
        DynamicRange recommended10BitDynamicRange;
        if (requestedDynamicRange.isFullySpecified()) {
            if (combinedConstraints.contains(requestedDynamicRange)) {
                return requestedDynamicRange;
            }
            return null;
        }
        int encoding = requestedDynamicRange.getEncoding();
        int bitDepth = requestedDynamicRange.getBitDepth();
        if (encoding != 1 || bitDepth != 0) {
            DynamicRange dynamicRangeFindSupportedHdrMatch = findSupportedHdrMatch(requestedDynamicRange, orderedExistingDynamicRanges, combinedConstraints);
            if (dynamicRangeFindSupportedHdrMatch == null) {
                DynamicRange dynamicRangeFindSupportedHdrMatch2 = findSupportedHdrMatch(requestedDynamicRange, orderedNewDynamicRanges, combinedConstraints);
                if (dynamicRangeFindSupportedHdrMatch2 == null) {
                    DynamicRange dynamicRange = DynamicRange.SDR;
                    if (!canResolveWithinConstraints(requestedDynamicRange, dynamicRange, combinedConstraints)) {
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
                            linkedHashSet.add(DynamicRange.HLG_10_BIT);
                            DynamicRange dynamicRangeFindSupportedHdrMatch3 = findSupportedHdrMatch(requestedDynamicRange, linkedHashSet, combinedConstraints);
                            if (dynamicRangeFindSupportedHdrMatch3 != null) {
                                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                                if (Logger.isDebugEnabled("CXCP")) {
                                    String str = Camera2Logger.TRUNCATED_TAG;
                                    StringBuilder sb = new StringBuilder("DynamicRangeResolver: Resolved dynamic range for use case ");
                                    sb.append(rangeOwnerLabel);
                                    sb.append("from ");
                                    sb.append(Intrinsics.areEqual(dynamicRangeFindSupportedHdrMatch3, recommended10BitDynamicRange) ? "recommended" : "required");
                                    sb.append(" 10-bit supported dynamic range.\n");
                                    sb.append(requestedDynamicRange);
                                    sb.append("\n->\n");
                                    sb.append(dynamicRangeFindSupportedHdrMatch3);
                                    Log.d(str, sb.toString());
                                }
                                return dynamicRangeFindSupportedHdrMatch3;
                            }
                        }
                        Iterator<DynamicRange> it = combinedConstraints.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            DynamicRange next = it.next();
                            if (!next.isFullySpecified()) {
                                Segment$$ExternalSyntheticBUOutline1.m848m("Candidate dynamic range must be fully specified.");
                                break;
                            }
                            if (!Intrinsics.areEqual(next, DynamicRange.SDR) && canResolveDynamicRange(requestedDynamicRange, next)) {
                                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                                if (Logger.isDebugEnabled("CXCP")) {
                                    Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + rangeOwnerLabel + " from validated dynamic range constraints or supported HDR dynamic ranges.\n" + requestedDynamicRange + "\n->\n" + next);
                                }
                                return next;
                            }
                        }
                    } else {
                        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled("CXCP")) {
                            Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + rangeOwnerLabel + " to no compatible HDR dynamic ranges.\n" + requestedDynamicRange + "\n->\n" + dynamicRange);
                        }
                        return dynamicRange;
                    }
                } else {
                    Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + rangeOwnerLabel + " from concurrently bound use case.\n" + requestedDynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch2);
                    }
                    return dynamicRangeFindSupportedHdrMatch2;
                }
            } else {
                Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Resolved dynamic range for use case " + rangeOwnerLabel + " from existing attached surface.\n" + requestedDynamicRange + "\n->\n" + dynamicRangeFindSupportedHdrMatch);
                }
                return dynamicRangeFindSupportedHdrMatch;
            }
        } else {
            DynamicRange dynamicRange2 = DynamicRange.SDR;
            if (combinedConstraints.contains(dynamicRange2)) {
                return dynamicRange2;
            }
            return null;
        }
    }

    private final void updateConstraints(Set<DynamicRange> combinedConstraints, DynamicRange newDynamicRange, DynamicRangeProfilesCompat dynamicRangesInfo) {
        Preconditions.checkState(!combinedConstraints.isEmpty(), "Cannot update already-empty constraints.");
        Set<DynamicRange> dynamicRangeCaptureRequestConstraints = dynamicRangesInfo.getDynamicRangeCaptureRequestConstraints(newDynamicRange);
        if (dynamicRangeCaptureRequestConstraints.isEmpty()) {
            return;
        }
        Set set = CollectionsKt.toSet(combinedConstraints);
        combinedConstraints.retainAll(dynamicRangeCaptureRequestConstraints);
        if (combinedConstraints.isEmpty()) {
            throw new IllegalArgumentException(("Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  " + newDynamicRange + "\nConstraints:\n  " + dynamicRangeCaptureRequestConstraints + "\nExisting constraints:\n  " + set).toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final DynamicRange findSupportedHdrMatch(DynamicRange rangeToMatch, Collection<DynamicRange> fullySpecifiedCandidateRanges, Set<DynamicRange> constraints) {
        if (rangeToMatch.getEncoding() != 1) {
            Iterator<DynamicRange> it = fullySpecifiedCandidateRanges.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DynamicRange next = it.next();
                int encoding = next.getEncoding();
                if (!next.isFullySpecified()) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("Fully specified DynamicRange must have fully defined encoding.");
                    break;
                }
                if (encoding != 1 && canResolveWithinConstraints(rangeToMatch, next, constraints)) {
                    return next;
                }
            }
        } else {
            return null;
        }
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

    private final boolean canResolveWithinConstraints(DynamicRange rangeToResolve, DynamicRange candidateRange, Set<DynamicRange> constraints) {
        if (!constraints.contains(candidateRange)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isDebugEnabled("CXCP")) {
                return false;
            }
            Log.d(Camera2Logger.TRUNCATED_TAG, "DynamicRangeResolver: Candidate Dynamic range is not within constraints.\nDynamic range to resolve:\n  " + rangeToResolve + "\nCandidate dynamic range:\n  " + candidateRange);
            return false;
        }
        return canResolveDynamicRange(rangeToResolve, candidateRange);
    }

    private final boolean canResolveDynamicRange(DynamicRange testRange, DynamicRange fullySpecifiedRange) {
        if (!fullySpecifiedRange.isFullySpecified()) {
            LifecycleRegistry$$ExternalSyntheticBUOutline0.m150m("Fully specified range ", fullySpecifiedRange, " not actually fully specified.");
            return false;
        }
        if (testRange.getEncoding() == 2 && fullySpecifiedRange.getEncoding() == 1) {
            return false;
        }
        if (testRange.getEncoding() == 2 || testRange.getEncoding() == 0 || testRange.getEncoding() == fullySpecifiedRange.getEncoding()) {
            return testRange.getBitDepth() == 0 || testRange.getBitDepth() == fullySpecifiedRange.getBitDepth();
        }
        return false;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/internal/DynamicRangeResolver$Api33Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRecommended10BitDynamicRange", "Landroidx/camera/core/DynamicRange;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        public final DynamicRange getRecommended10BitDynamicRange(CameraMetadata cameraMetadata) {
            Long l = (Long) cameraMetadata.get(CameraCharacteristics.REQUEST_RECOMMENDED_TEN_BIT_DYNAMIC_RANGE_PROFILE);
            if (l != null) {
                return DynamicRangeConversions.INSTANCE.profileToDynamicRange(l.longValue());
            }
            return null;
        }
    }
}
