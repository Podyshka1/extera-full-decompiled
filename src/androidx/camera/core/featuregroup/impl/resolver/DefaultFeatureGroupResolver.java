package androidx.camera.core.featuregroup.impl.resolver;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.SessionConfig;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature;
import androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolutionResult;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.UseCaseUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultFeatureGroupResolver implements FeatureGroupResolver {
    private static final Companion Companion = new Companion(null);
    private final CameraInfoInternal cameraInfoInternal;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[VideoStabilization.values().length];
            try {
                iArr[VideoStabilization.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VideoStabilization.f25ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FeatureTypeInternal.values().length];
            try {
                iArr2[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FeatureTypeInternal.FPS_RANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public DefaultFeatureGroupResolver(CameraInfoInternal cameraInfoInternal) {
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        this.cameraInfoInternal = cameraInfoInternal;
    }

    @Override // androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver
    public FeatureGroupResolutionResult resolveFeatureGroup(SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        List<UseCase> useCases = sessionConfig.getUseCases();
        Set requiredFeatureGroup = sessionConfig.getRequiredFeatureGroup();
        List preferredFeatureGroup = sessionConfig.getPreferredFeatureGroup();
        if (requiredFeatureGroup.isEmpty() && preferredFeatureGroup.isEmpty()) {
            throw new IllegalArgumentException("Must have at least one required or preferred feature");
        }
        for (UseCase useCase : useCases) {
            if (UseCaseType.Companion.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                return new FeatureGroupResolutionResult.UnsupportedUseCase(useCase);
            }
        }
        Iterator it = requiredFeatureGroup.iterator();
        while (it.hasNext()) {
            FeatureGroupResolutionResult.UseCaseMissing missingUseCase = getMissingUseCase((GroupableFeature) it.next(), useCases);
            if (missingUseCase != null) {
                return missingUseCase;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : preferredFeatureGroup) {
            FeatureGroupResolutionResult.UseCaseMissing missingUseCase2 = getMissingUseCase((GroupableFeature) obj, useCases);
            if (missingUseCase2 != null) {
                Logger.m76d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filtered out preferred feature due to " + missingUseCase2);
            } else {
                missingUseCase2 = null;
            }
            if (missingUseCase2 == null) {
                arrayList.add(obj);
            }
        }
        Logger.m76d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filteredPreferredFeatures = " + arrayList);
        return getFeatureListResolvedByPriority$default(this, sessionConfig, arrayList, 0, null, 12, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final FeatureGroupResolutionResult.UseCaseMissing getMissingUseCase(GroupableFeature groupableFeature, List list) {
        boolean z;
        boolean z2;
        boolean z3;
        String string;
        List<UseCase> list2 = list;
        boolean z4 = list2 instanceof Collection;
        boolean z5 = false;
        if (z4 && list2.isEmpty()) {
            z = false;
        } else {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((UseCase) it.next()) instanceof ImageCapture) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        if (z4 && list2.isEmpty()) {
            z2 = false;
        } else {
            for (UseCase useCase : list2) {
                if ((useCase instanceof Preview) || UseCaseUtil.isVideoCapture(useCase)) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        if (z4 && list2.isEmpty()) {
            z3 = false;
        } else {
            for (UseCase useCase2 : list2) {
                if ((useCase2 instanceof Preview) || UseCaseUtil.isVideoCapture(useCase2)) {
                    z3 = true;
                    break;
                }
            }
            z3 = false;
        }
        if (!z4 || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (UseCaseUtil.isVideoCapture((UseCase) it2.next())) {
                    z5 = true;
                    break;
                }
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$1[groupableFeature.getFeatureTypeInternal().ordinal()];
        if (i == 1) {
            string = UseCaseType.IMAGE_CAPTURE.toString();
            if (z) {
            }
        } else if (i == 2) {
            string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE;
            if (z2) {
            }
        } else if (i == 3) {
            string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE + " or " + UseCaseType.IMAGE_ANALYSIS;
            if (z3) {
            }
        } else if (i == 4) {
            Intrinsics.checkNotNull(groupableFeature, "null cannot be cast to non-null type androidx.camera.core.featuregroup.impl.feature.VideoStabilizationFeature");
            int i2 = WhenMappings.$EnumSwitchMapping$0[((VideoStabilizationFeature) groupableFeature).getVideoStabilization().ordinal()];
            if (i2 == 1) {
                string = UseCaseType.PREVIEW + " or " + UseCaseType.VIDEO_CAPTURE + " or " + UseCaseType.IMAGE_ANALYSIS;
                if (z3) {
                }
            } else if (i2 == 2) {
                string = UseCaseType.VIDEO_CAPTURE.toString();
                if (z5) {
                }
            }
        } else {
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            string = UseCaseType.VIDEO_CAPTURE.toString();
            if (z5) {
                string = null;
            }
        }
        if (string != null) {
            return new FeatureGroupResolutionResult.UseCaseMissing(string, groupableFeature);
        }
        return null;
    }

    static /* synthetic */ FeatureGroupResolutionResult getFeatureListResolvedByPriority$default(DefaultFeatureGroupResolver defaultFeatureGroupResolver, SessionConfig sessionConfig, List list, int i, List list2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return defaultFeatureGroupResolver.getFeatureListResolvedByPriority(sessionConfig, list, i, list2);
    }

    private final FeatureGroupResolutionResult getFeatureListResolvedByPriority(SessionConfig sessionConfig, List list, int i, List list2) {
        if (i >= list.size()) {
            Set setPlus = SetsKt.plus(sessionConfig.getRequiredFeatureGroup(), (Iterable) list2);
            Logger.m76d("DefaultFeatureGroupResolver", "getFeatureListResolvedByPriority: features = " + setPlus + ", useCases = " + sessionConfig.getUseCases());
            if (isConflictFree(setPlus) && this.cameraInfoInternal.isResolvedFeatureGroupSupported(new ResolvedFeatureGroup(setPlus), sessionConfig)) {
                return new FeatureGroupResolutionResult.Supported(new ResolvedFeatureGroup(setPlus));
            }
            return FeatureGroupResolutionResult.Unsupported.INSTANCE;
        }
        int i2 = i + 1;
        FeatureGroupResolutionResult featureListResolvedByPriority = getFeatureListResolvedByPriority(sessionConfig, list, i2, CollectionsKt.plus(list2, list.get(i)));
        return featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Supported ? featureListResolvedByPriority : getFeatureListResolvedByPriority(sessionConfig, list, i2, list2);
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final boolean isConflictFree(Set set) {
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        for (FeatureTypeInternal featureTypeInternal : CollectionsKt.distinct(arrayList)) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set) {
                if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                return false;
            }
        }
        return true;
    }
}
