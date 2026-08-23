package androidx.camera.core.impl;

import android.graphics.Rect;
import android.util.Range;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.lifecycle.LiveData;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForwardingCameraInfo implements CameraInfoInternal {
    private final CameraInfoInternal mCameraInfoInternal;

    @Override // androidx.camera.core.CameraInfo
    public /* synthetic */ CameraIdentifier getCameraIdentifier() {
        return CameraIdentifier.Factory.create(getCameraId());
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public /* synthetic */ boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, androidx.camera.core.SessionConfig sessionConfig) {
        return CameraInfoInternal.CC.$default$isResolvedFeatureGroupSupported(this, resolvedFeatureGroup, sessionConfig);
    }

    public ForwardingCameraInfo(CameraInfoInternal cameraInfoInternal) {
        this.mCameraInfoInternal = cameraInfoInternal;
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees() {
        return this.mCameraInfoInternal.getSensorRotationDegrees();
    }

    @Override // androidx.camera.core.CameraInfo
    public int getSensorRotationDegrees(int i) {
        return this.mCameraInfoInternal.getSensorRotationDegrees(i);
    }

    @Override // androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        return this.mCameraInfoInternal.hasFlashUnit();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData getZoomState() {
        return this.mCameraInfoInternal.getZoomState();
    }

    @Override // androidx.camera.core.CameraInfo
    public LiveData getCameraState() {
        return this.mCameraInfoInternal.getCameraState();
    }

    @Override // androidx.camera.core.CameraInfo
    public int getLensFacing() {
        return this.mCameraInfoInternal.getLensFacing();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isExternalCamera() {
        return this.mCameraInfoInternal.isExternalCamera();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public String getCameraId() {
        return this.mCameraInfoInternal.getCameraId();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Quirks getCameraQuirks() {
        return this.mCameraInfoInternal.getCameraQuirks();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public EncoderProfilesProvider getEncoderProfilesProvider() {
        return this.mCameraInfoInternal.getEncoderProfilesProvider();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Timebase getTimebase() {
        return this.mCameraInfoInternal.getTimebase();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getSupportedOutputFormats() {
        return this.mCameraInfoInternal.getSupportedOutputFormats();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedResolutions(int i) {
        return this.mCameraInfoInternal.getSupportedResolutions(i);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighResolutions(int i) {
        return this.mCameraInfoInternal.getSupportedHighResolutions(i);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getSupportedDynamicRanges() {
        return this.mCameraInfoInternal.getSupportedDynamicRanges();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isHighSpeedSupported() {
        return this.mCameraInfoInternal.isHighSpeedSupported();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighSpeedResolutions() {
        return this.mCameraInfoInternal.getSupportedHighSpeedResolutions();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public List getSupportedHighSpeedResolutionsFor(Range range) {
        return this.mCameraInfoInternal.getSupportedHighSpeedResolutionsFor(range);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Rect getSensorRect() {
        return this.mCameraInfoInternal.getSensorRect();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public CameraInfoInternal getImplementation() {
        return this.mCameraInfoInternal.getImplementation();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isPreviewStabilizationSupported() {
        return this.mCameraInfoInternal.isPreviewStabilizationSupported();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public boolean isVideoStabilizationSupported() {
        return this.mCameraInfoInternal.isVideoStabilizationSupported();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Object getCameraCharacteristics() {
        return this.mCameraInfoInternal.getCameraCharacteristics();
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider) {
        this.mCameraInfoInternal.setCameraUseCaseAdapterProvider(cameraUseCaseAdapterProvider);
    }

    @Override // androidx.camera.core.impl.CameraInfoInternal
    public Set getAvailableCapabilities() {
        return this.mCameraInfoInternal.getAvailableCapabilities();
    }
}
