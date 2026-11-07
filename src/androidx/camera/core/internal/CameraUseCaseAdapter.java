package androidx.camera.core.internal;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.UseCase;
import androidx.camera.core.ViewPort;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AdapterCameraInternal;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.workaround.StreamSharingForceEnabler;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraUseCaseAdapter implements Camera {
    private final CameraConfig mCameraConfig;
    private final CameraCoordinator mCameraCoordinator;
    private final CameraIdentifier mCameraIdentifier;
    private final AdapterCameraInternal mCameraInternal;
    private final CompositionSettings mCompositionSettings;
    private UseCase mPlaceholderForExtensions;
    private final AdapterCameraInternal mSecondaryCameraInternal;
    private final CompositionSettings mSecondaryCompositionSettings;
    private StreamSharing mStreamSharing;
    private final StreamSpecsCalculator mStreamSpecsCalculator;
    private final UseCaseConfigFactory mUseCaseConfigFactory;
    private final List<UseCase> mAppUseCases = new ArrayList();
    private final List<UseCase> mCameraUseCases = new ArrayList();
    private List<CameraEffect> mEffects = Collections.EMPTY_LIST;
    private int mSessionType = 0;
    private Range<Integer> mFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
    private final Object mLock = new Object();
    private boolean mAttached = true;
    private Config mInteropConfig = null;
    private final StreamSharingForceEnabler mStreamSharingForceEnabler = new StreamSharingForceEnabler();

    public CameraUseCaseAdapter(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2, CameraCoordinator cameraCoordinator, StreamSpecsCalculator streamSpecsCalculator, UseCaseConfigFactory useCaseConfigFactory) {
        this.mCameraConfig = adapterCameraInfo.getCameraConfig();
        this.mCameraInternal = new AdapterCameraInternal(cameraInternal, adapterCameraInfo);
        if (cameraInternal2 != null && adapterCameraInfo2 != null) {
            this.mSecondaryCameraInternal = new AdapterCameraInternal(cameraInternal2, adapterCameraInfo2);
        } else {
            this.mSecondaryCameraInternal = null;
        }
        this.mCompositionSettings = compositionSettings;
        this.mSecondaryCompositionSettings = compositionSettings2;
        this.mCameraCoordinator = cameraCoordinator;
        this.mUseCaseConfigFactory = useCaseConfigFactory;
        this.mCameraIdentifier = CameraIdentifier.Factory.fromAdapterInfos(adapterCameraInfo, adapterCameraInfo2);
        this.mStreamSpecsCalculator = streamSpecsCalculator;
    }

    public CameraIdentifier getAdapterIdentifier() {
        return this.mCameraIdentifier;
    }

    public void setViewPort(ViewPort viewPort) {
        synchronized (this.mLock) {
        }
    }

    public void setEffects(List<CameraEffect> list) {
        synchronized (this.mLock) {
            this.mEffects = list;
        }
    }

    public void setSessionType(int i) {
        synchronized (this.mLock) {
            this.mSessionType = i;
        }
    }

    public void setFrameRate(Range<Integer> range) {
        synchronized (this.mLock) {
            this.mFrameRate = range;
        }
    }

    public void addUseCases(Collection<UseCase> collection, ResolvedFeatureGroup resolvedFeatureGroup) {
        Logger.m74d("CameraUseCaseAdapter", "addUseCases: appUseCasesToAdd = " + collection + ", featureGroup = " + resolvedFeatureGroup);
        synchronized (this.mLock) {
            try {
                applyCameraConfig();
                LinkedHashSet linkedHashSet = new LinkedHashSet(this.mAppUseCases);
                linkedHashSet.addAll(collection);
                Map<UseCase, Set<GroupableFeature>> mapApplyFeatureGroup = applyFeatureGroup(linkedHashSet, resolvedFeatureGroup);
                try {
                    applyCalculatedUseCaseChanges(calculateAndValidateUseCases(linkedHashSet, this.mSecondaryCameraInternal != null, false));
                } catch (IllegalArgumentException e) {
                    restoreFeatureGroup(mapApplyFeatureGroup);
                    throw new CameraException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public CalculatedUseCaseInfo simulateAddUseCases(Collection<UseCase> collection, ResolvedFeatureGroup resolvedFeatureGroup, boolean z) {
        CalculatedUseCaseInfo calculatedUseCaseInfoCalculateAndValidateUseCases;
        Logger.m74d("CameraUseCaseAdapter", "simulateAddUseCases: appUseCasesToAdd = " + collection + ", featureGroup = " + resolvedFeatureGroup);
        synchronized (this.mLock) {
            applyCameraConfig();
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.mAppUseCases);
            linkedHashSet.addAll(collection);
            Map<UseCase, Set<GroupableFeature>> mapApplyFeatureGroup = applyFeatureGroup(linkedHashSet, resolvedFeatureGroup);
            try {
                try {
                    calculatedUseCaseInfoCalculateAndValidateUseCases = calculateAndValidateUseCases(linkedHashSet, this.mSecondaryCameraInternal != null, z);
                } catch (IllegalArgumentException e) {
                    throw new CameraException(e);
                }
            } finally {
                restoreFeatureGroup(mapApplyFeatureGroup);
            }
        }
        return calculatedUseCaseInfoCalculateAndValidateUseCases;
    }

    public void removeUseCases(Collection<UseCase> collection) {
        synchronized (this.mLock) {
            clearFeatureGroup(collection);
            LinkedHashSet linkedHashSet = new LinkedHashSet(this.mAppUseCases);
            linkedHashSet.removeAll(collection);
            applyCalculatedUseCaseChanges(calculateAndValidateUseCases(linkedHashSet, this.mSecondaryCameraInternal != null, false));
        }
    }

    private CalculatedUseCaseInfo calculateAndValidateUseCases(Collection<UseCase> collection, boolean z, boolean z2) {
        StreamSpecQueryResult streamSpecQueryResultCalculateSuggestedStreamSpecs;
        boolean z3 = z2;
        checkUnsupportedFeatureCombinationAndThrow(collection);
        if (!z && shouldForceEnableStreamSharing(collection)) {
            return calculateAndValidateUseCases(collection, true, z3);
        }
        StreamSharing streamSharingCreateOrReuseStreamSharing = createOrReuseStreamSharing(collection, z);
        UseCase useCaseCalculatePlaceholderForExtensions = calculatePlaceholderForExtensions(collection, streamSharingCreateOrReuseStreamSharing);
        Collection<UseCase> collectionCalculateCameraUseCases = calculateCameraUseCases(collection, useCaseCalculatePlaceholderForExtensions, streamSharingCreateOrReuseStreamSharing);
        ArrayList arrayList = new ArrayList(collectionCalculateCameraUseCases);
        arrayList.removeAll(this.mCameraUseCases);
        ArrayList arrayList2 = new ArrayList(collectionCalculateCameraUseCases);
        arrayList2.retainAll(this.mCameraUseCases);
        ArrayList arrayList3 = new ArrayList(this.mCameraUseCases);
        arrayList3.removeAll(collectionCalculateCameraUseCases);
        Map<UseCase, ConfigPair> configs = getConfigs(arrayList, this.mCameraConfig.getUseCaseConfigFactory(), this.mUseCaseConfigFactory, this.mSessionType, this.mFrameRate);
        boolean zIsFeatureComboInvocation = isFeatureComboInvocation(arrayList, arrayList2);
        try {
            StreamSpecQueryResult streamSpecQueryResultCalculateSuggestedStreamSpecs2 = this.mStreamSpecsCalculator.calculateSuggestedStreamSpecs(getCameraMode(), this.mCameraInternal.getCameraInfoInternal(), arrayList, arrayList2, this.mCameraConfig, this.mSessionType, this.mFrameRate, zIsFeatureComboInvocation, z3);
            try {
                if (this.mSecondaryCameraInternal != null) {
                    StreamSpecsCalculator streamSpecsCalculator = this.mStreamSpecsCalculator;
                    int cameraMode = getCameraMode();
                    AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                    Objects.requireNonNull(adapterCameraInternal);
                    z3 = z2;
                    streamSpecQueryResultCalculateSuggestedStreamSpecs = streamSpecsCalculator.calculateSuggestedStreamSpecs(cameraMode, adapterCameraInternal.getCameraInfoInternal(), arrayList, arrayList2, this.mCameraConfig, this.mSessionType, this.mFrameRate, zIsFeatureComboInvocation, z3);
                } else {
                    streamSpecQueryResultCalculateSuggestedStreamSpecs = null;
                }
                return new CalculatedUseCaseInfo(collection, collectionCalculateCameraUseCases, arrayList, arrayList2, arrayList3, streamSharingCreateOrReuseStreamSharing, useCaseCalculatePlaceholderForExtensions, configs, streamSpecQueryResultCalculateSuggestedStreamSpecs2, streamSpecQueryResultCalculateSuggestedStreamSpecs);
            } catch (IllegalArgumentException e) {
                e = e;
                z3 = z2;
                if (!z && isStreamSharingAllowed()) {
                    return calculateAndValidateUseCases(collection, true, z3);
                }
                throw e;
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
        }
    }

    private void applyCalculatedUseCaseChanges(CalculatedUseCaseInfo calculatedUseCaseInfo) {
        updateViewPortAndSensorToBufferMatrix(calculatedUseCaseInfo.getPrimaryStreamSpecResult().getStreamSpecs(), calculatedUseCaseInfo.getCameraUseCases());
        updateEffects(this.mEffects, calculatedUseCaseInfo.getCameraUseCases(), calculatedUseCaseInfo.getAppUseCases());
        Iterator<UseCase> it = calculatedUseCaseInfo.getCameraUseCasesToDetach().iterator();
        while (it.hasNext()) {
            it.next().unbindFromCamera(this.mCameraInternal);
        }
        this.mCameraInternal.detachUseCases(calculatedUseCaseInfo.getCameraUseCasesToDetach());
        if (this.mSecondaryCameraInternal != null) {
            for (UseCase useCase : calculatedUseCaseInfo.getCameraUseCasesToDetach()) {
                AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                Objects.requireNonNull(adapterCameraInternal);
                useCase.unbindFromCamera(adapterCameraInternal);
            }
            AdapterCameraInternal adapterCameraInternal2 = this.mSecondaryCameraInternal;
            Objects.requireNonNull(adapterCameraInternal2);
            adapterCameraInternal2.detachUseCases(calculatedUseCaseInfo.getCameraUseCasesToDetach());
        }
        if (calculatedUseCaseInfo.getCameraUseCasesToDetach().isEmpty()) {
            for (UseCase useCase2 : calculatedUseCaseInfo.getCameraUseCasesToKeep()) {
                Map<UseCase, StreamSpec> streamSpecs = calculatedUseCaseInfo.getPrimaryStreamSpecResult().getStreamSpecs();
                if (streamSpecs.containsKey(useCase2)) {
                    StreamSpec streamSpec = streamSpecs.get(useCase2);
                    Objects.requireNonNull(streamSpec);
                    Config implementationOptions = streamSpec.getImplementationOptions();
                    if (implementationOptions != null && hasImplementationOptionChanged(streamSpec, useCase2.getSessionConfig())) {
                        useCase2.updateSuggestedStreamSpecImplementationOptions(implementationOptions);
                        if (this.mAttached) {
                            this.mCameraInternal.onUseCaseUpdated(useCase2);
                            AdapterCameraInternal adapterCameraInternal3 = this.mSecondaryCameraInternal;
                            if (adapterCameraInternal3 != null) {
                                Objects.requireNonNull(adapterCameraInternal3);
                                adapterCameraInternal3.onUseCaseUpdated(useCase2);
                            }
                        }
                    }
                }
            }
        }
        for (UseCase useCase3 : calculatedUseCaseInfo.getCameraUseCasesToAttach()) {
            ConfigPair configPair = calculatedUseCaseInfo.getUseCaseConfigs().get(useCase3);
            Objects.requireNonNull(configPair);
            AdapterCameraInternal adapterCameraInternal4 = this.mSecondaryCameraInternal;
            AdapterCameraInternal adapterCameraInternal5 = this.mCameraInternal;
            if (adapterCameraInternal4 != null) {
                Objects.requireNonNull(adapterCameraInternal4);
                useCase3.bindToCamera(adapterCameraInternal5, adapterCameraInternal4, configPair.mExtendedConfig, configPair.mCameraConfig);
                useCase3.updateSuggestedStreamSpec((StreamSpec) Preconditions.checkNotNull(calculatedUseCaseInfo.getPrimaryStreamSpecResult().getStreamSpecs().get(useCase3)), ((StreamSpecQueryResult) Preconditions.checkNotNull(calculatedUseCaseInfo.getSecondaryStreamSpecResult())).getStreamSpecs().get(useCase3));
            } else {
                useCase3.bindToCamera(adapterCameraInternal5, null, configPair.mExtendedConfig, configPair.mCameraConfig);
                useCase3.updateSuggestedStreamSpec((StreamSpec) Preconditions.checkNotNull(calculatedUseCaseInfo.getPrimaryStreamSpecResult().getStreamSpecs().get(useCase3)), null);
            }
        }
        if (this.mAttached) {
            this.mCameraInternal.attachUseCases(calculatedUseCaseInfo.getCameraUseCasesToAttach());
            AdapterCameraInternal adapterCameraInternal6 = this.mSecondaryCameraInternal;
            if (adapterCameraInternal6 != null) {
                Objects.requireNonNull(adapterCameraInternal6);
                adapterCameraInternal6.attachUseCases(calculatedUseCaseInfo.getCameraUseCasesToAttach());
            }
        }
        Iterator<UseCase> it2 = calculatedUseCaseInfo.getCameraUseCasesToAttach().iterator();
        while (it2.hasNext()) {
            it2.next().notifyState();
        }
        this.mAppUseCases.clear();
        this.mAppUseCases.addAll(calculatedUseCaseInfo.getAppUseCases());
        this.mCameraUseCases.clear();
        this.mCameraUseCases.addAll(calculatedUseCaseInfo.getCameraUseCases());
        this.mPlaceholderForExtensions = calculatedUseCaseInfo.getPlaceholderForExtensions();
        this.mStreamSharing = calculatedUseCaseInfo.getStreamSharing();
    }

    private void applyCameraConfig() {
        this.mCameraInternal.setExtendedConfig(this.mCameraConfig);
        AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
        if (adapterCameraInternal != null) {
            adapterCameraInternal.setExtendedConfig(this.mCameraConfig);
        }
    }

    private static Map<UseCase, Set<GroupableFeature>> applyFeatureGroup(Collection<UseCase> collection, ResolvedFeatureGroup resolvedFeatureGroup) {
        HashMap map = new HashMap();
        for (UseCase useCase : collection) {
            map.put(useCase, useCase.getFeatureGroup());
            useCase.setFeatureGroup(resolvedFeatureGroup != null ? resolvedFeatureGroup.getFeatures() : null);
        }
        return map;
    }

    private static void restoreFeatureGroup(Map<UseCase, Set<GroupableFeature>> map) {
        for (Map.Entry<UseCase, Set<GroupableFeature>> entry : map.entrySet()) {
            entry.getKey().setFeatureGroup(entry.getValue());
        }
    }

    private static void clearFeatureGroup(Collection<UseCase> collection) {
        Iterator<UseCase> it = collection.iterator();
        while (it.hasNext()) {
            it.next().setFeatureGroup(null);
        }
    }

    @SafeVarargs
    private static boolean isFeatureComboInvocation(List<UseCase>... listArr) {
        boolean z = false;
        for (List<UseCase> list : listArr) {
            Iterator<UseCase> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().getFeatureGroup() != null) {
                    z = true;
                    break;
                }
            }
            if (z) {
                return z;
            }
        }
        return z;
    }

    private boolean isStreamSharingAllowed() {
        return (hasExtension() || this.mSecondaryCameraInternal != null || this.mSessionType == 1) ? false : true;
    }

    private boolean shouldForceEnableStreamSharing(Collection<UseCase> collection) {
        if (hasExtension() && UseCaseUtil.containsVideoCapture(collection)) {
            return true;
        }
        return this.mStreamSharingForceEnabler.shouldForceEnableStreamSharing(this.mCameraInternal.getCameraInfoInternal().getCameraId(), collection);
    }

    private static boolean hasImplementationOptionChanged(StreamSpec streamSpec, SessionConfig sessionConfig) {
        Config implementationOptions = streamSpec.getImplementationOptions();
        Config implementationOptions2 = sessionConfig.getImplementationOptions();
        Objects.requireNonNull(implementationOptions);
        if (implementationOptions.listOptions().size() != sessionConfig.getImplementationOptions().listOptions().size()) {
            return true;
        }
        for (Config.Option<?> option : implementationOptions.listOptions()) {
            if (!implementationOptions2.containsOption(option) || !Objects.equals(implementationOptions2.retrieveOption(option), implementationOptions.retrieveOption(option))) {
                return true;
            }
        }
        return false;
    }

    private int getCameraMode() {
        synchronized (this.mLock) {
            try {
                return this.mCameraCoordinator.getCameraOperatingMode() == 2 ? 1 : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean hasExtension() {
        synchronized (this.mLock) {
            this.mCameraConfig.getSessionProcessor(null);
        }
        return false;
    }

    private Set<UseCase> getStreamSharingChildren(Collection<UseCase> collection, boolean z) {
        HashSet hashSet = new HashSet();
        int sharingTargets = getSharingTargets(z);
        for (UseCase useCase : collection) {
            Preconditions.checkArgument(!StreamSharing.isStreamSharing(useCase), "Only support one level of sharing for now.");
            if (useCase.isEffectTargetsSupported(sharingTargets)) {
                hashSet.add(useCase);
            }
        }
        return hashSet;
    }

    private int getSharingTargets(boolean z) {
        int i;
        synchronized (this.mLock) {
            try {
                Iterator<CameraEffect> it = this.mEffects.iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                }
                i = z ? 3 : 0;
            } finally {
            }
        }
        return i;
    }

    private StreamSharing createOrReuseStreamSharing(Collection<UseCase> collection, boolean z) {
        synchronized (this.mLock) {
            try {
                Set<UseCase> streamSharingChildren = getStreamSharingChildren(collection, z);
                if (streamSharingChildren.size() >= 2 || (hasExtension() && UseCaseUtil.containsVideoCapture(streamSharingChildren))) {
                    StreamSharing streamSharing = this.mStreamSharing;
                    if (streamSharing != null && streamSharing.getChildren().equals(streamSharingChildren)) {
                        this.mStreamSharing.updateFeatureGroup(streamSharingChildren);
                        StreamSharing streamSharing2 = this.mStreamSharing;
                        Objects.requireNonNull(streamSharing2);
                        return streamSharing2;
                    }
                    if (!isStreamSharingChildrenCombinationValid(streamSharingChildren)) {
                        return null;
                    }
                    return new StreamSharing(this.mCameraInternal, this.mSecondaryCameraInternal, this.mCompositionSettings, this.mSecondaryCompositionSettings, streamSharingChildren, this.mUseCaseConfigFactory);
                }
                return null;
            } finally {
            }
        }
    }

    public static boolean isStreamSharingChildrenCombinationValid(Collection<UseCase> collection) {
        int[] iArr = {1, 2, 4};
        HashSet hashSet = new HashSet();
        for (UseCase useCase : collection) {
            for (int i = 0; i < 3; i++) {
                int i2 = iArr[i];
                if (useCase.isEffectTargetsSupported(i2)) {
                    if (hashSet.contains(Integer.valueOf(i2))) {
                        return false;
                    }
                    hashSet.add(Integer.valueOf(i2));
                }
            }
        }
        return true;
    }

    public static Collection<UseCase> calculateCameraUseCases(Collection<UseCase> collection, UseCase useCase, StreamSharing streamSharing) {
        ArrayList arrayList = new ArrayList(collection);
        if (useCase != null) {
            arrayList.add(useCase);
        }
        if (streamSharing != null) {
            arrayList.add(streamSharing);
            arrayList.removeAll(streamSharing.getChildren());
        }
        return arrayList;
    }

    public List<UseCase> getUseCases() {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mAppUseCases);
        }
        return arrayList;
    }

    public void attachUseCases() {
        synchronized (this.mLock) {
            try {
                if (!this.mAttached) {
                    if (!this.mCameraUseCases.isEmpty()) {
                        this.mCameraInternal.setExtendedConfig(this.mCameraConfig);
                        AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                        if (adapterCameraInternal != null) {
                            adapterCameraInternal.setExtendedConfig(this.mCameraConfig);
                        }
                    }
                    this.mCameraInternal.attachUseCases(this.mCameraUseCases);
                    AdapterCameraInternal adapterCameraInternal2 = this.mSecondaryCameraInternal;
                    if (adapterCameraInternal2 != null) {
                        adapterCameraInternal2.attachUseCases(this.mCameraUseCases);
                    }
                    restoreInteropConfig();
                    Iterator<UseCase> it = this.mCameraUseCases.iterator();
                    while (it.hasNext()) {
                        it.next().notifyState();
                    }
                    this.mAttached = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setActiveResumingMode(boolean z) {
        this.mCameraInternal.setActiveResumingMode(z);
    }

    public void detachUseCases() {
        synchronized (this.mLock) {
            try {
                if (this.mAttached) {
                    this.mCameraInternal.detachUseCases(new ArrayList(this.mCameraUseCases));
                    AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
                    if (adapterCameraInternal != null) {
                        adapterCameraInternal.detachUseCases(new ArrayList(this.mCameraUseCases));
                    }
                    cacheInteropConfig();
                    this.mAttached = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void restoreInteropConfig() {
        synchronized (this.mLock) {
            try {
                if (this.mInteropConfig != null) {
                    this.mCameraInternal.getCameraControlInternal().addInteropConfig(this.mInteropConfig);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void cacheInteropConfig() {
        synchronized (this.mLock) {
            CameraControlInternal cameraControlInternal = this.mCameraInternal.getCameraControlInternal();
            this.mInteropConfig = cameraControlInternal.getInteropConfig();
            cameraControlInternal.clearInteropConfig();
        }
    }

    public static void updateEffects(List<CameraEffect> list, Collection<UseCase> collection, Collection<UseCase> collection2) {
        List<CameraEffect> effectsOnUseCases = setEffectsOnUseCases(list, collection);
        ArrayList arrayList = new ArrayList(collection2);
        arrayList.removeAll(collection);
        List<CameraEffect> effectsOnUseCases2 = setEffectsOnUseCases(effectsOnUseCases, arrayList);
        if (effectsOnUseCases2.isEmpty()) {
            return;
        }
        Logger.m79w("CameraUseCaseAdapter", "Unused effects: " + effectsOnUseCases2);
    }

    private static List<CameraEffect> setEffectsOnUseCases(List<CameraEffect> list, Collection<UseCase> collection) {
        ArrayList arrayList = new ArrayList(list);
        Iterator<UseCase> it = collection.iterator();
        while (it.hasNext()) {
            it.next().setEffect(null);
            Iterator<CameraEffect> it2 = list.iterator();
            if (it2.hasNext()) {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
                throw null;
            }
        }
        return arrayList;
    }

    private void updateViewPortAndSensorToBufferMatrix(Map<UseCase, StreamSpec> map, Collection<UseCase> collection) {
        synchronized (this.mLock) {
            try {
                for (UseCase useCase : collection) {
                    useCase.setSensorToBufferTransformMatrix(calculateSensorToBufferTransformMatrix(this.mCameraInternal.getCameraInfoInternal().getSensorRect(), ((StreamSpec) Preconditions.checkNotNull(map.get(useCase))).getResolution()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Matrix calculateSensorToBufferTransformMatrix(Rect rect, Size size) {
        Preconditions.checkArgument(rect.width() > 0 && rect.height() > 0, "Cannot compute viewport crop rects zero sized sensor rect.");
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(0.0f, 0.0f, size.getWidth(), size.getHeight()), rectF, Matrix.ScaleToFit.CENTER);
        matrix.invert(matrix);
        return matrix;
    }

    public static class ConfigPair {
        UseCaseConfig<?> mCameraConfig;
        UseCaseConfig<?> mExtendedConfig;

        public ConfigPair(UseCaseConfig<?> useCaseConfig, UseCaseConfig<?> useCaseConfig2) {
            this.mExtendedConfig = useCaseConfig;
            this.mCameraConfig = useCaseConfig2;
        }
    }

    public static Map<UseCase, ConfigPair> getConfigs(Collection<UseCase> collection, UseCaseConfigFactory useCaseConfigFactory, UseCaseConfigFactory useCaseConfigFactory2, int i, Range<Integer> range) {
        UseCaseConfig<?> defaultConfig;
        HashMap map = new HashMap();
        for (UseCase useCase : collection) {
            if (StreamSharing.isStreamSharing(useCase)) {
                defaultConfig = generateExtendedStreamSharingConfigFromPreview(useCaseConfigFactory, (StreamSharing) useCase);
            } else {
                defaultConfig = useCase.getDefaultConfig(false, useCaseConfigFactory);
            }
            map.put(useCase, new ConfigPair(defaultConfig, attachUseCaseSharedConfigs(useCase, useCase.getDefaultConfig(true, useCaseConfigFactory2), i, range)));
        }
        return map;
    }

    private static UseCaseConfig<?> attachUseCaseSharedConfigs(UseCase useCase, UseCaseConfig<?> useCaseConfig, int i, Range<Integer> range) {
        MutableOptionsBundle mutableOptionsBundleFrom = useCaseConfig != null ? MutableOptionsBundle.from((Config) useCaseConfig) : MutableOptionsBundle.create();
        mutableOptionsBundleFrom.insertOption(UseCaseConfig.OPTION_SESSION_TYPE, Integer.valueOf(i));
        if (!StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED.equals(range)) {
            mutableOptionsBundleFrom.insertOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, Config.OptionPriority.HIGH_PRIORITY_REQUIRED, range);
            mutableOptionsBundleFrom.insertOption(UseCaseConfig.OPTION_IS_STRICT_FRAME_RATE_REQUIRED, Boolean.TRUE);
        }
        return useCase.getUseCaseConfigBuilder(mutableOptionsBundleFrom).getUseCaseConfig();
    }

    private static UseCaseConfig<?> generateExtendedStreamSharingConfigFromPreview(UseCaseConfigFactory useCaseConfigFactory, StreamSharing streamSharing) {
        UseCaseConfig<?> defaultConfig = new Preview.Builder().build().getDefaultConfig(false, useCaseConfigFactory);
        if (defaultConfig == null) {
            return null;
        }
        MutableOptionsBundle mutableOptionsBundleFrom = MutableOptionsBundle.from((Config) defaultConfig);
        mutableOptionsBundleFrom.removeOption(TargetConfig.OPTION_TARGET_CLASS);
        return streamSharing.getUseCaseConfigBuilder(mutableOptionsBundleFrom).getUseCaseConfig();
    }

    private void checkUnsupportedFeatureCombinationAndThrow(Collection<UseCase> collection) {
        if (hasExtension()) {
            if (hasNonSdrConfig(collection)) {
                f$$ExternalSyntheticBUOutline1.m212m("Extensions are only supported for use with standard dynamic range.");
                return;
            } else if (hasRawImageCapture(collection)) {
                f$$ExternalSyntheticBUOutline1.m212m("Extensions are not supported for use with Raw image capture.");
                return;
            }
        }
        synchronized (this.mLock) {
            try {
                if (!this.mEffects.isEmpty() && (hasUltraHdrImageCapture(collection) || hasRawImageCapture(collection))) {
                    throw new IllegalArgumentException("Ultra HDR image and Raw capture does not support for use with CameraEffect.");
                }
            } finally {
            }
        }
    }

    private static boolean hasNonSdrConfig(Collection<UseCase> collection) {
        Iterator<UseCase> it = collection.iterator();
        while (it.hasNext()) {
            if (isNotSdr(it.next().getCurrentConfig().getDynamicRange())) {
                return true;
            }
        }
        return false;
    }

    private static boolean isNotSdr(DynamicRange dynamicRange) {
        return (dynamicRange.getBitDepth() == 10) || (dynamicRange.getEncoding() != 1 && dynamicRange.getEncoding() != 0);
    }

    private static boolean hasUltraHdrImageCapture(Collection<UseCase> collection) {
        for (UseCase useCase : collection) {
            if (isImageCapture(useCase)) {
                UseCaseConfig<?> currentConfig = useCase.getCurrentConfig();
                Config.Option<?> option = ImageCaptureConfig.OPTION_OUTPUT_FORMAT;
                if (currentConfig.containsOption(option) && ((Integer) Preconditions.checkNotNull((Integer) currentConfig.retrieveOption(option))).intValue() == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean hasRawImageCapture(Collection<UseCase> collection) {
        for (UseCase useCase : collection) {
            if (isImageCapture(useCase)) {
                UseCaseConfig<?> currentConfig = useCase.getCurrentConfig();
                Config.Option<?> option = ImageCaptureConfig.OPTION_OUTPUT_FORMAT;
                if (currentConfig.containsOption(option) && ((Integer) Preconditions.checkNotNull((Integer) currentConfig.retrieveOption(option))).intValue() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final class CameraException extends Exception {
        public CameraException(Throwable th) {
            super(th);
        }
    }

    @Override // androidx.camera.core.Camera
    public CameraControl getCameraControl() {
        return this.mCameraInternal.getCameraControl();
    }

    @Override // androidx.camera.core.Camera
    public CameraInfo getCameraInfo() {
        return this.mCameraInternal.getCameraInfo();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private UseCase calculatePlaceholderForExtensions(Collection<UseCase> collection, StreamSharing streamSharing) {
        UseCase useCaseCreateExtraImageCapture;
        synchronized (this.mLock) {
            try {
                ArrayList arrayList = new ArrayList(collection);
                if (streamSharing != null) {
                    arrayList.add(streamSharing);
                    arrayList.removeAll(streamSharing.getChildren());
                }
                if (!isCoexistingPreviewImageCaptureRequired()) {
                    useCaseCreateExtraImageCapture = null;
                } else if (isExtraPreviewRequired(arrayList)) {
                    if (isPreview(this.mPlaceholderForExtensions)) {
                        useCaseCreateExtraImageCapture = this.mPlaceholderForExtensions;
                    } else {
                        useCaseCreateExtraImageCapture = createExtraPreview();
                    }
                } else if (isExtraImageCaptureRequired(arrayList)) {
                    if (isImageCapture(this.mPlaceholderForExtensions)) {
                        useCaseCreateExtraImageCapture = this.mPlaceholderForExtensions;
                    } else {
                        useCaseCreateExtraImageCapture = createExtraImageCapture();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return useCaseCreateExtraImageCapture;
    }

    private boolean isCoexistingPreviewImageCaptureRequired() {
        boolean z;
        synchronized (this.mLock) {
            z = true;
            if (this.mCameraConfig.getUseCaseCombinationRequiredRule() != 1) {
                z = false;
            }
        }
        return z;
    }

    private static boolean isExtraPreviewRequired(Collection<UseCase> collection) {
        boolean z = false;
        boolean z2 = false;
        for (UseCase useCase : collection) {
            if (isPreview(useCase) || StreamSharing.isStreamSharing(useCase)) {
                z2 = true;
            } else if (isImageCapture(useCase)) {
                z = true;
            }
        }
        return z && !z2;
    }

    private static boolean isExtraImageCaptureRequired(Collection<UseCase> collection) {
        boolean z = false;
        boolean z2 = false;
        for (UseCase useCase : collection) {
            if (isPreview(useCase) || StreamSharing.isStreamSharing(useCase)) {
                z = true;
            } else if (isImageCapture(useCase)) {
                z2 = true;
            }
        }
        return z && !z2;
    }

    private static boolean isPreview(UseCase useCase) {
        return useCase instanceof Preview;
    }

    private static boolean isImageCapture(UseCase useCase) {
        return useCase instanceof ImageCapture;
    }

    private Preview createExtraPreview() {
        Preview previewBuild = new Preview.Builder().setTargetName("Preview-Extra").build();
        previewBuild.setSurfaceProvider(new Preview.SurfaceProvider() { // from class: androidx.camera.core.internal.CameraUseCaseAdapter$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.Preview.SurfaceProvider
            public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
                CameraUseCaseAdapter.$r8$lambda$5hNd8fSJgscI21DT4954dmCDmuQ(surfaceRequest);
            }
        });
        return previewBuild;
    }

    public static /* synthetic */ void $r8$lambda$5hNd8fSJgscI21DT4954dmCDmuQ(SurfaceRequest surfaceRequest) {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(surfaceRequest.getResolution().getWidth(), surfaceRequest.getResolution().getHeight());
        surfaceTexture.detachFromGLContext();
        final Surface surface = new Surface(surfaceTexture);
        surfaceRequest.provideSurface(surface, CameraXExecutors.directExecutor(), new Consumer() { // from class: androidx.camera.core.internal.CameraUseCaseAdapter$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                CameraUseCaseAdapter.m1671$r8$lambda$LnyTrDpxDU4Lj0jFr7wqOCUqwI(surface, surfaceTexture, (SurfaceRequest.Result) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$LnyT-rDpxDU4Lj0jFr7wqOCUqwI, reason: not valid java name */
    public static /* synthetic */ void m1671$r8$lambda$LnyTrDpxDU4Lj0jFr7wqOCUqwI(Surface surface, SurfaceTexture surfaceTexture, SurfaceRequest.Result result) {
        surface.release();
        surfaceTexture.release();
    }

    public boolean isRemoved() {
        if (this.mCameraInternal.isRemoved()) {
            return true;
        }
        AdapterCameraInternal adapterCameraInternal = this.mSecondaryCameraInternal;
        return adapterCameraInternal != null && adapterCameraInternal.isRemoved();
    }

    private ImageCapture createExtraImageCapture() {
        return new ImageCapture.Builder().setTargetName("ImageCapture-Extra").build();
    }
}
