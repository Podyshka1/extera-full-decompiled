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
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\"\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J8\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000eH\u0002J\u0012\u0010\u0015\u001a\u00020\u0016*\b\u0012\u0004\u0012\u00020\f0\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver;", "cameraInfoInternal", "Landroidx/camera/core/impl/CameraInfoInternal;", "<init>", "(Landroidx/camera/core/impl/CameraInfoInternal;)V", "resolveFeatureGroup", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;", "sessionConfig", "Landroidx/camera/core/SessionConfig;", "getMissingUseCase", "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "useCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "getFeatureListResolvedByPriority", "orderedPreferredFeatures", "index", _UrlKt.FRAGMENT_ENCODE_SET, "currentOptionalFeatures", "isConflictFree", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDefaultFeatureGroupResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultFeatureGroupResolver.kt\nandroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,229:1\n1869#2,2:230\n1869#2,2:232\n774#2:234\n865#2,2:235\n1761#2,3:237\n1761#2,3:240\n1761#2,3:243\n1761#2,3:246\n1563#2:250\n1634#2,3:251\n1869#2:254\n774#2:255\n865#2,2:256\n1870#2:258\n1#3:249\n*S KotlinDebug\n*F\n+ 1 DefaultFeatureGroupResolver.kt\nandroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver\n*L\n81#1:230,2\n89#1:232,2\n96#1:234\n96#1:235,2\n112#1:237,3\n113#1:240,3\n115#1:243,3\n116#1:246,3\n213#1:250\n213#1:251,3\n214#1:254\n215#1:255\n215#1:256,2\n214#1:258\n*E\n"})
public final class DefaultFeatureGroupResolver implements FeatureGroupResolver {
    private static final Companion Companion = new Companion(null);
    private final CameraInfoInternal cameraInfoInternal;

    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
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
                iArr[VideoStabilization.ON.ordinal()] = 2;
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
        this.cameraInfoInternal = cameraInfoInternal;
    }

    @Override // androidx.camera.core.featuregroup.impl.resolver.FeatureGroupResolver
    public FeatureGroupResolutionResult resolveFeatureGroup(SessionConfig sessionConfig) {
        List<UseCase> useCases = sessionConfig.getUseCases();
        Set<GroupableFeature> requiredFeatureGroup = sessionConfig.getRequiredFeatureGroup();
        List<GroupableFeature> preferredFeatureGroup = sessionConfig.getPreferredFeatureGroup();
        if (requiredFeatureGroup.isEmpty() && preferredFeatureGroup.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m212m("Must have at least one required or preferred feature");
            return null;
        }
        for (UseCase useCase : useCases) {
            if (UseCaseType.INSTANCE.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                return new FeatureGroupResolutionResult.UnsupportedUseCase(useCase);
            }
        }
        Iterator<T> it = requiredFeatureGroup.iterator();
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
                Logger.m74d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filtered out preferred feature due to " + missingUseCase2);
            } else {
                missingUseCase2 = null;
            }
            if (missingUseCase2 == null) {
                arrayList.add(obj);
            }
        }
        Logger.m74d("DefaultFeatureGroupResolver", "resolveFeatureGroup: filteredPreferredFeatures = " + arrayList);
        return getFeatureListResolvedByPriority$default(this, sessionConfig, arrayList, 0, null, 12, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final FeatureGroupResolutionResult.UseCaseMissing getMissingUseCase(GroupableFeature groupableFeature, List<? extends UseCase> list) {
        boolean z;
        boolean z2;
        boolean z3;
        String string;
        List<? extends UseCase> list2 = list;
        boolean z4 = list2 instanceof Collection;
        boolean z5 = false;
        if (z4 && list2.isEmpty()) {
            z = false;
        } else {
            Iterator<T> it = list2.iterator();
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
            Iterator<T> it2 = list2.iterator();
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
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                return null;
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FeatureGroupResolutionResult getFeatureListResolvedByPriority$default(DefaultFeatureGroupResolver defaultFeatureGroupResolver, SessionConfig sessionConfig, List list, int i, List list2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return defaultFeatureGroupResolver.getFeatureListResolvedByPriority(sessionConfig, list, i, list2);
    }

    private final FeatureGroupResolutionResult getFeatureListResolvedByPriority(SessionConfig sessionConfig, List<? extends GroupableFeature> orderedPreferredFeatures, int index, List<? extends GroupableFeature> currentOptionalFeatures) {
        if (index >= orderedPreferredFeatures.size()) {
            Set<? extends GroupableFeature> setPlus = SetsKt.plus((Set) sessionConfig.getRequiredFeatureGroup(), (Iterable) currentOptionalFeatures);
            Logger.m74d("DefaultFeatureGroupResolver", "getFeatureListResolvedByPriority: features = " + setPlus + ", useCases = " + sessionConfig.getUseCases());
            if (isConflictFree(setPlus) && this.cameraInfoInternal.isResolvedFeatureGroupSupported(new ResolvedFeatureGroup(setPlus), sessionConfig)) {
                return new FeatureGroupResolutionResult.Supported(new ResolvedFeatureGroup(setPlus));
            }
            return FeatureGroupResolutionResult.Unsupported.INSTANCE;
        }
        int i = index + 1;
        FeatureGroupResolutionResult featureListResolvedByPriority = getFeatureListResolvedByPriority(sessionConfig, orderedPreferredFeatures, i, CollectionsKt.plus((Collection<? extends GroupableFeature>) currentOptionalFeatures, orderedPreferredFeatures.get(index)));
        return featureListResolvedByPriority instanceof FeatureGroupResolutionResult.Supported ? featureListResolvedByPriority : getFeatureListResolvedByPriority(sessionConfig, orderedPreferredFeatures, i, currentOptionalFeatures);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final boolean isConflictFree(Set<? extends GroupableFeature> set) {
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
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
