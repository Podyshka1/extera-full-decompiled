package androidx.camera.core;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SessionConfig {
    private final CameraFilter cameraFilter;
    private final List effects;
    private Consumer featureSelectionListener;
    private Executor featureSelectionListenerExecutor;
    private final Range frameRateRange;
    private final boolean isAutoRotationEnabled;
    private final List preferredFeatureGroup;
    private final boolean requireNonEmptyUseCases;
    private final Set requiredFeatureGroup;
    private final int sessionType;
    private final List useCases;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void featureSelectionListener$lambda$0(Set set) {
    }

    public abstract boolean getRequireNonEmptyUseCases();

    public final ViewPort getViewPort() {
        return null;
    }

    public abstract boolean isLegacy();

    public SessionConfig(List useCases, ViewPort viewPort, List effects, Range frameRateRange, Set requiredFeatureGroup, List preferredFeatureGroup) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        Intrinsics.checkNotNullParameter(effects, "effects");
        Intrinsics.checkNotNullParameter(frameRateRange, "frameRateRange");
        Intrinsics.checkNotNullParameter(requiredFeatureGroup, "requiredFeatureGroup");
        Intrinsics.checkNotNullParameter(preferredFeatureGroup, "preferredFeatureGroup");
        this.effects = effects;
        this.frameRateRange = frameRateRange;
        this.requiredFeatureGroup = requiredFeatureGroup;
        this.preferredFeatureGroup = preferredFeatureGroup;
        this.useCases = CollectionsKt.distinct(useCases);
        this.requireNonEmptyUseCases = true;
        this.featureSelectionListener = new Consumer() { // from class: androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SessionConfig.featureSelectionListener$lambda$0((Set) obj);
            }
        };
        ScheduledExecutorService scheduledExecutorServiceMainThreadExecutor = CameraXExecutors.mainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(scheduledExecutorServiceMainThreadExecutor, "mainThreadExecutor(...)");
        this.featureSelectionListenerExecutor = scheduledExecutorServiceMainThreadExecutor;
        if (getRequireNonEmptyUseCases() && useCases.isEmpty()) {
            throw new IllegalArgumentException("SessionConfig must contain at least one UseCase.");
        }
        validateFrameRate();
        validateFeatureGroups();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SessionConfig(List list, ViewPort viewPort, List list2, Range FRAME_RATE_RANGE_UNSPECIFIED, Set set, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        ViewPort viewPort2 = (i & 2) != 0 ? null : viewPort;
        List listEmptyList = (i & 4) != 0 ? CollectionsKt.emptyList() : list2;
        if ((i & 8) != 0) {
            FRAME_RATE_RANGE_UNSPECIFIED = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            Intrinsics.checkNotNullExpressionValue(FRAME_RATE_RANGE_UNSPECIFIED, "FRAME_RATE_RANGE_UNSPECIFIED");
        }
        this(list, viewPort2, listEmptyList, FRAME_RATE_RANGE_UNSPECIFIED, (i & 16) != 0 ? SetsKt.emptySet() : set, (i & 32) != 0 ? CollectionsKt.emptyList() : list3);
    }

    public final List getEffects() {
        return this.effects;
    }

    public final Range getFrameRateRange() {
        return this.frameRateRange;
    }

    public final Set getRequiredFeatureGroup() {
        return this.requiredFeatureGroup;
    }

    public final List getPreferredFeatureGroup() {
        return this.preferredFeatureGroup;
    }

    public final List getUseCases() {
        return this.useCases;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public CameraFilter getCameraFilter() {
        return this.cameraFilter;
    }

    public boolean isAutoRotationEnabled() {
        return this.isAutoRotationEnabled;
    }

    public final Consumer getFeatureSelectionListener() {
        return this.featureSelectionListener;
    }

    public final Executor getFeatureSelectionListenerExecutor() {
        return this.featureSelectionListenerExecutor;
    }

    private final void validateFrameRate() {
        if (Intrinsics.areEqual(this.frameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            return;
        }
        Iterator it = this.useCases.iterator();
        while (it.hasNext()) {
            if (((UseCase) it.next()).getAppConfig().hasTargetFrameRate()) {
                throw new IllegalArgumentException("Can't set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig.");
            }
        }
    }

    private final void validateFeatureGroups() {
        if (this.requiredFeatureGroup.isEmpty() && this.preferredFeatureGroup.isEmpty()) {
            return;
        }
        validateRequiredFeatures();
        if (CollectionsKt.distinct(this.preferredFeatureGroup).size() != this.preferredFeatureGroup.size()) {
            throw new IllegalArgumentException(("Duplicate values in preferredFeatures(" + this.preferredFeatureGroup + ')').toString());
        }
        Set setIntersect = CollectionsKt.intersect(this.requiredFeatureGroup, this.preferredFeatureGroup);
        if (!setIntersect.isEmpty()) {
            throw new IllegalArgumentException(("requiredFeatures and preferredFeatures have duplicate values: " + setIntersect).toString());
        }
        for (UseCase useCase : this.useCases) {
            if (UseCaseType.Companion.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                throw new IllegalArgumentException((useCase + " is not supported with feature group").toString());
            }
            validateDefaultGroupableFeatureValues(useCase);
        }
    }

    private final void validateRequiredFeatures() {
        Set set = this.requiredFeatureGroup;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        for (FeatureTypeInternal featureTypeInternal : CollectionsKt.distinct(arrayList)) {
            Set set2 = this.requiredFeatureGroup;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set2) {
                if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                throw new IllegalArgumentException(("requiredFeatures has conflicting feature values: " + arrayList2).toString());
            }
        }
    }

    private final void validateDefaultGroupableFeatureValues(UseCase useCase) {
        String str;
        String str2;
        String str3;
        String useCaseName = getUseCaseName(useCase);
        FeatureTypeInternal appConfiguredGroupableFeatureType$camera_core = UseCaseType.Companion.getAppConfiguredGroupableFeatureType$camera_core(useCase);
        if (appConfiguredGroupableFeatureType$camera_core == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("A ");
        Intrinsics.checkNotNull(appConfiguredGroupableFeatureType$camera_core);
        sb.append(appConfiguredGroupableFeatureType$camera_core.name());
        sb.append(" value is set to ");
        sb.append(useCaseName);
        sb.append(" despite using feature groups. Do not use APIs like ");
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i == 1) {
            str = useCaseName + ".Builder.setDynamicRange";
        } else if (i == 2) {
            str = useCaseName + ".Builder.setTargetFrameRateRange";
        } else if (i != 3) {
            if (i == 4) {
                str = useCaseName + ".Builder.setOutputFormat";
            } else {
                if (i != 5) {
                    throw new NoWhenBranchMatchedException();
                }
                str = "Recorder.Builder.setQualitySelector";
            }
        } else if (UseCaseUtil.isVideoCapture(useCase)) {
            str = useCaseName + ".Builder.setVideoStabilizationEnabled";
        } else {
            str = useCaseName + ".Builder.setPreviewStabilizationEnabled";
        }
        sb.append(str);
        sb.append(" while using feature groups. If, for example, ");
        int i2 = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i2 == 1) {
            str2 = "HDR";
        } else if (i2 == 2) {
            str2 = "60 FPS";
        } else if (i2 == 3) {
            str2 = "stabilization";
        } else if (i2 == 4) {
            str2 = "JPEG_R output format";
        } else {
            if (i2 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            str2 = "UHD recording quality";
        }
        sb.append(str2);
        sb.append(" is required, instead set ");
        int i3 = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i3 == 1) {
            str3 = "GroupableFeature.HDR_HLG10";
        } else if (i3 == 2) {
            str3 = "GroupableFeature.FPS_60";
        } else if (i3 == 3) {
            str3 = "GroupableFeature.PREVIEW_STABILIZATION";
        } else if (i3 == 4) {
            str3 = "GroupableFeature.IMAGE_ULTRA_HDR";
        } else {
            if (i3 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            str3 = "GroupableFeatures.UHD_RECORDING";
        }
        sb.append(str3);
        sb.append(" as either a required or preferred feature.");
        throw new IllegalArgumentException(sb.toString().toString());
    }

    private final String getUseCaseName(UseCase useCase) {
        if (useCase instanceof Preview) {
            return "Preview";
        }
        if (useCase instanceof ImageCapture) {
            return "ImageCapture";
        }
        if (UseCaseUtil.isVideoCapture(useCase)) {
            return "VideoCapture";
        }
        return "UseCase";
    }

    public String toString() {
        return "SessionConfig@" + Integer.toHexString(System.identityHashCode(this)) + " {useCases=" + this.useCases + ", frameRateRange=" + this.frameRateRange + ", requiredFeatureGroup=" + this.requiredFeatureGroup + ", preferredFeatureGroup=" + this.preferredFeatureGroup + ", effects=" + this.effects + ", viewPort=" + ((Object) null) + '}';
    }
}
