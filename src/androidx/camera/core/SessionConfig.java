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
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.Response$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Options$Companion$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001:\u0001GBc\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0014J\u0013\u0010\u0017\u001a\u00020\u0012*\u00020\u0003H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u001a\u001a\u00020\u0019*\u00020\u0003H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006¢\u0006\f\n\u0004\b\u000b\u0010!\u001a\u0004\b\"\u0010#R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b\u000e\u0010$\u001a\u0004\b%\u0010&R\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001e\u001a\u0004\b'\u0010 R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001e\u001a\u0004\b(\u0010 R\u001a\u0010*\u001a\u00020)8\u0017X\u0096D¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b*\u0010,R\u001a\u0010-\u001a\u00020\n8\u0017X\u0096D¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001a\u00101\u001a\u00020)8\u0017X\u0096D¢\u0006\f\n\u0004\b1\u0010+\u001a\u0004\b2\u0010,R\u001c\u00104\u001a\u0004\u0018\u0001038\u0017X\u0096\u0004¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001a\u00108\u001a\u00020)8\u0017X\u0096D¢\u0006\f\n\u0004\b8\u0010+\u001a\u0004\b8\u0010,R<\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f092\u0012\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f098\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R$\u0010@\u001a\u00020?2\u0006\u0010:\u001a\u00020?8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010D\u001a\u0004\bE\u0010F¨\u0006H"}, d2 = {"Landroidx/camera/core/SessionConfig;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "useCases", "Landroidx/camera/core/ViewPort;", "viewPort", "Landroidx/camera/core/CameraEffect;", "effects", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "frameRateRange", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/featuregroup/GroupableFeature;", "requiredFeatureGroup", "preferredFeatureGroup", "<init>", "(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "validateFrameRate", "()V", "validateFeatureGroups", "validateRequiredFeatures", "validateDefaultGroupableFeatureValues", "(Landroidx/camera/core/UseCase;)V", _UrlKt.FRAGMENT_ENCODE_SET, "getUseCaseName", "(Landroidx/camera/core/UseCase;)Ljava/lang/String;", "toString", "()Ljava/lang/String;", "Ljava/util/List;", "getEffects", "()Ljava/util/List;", "Landroid/util/Range;", "getFrameRateRange", "()Landroid/util/Range;", "Ljava/util/Set;", "getRequiredFeatureGroup", "()Ljava/util/Set;", "getPreferredFeatureGroup", "getUseCases", _UrlKt.FRAGMENT_ENCODE_SET, "isLegacy", "Z", "()Z", "sessionType", "I", "getSessionType", "()I", "requireNonEmptyUseCases", "getRequireNonEmptyUseCases", "Landroidx/camera/core/CameraFilter;", "cameraFilter", "Landroidx/camera/core/CameraFilter;", "getCameraFilter", "()Landroidx/camera/core/CameraFilter;", "isAutoRotationEnabled", "Landroidx/core/util/Consumer;", "value", "featureSelectionListener", "Landroidx/core/util/Consumer;", "getFeatureSelectionListener", "()Landroidx/core/util/Consumer;", "Ljava/util/concurrent/Executor;", "featureSelectionListenerExecutor", "Ljava/util/concurrent/Executor;", "getFeatureSelectionListenerExecutor", "()Ljava/util/concurrent/Executor;", "Landroidx/camera/core/ViewPort;", "getViewPort", "()Landroidx/camera/core/ViewPort;", "Builder", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSessionConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionConfig.kt\nandroidx/camera/core/SessionConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,464:1\n1#2:465\n1869#3,2:466\n1563#3:468\n1634#3,3:469\n1869#3:472\n774#3:473\n865#3,2:474\n1870#3:476\n*S KotlinDebug\n*F\n+ 1 SessionConfig.kt\nandroidx/camera/core/SessionConfig\n*L\n179#1:466,2\n195#1:468\n195#1:469,3\n196#1:472\n198#1:473\n198#1:474,2\n196#1:476\n*E\n"})
public abstract class SessionConfig {
    private final CameraFilter cameraFilter;
    private final List<CameraEffect> effects;
    private Consumer<Set<GroupableFeature>> featureSelectionListener;
    private Executor featureSelectionListenerExecutor;
    private final Range<Integer> frameRateRange;
    private final boolean isAutoRotationEnabled;
    private final boolean isLegacy;
    private final List<GroupableFeature> preferredFeatureGroup;
    private final boolean requireNonEmptyUseCases;
    private final Set<GroupableFeature> requiredFeatureGroup;
    private final int sessionType;
    private final List<UseCase> useCases;

    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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

    public static void $r8$lambda$nHoExTCOzN2kfNQ5jRFz93oyuMM(Set set) {
    }

    public abstract boolean getRequireNonEmptyUseCases();

    public final ViewPort getViewPort() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range, Set<? extends GroupableFeature> set, List<? extends GroupableFeature> list3) {
        this.effects = list2;
        this.frameRateRange = range;
        this.requiredFeatureGroup = set;
        this.preferredFeatureGroup = list3;
        this.useCases = CollectionsKt.distinct(list);
        this.requireNonEmptyUseCases = true;
        this.featureSelectionListener = new Consumer() { // from class: androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SessionConfig.$r8$lambda$nHoExTCOzN2kfNQ5jRFz93oyuMM((Set) obj);
            }
        };
        this.featureSelectionListenerExecutor = CameraXExecutors.mainThreadExecutor();
        if (getRequireNonEmptyUseCases() && list.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("SessionConfig must contain at least one UseCase.");
            throw null;
        }
        validateFrameRate();
        validateFeatureGroups();
    }

    public /* synthetic */ SessionConfig(List list, ViewPort viewPort, List list2, Range range, Set set, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? null : viewPort, (i & 4) != 0 ? CollectionsKt.emptyList() : list2, (i & 8) != 0 ? StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED : range, (i & 16) != 0 ? SetsKt.emptySet() : set, (i & 32) != 0 ? CollectionsKt.emptyList() : list3);
    }

    public final List<CameraEffect> getEffects() {
        return this.effects;
    }

    public final Range<Integer> getFrameRateRange() {
        return this.frameRateRange;
    }

    public final Set<GroupableFeature> getRequiredFeatureGroup() {
        return this.requiredFeatureGroup;
    }

    public final List<GroupableFeature> getPreferredFeatureGroup() {
        return this.preferredFeatureGroup;
    }

    public final List<UseCase> getUseCases() {
        return this.useCases;
    }

    /* JADX INFO: renamed from: isLegacy, reason: from getter */
    public boolean getIsLegacy() {
        return this.isLegacy;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public CameraFilter getCameraFilter() {
        return this.cameraFilter;
    }

    /* JADX INFO: renamed from: isAutoRotationEnabled, reason: from getter */
    public boolean getIsAutoRotationEnabled() {
        return this.isAutoRotationEnabled;
    }

    public final Consumer<Set<GroupableFeature>> getFeatureSelectionListener() {
        return this.featureSelectionListener;
    }

    public final Executor getFeatureSelectionListenerExecutor() {
        return this.featureSelectionListenerExecutor;
    }

    private final void validateFrameRate() {
        if (Intrinsics.areEqual(this.frameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            return;
        }
        Iterator<UseCase> it = this.useCases.iterator();
        while (it.hasNext()) {
            if (it.next().getAppConfig().hasTargetFrameRate()) {
                f$$ExternalSyntheticBUOutline1.m215m("Can't set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig.");
                return;
            }
        }
    }

    private final void validateFeatureGroups() {
        if (this.requiredFeatureGroup.isEmpty() && this.preferredFeatureGroup.isEmpty()) {
            return;
        }
        validateRequiredFeatures();
        if (CollectionsKt.distinct(this.preferredFeatureGroup).size() != this.preferredFeatureGroup.size()) {
            HttpUrl$Builder$$ExternalSyntheticBUOutline0.m948m("Duplicate values in preferredFeatures(", this.preferredFeatureGroup, 41);
            return;
        }
        Set setIntersect = CollectionsKt.intersect(this.requiredFeatureGroup, this.preferredFeatureGroup);
        if (!setIntersect.isEmpty()) {
            Options$Companion$$ExternalSyntheticBUOutline0.m971m("requiredFeatures and preferredFeatures have duplicate values: ", setIntersect);
            return;
        }
        for (UseCase useCase : this.useCases) {
            if (UseCaseType.INSTANCE.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                Response$Builder$$ExternalSyntheticBUOutline0.m953m(useCase, " is not supported with feature group");
                return;
            }
            validateDefaultGroupableFeatureValues(useCase);
        }
    }

    private final void validateRequiredFeatures() {
        Set<GroupableFeature> set = this.requiredFeatureGroup;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        for (FeatureTypeInternal featureTypeInternal : CollectionsKt.distinct(arrayList)) {
            Set<GroupableFeature> set2 = this.requiredFeatureGroup;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set2) {
                if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                Options$Companion$$ExternalSyntheticBUOutline0.m971m("requiredFeatures has conflicting feature values: ", arrayList2);
                return;
            }
        }
    }

    private final void validateDefaultGroupableFeatureValues(UseCase useCase) {
        String str;
        String str2;
        String str3;
        String useCaseName = getUseCaseName(useCase);
        FeatureTypeInternal appConfiguredGroupableFeatureType$camera_core = UseCaseType.INSTANCE.getAppConfiguredGroupableFeatureType$camera_core(useCase);
        if (appConfiguredGroupableFeatureType$camera_core == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("A ");
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
                    LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                    return;
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
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return;
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
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return;
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
        return "SessionConfig@" + Integer.toHexString(System.identityHashCode(this)) + " {useCases=" + this.useCases + ", frameRateRange=" + this.frameRateRange + ", requiredFeatureGroup=" + this.requiredFeatureGroup + ", preferredFeatureGroup=" + this.preferredFeatureGroup + ", effects=" + this.effects + ", viewPort=null}";
    }

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u001d\b\u0016\u0012\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0007\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\bJ\u001b\u0010\f\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0011R\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0011R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0015R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0011R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010!\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001b¨\u0006\""}, d2 = {"Landroidx/camera/core/SessionConfig$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "useCases", "<init>", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "([Landroidx/camera/core/UseCase;)V", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "frameRateRange", "setFrameRateRange", "(Landroid/util/Range;)Landroidx/camera/core/SessionConfig$Builder;", "Landroidx/camera/core/SessionConfig;", "build", "()Landroidx/camera/core/SessionConfig;", "Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/CameraEffect;", "effects", "Landroid/util/Range;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "requiredFeatureGroup", "preferredFeatureGroup", _UrlKt.FRAGMENT_ENCODE_SET, "isAutoRotationEnabled", "Z", "Landroidx/camera/core/CameraFilter;", "cameraFilter", "Landroidx/camera/core/CameraFilter;", "sessionType", "I", "requireNonEmptyUseCases", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {
        private CameraFilter cameraFilter;
        private List<CameraEffect> effects;
        private Range<Integer> frameRateRange;
        private boolean isAutoRotationEnabled;
        private final List<GroupableFeature> preferredFeatureGroup;
        private boolean requireNonEmptyUseCases;
        private final List<GroupableFeature> requiredFeatureGroup;
        private int sessionType;
        private final List<UseCase> useCases;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(List<? extends UseCase> list) {
            this.useCases = list;
            this.effects = new ArrayList();
            this.frameRateRange = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            this.requiredFeatureGroup = new ArrayList();
            this.preferredFeatureGroup = new ArrayList();
            this.requireNonEmptyUseCases = true;
        }

        public Builder(UseCase... useCaseArr) {
            this((List<? extends UseCase>) ArraysKt.toList(useCaseArr));
        }

        public final Builder setFrameRateRange(Range<Integer> frameRateRange) {
            this.frameRateRange = frameRateRange;
            return this;
        }

        public final SessionConfig build() {
            final List<UseCase> list = this.useCases;
            final List list2 = CollectionsKt.toList(this.effects);
            final Range<Integer> range = this.frameRateRange;
            final Set set = CollectionsKt.toSet(this.requiredFeatureGroup);
            final List list3 = CollectionsKt.toList(this.preferredFeatureGroup);
            final ViewPort viewPort = null;
            return new SessionConfig(this, list, viewPort, list2, range, set, list3) { // from class: androidx.camera.core.SessionConfig$Builder$build$1
                private final CameraFilter cameraFilter;
                private final boolean isAutoRotationEnabled;
                private final boolean requireNonEmptyUseCases;
                private final int sessionType;

                {
                    this.isAutoRotationEnabled = this.isAutoRotationEnabled;
                    this.cameraFilter = this.cameraFilter;
                    this.sessionType = this.sessionType;
                    this.requireNonEmptyUseCases = this.requireNonEmptyUseCases;
                }

                @Override // androidx.camera.core.SessionConfig
                /* JADX INFO: renamed from: isAutoRotationEnabled, reason: from getter */
                public boolean getIsAutoRotationEnabled() {
                    return this.isAutoRotationEnabled;
                }

                @Override // androidx.camera.core.SessionConfig
                public CameraFilter getCameraFilter() {
                    return this.cameraFilter;
                }

                @Override // androidx.camera.core.SessionConfig
                public int getSessionType() {
                    return this.sessionType;
                }

                @Override // androidx.camera.core.SessionConfig
                public boolean getRequireNonEmptyUseCases() {
                    return this.requireNonEmptyUseCases;
                }
            };
        }
    }
}
