package androidx.camera.core.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.params.InputConfiguration;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.AutoValue_SessionConfig_OutputConfig;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.internal.HighSpeedFpsModifier;
import androidx.camera.core.internal.compat.workaround.SurfaceSorter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionConfig {
    private static final List SUPPORTED_TEMPLATE_PRIORITY = Arrays.asList(1, 5, 3);
    private final List mDeviceStateCallbacks;
    private final ErrorListener mErrorListener;
    private InputConfiguration mInputConfiguration;
    private final List mOutputConfigs;
    private final OutputConfig mPostviewOutputConfig;
    private final CaptureConfig mRepeatingCaptureConfig;
    private final List mSessionStateCallbacks;
    private final int mSessionType;
    private final List mSingleCameraCaptureCallbacks;

    public interface ErrorListener {
        void onError(SessionConfig sessionConfig, SessionError sessionError);
    }

    public interface OptionUnpacker {
        void unpack(Size size, UseCaseConfig useCaseConfig, Builder builder);
    }

    public enum SessionError {
        SESSION_ERROR_SURFACE_NEEDS_RESET,
        SESSION_ERROR_UNKNOWN
    }

    public static abstract class OutputConfig {

        public static abstract class Builder {
            public abstract OutputConfig build();

            public abstract Builder setDynamicRange(DynamicRange dynamicRange);

            public abstract Builder setMirrorMode(int i);

            public abstract Builder setPhysicalCameraId(String str);

            public abstract Builder setSharedSurfaces(List list);

            public abstract Builder setSurfaceGroupId(int i);
        }

        public abstract DynamicRange getDynamicRange();

        public abstract int getMirrorMode();

        public abstract String getPhysicalCameraId();

        public abstract List getSharedSurfaces();

        public abstract DeferrableSurface getSurface();

        public abstract int getSurfaceGroupId();

        public static Builder builder(DeferrableSurface deferrableSurface) {
            return new AutoValue_SessionConfig_OutputConfig.Builder().setSurface(deferrableSurface).setSharedSurfaces(Collections.EMPTY_LIST).setPhysicalCameraId(null).setMirrorMode(-1).setSurfaceGroupId(-1).setDynamicRange(DynamicRange.SDR);
        }
    }

    SessionConfig(List list, List list2, List list3, List list4, CaptureConfig captureConfig, ErrorListener errorListener, InputConfiguration inputConfiguration, int i, OutputConfig outputConfig) {
        this.mOutputConfigs = list;
        this.mDeviceStateCallbacks = DesugarCollections.unmodifiableList(list2);
        this.mSessionStateCallbacks = DesugarCollections.unmodifiableList(list3);
        this.mSingleCameraCaptureCallbacks = DesugarCollections.unmodifiableList(list4);
        this.mErrorListener = errorListener;
        this.mRepeatingCaptureConfig = captureConfig;
        this.mInputConfiguration = inputConfiguration;
        this.mSessionType = i;
        this.mPostviewOutputConfig = outputConfig;
    }

    public static SessionConfig defaultEmptySessionConfig() {
        return new SessionConfig(new ArrayList(), new ArrayList(0), new ArrayList(0), new ArrayList(0), new CaptureConfig.Builder().build(), null, null, 0, null);
    }

    public InputConfiguration getInputConfiguration() {
        return this.mInputConfiguration;
    }

    public List getSurfaces() {
        ArrayList arrayList = new ArrayList();
        for (OutputConfig outputConfig : this.mOutputConfigs) {
            arrayList.add(outputConfig.getSurface());
            Iterator it = outputConfig.getSharedSurfaces().iterator();
            while (it.hasNext()) {
                arrayList.add((DeferrableSurface) it.next());
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public List getOutputConfigs() {
        return this.mOutputConfigs;
    }

    public OutputConfig getPostviewOutputConfig() {
        return this.mPostviewOutputConfig;
    }

    public Config getImplementationOptions() {
        return this.mRepeatingCaptureConfig.getImplementationOptions();
    }

    public int getTemplateType() {
        return this.mRepeatingCaptureConfig.getTemplateType();
    }

    public int getSessionType() {
        return this.mSessionType;
    }

    public Range getExpectedFrameRateRange() {
        return this.mRepeatingCaptureConfig.getExpectedFrameRateRange();
    }

    public List getDeviceStateCallbacks() {
        return this.mDeviceStateCallbacks;
    }

    public List getSessionStateCallbacks() {
        return this.mSessionStateCallbacks;
    }

    public List getRepeatingCameraCaptureCallbacks() {
        return this.mRepeatingCaptureConfig.getCameraCaptureCallbacks();
    }

    public ErrorListener getErrorListener() {
        return this.mErrorListener;
    }

    public List getSingleCameraCaptureCallbacks() {
        return this.mSingleCameraCaptureCallbacks;
    }

    public CaptureConfig getRepeatingCaptureConfig() {
        return this.mRepeatingCaptureConfig;
    }

    public static int getHigherPriorityTemplateType(int i, int i2) {
        List list = SUPPORTED_TEMPLATE_PRIORITY;
        return list.indexOf(Integer.valueOf(i)) >= list.indexOf(Integer.valueOf(i2)) ? i : i2;
    }

    public static final class CloseableErrorListener implements ErrorListener {
        private final ErrorListener mErrorListener;
        private final AtomicBoolean mIsClosed = new AtomicBoolean(false);

        public CloseableErrorListener(ErrorListener errorListener) {
            this.mErrorListener = errorListener;
        }

        @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
        public void onError(SessionConfig sessionConfig, SessionError sessionError) {
            if (this.mIsClosed.get()) {
                return;
            }
            this.mErrorListener.onError(sessionConfig, sessionError);
        }

        public void close() {
            this.mIsClosed.set(true);
        }
    }

    static class BaseBuilder {
        ErrorListener mErrorListener;
        InputConfiguration mInputConfiguration;
        OutputConfig mPostviewOutputConfig;
        final Set mOutputConfigs = new LinkedHashSet();
        final CaptureConfig.Builder mCaptureConfigBuilder = new CaptureConfig.Builder();
        final List mDeviceStateCallbacks = new ArrayList();
        final List mSessionStateCallbacks = new ArrayList();
        final List mSingleCameraCaptureCallbacks = new ArrayList();
        int mSessionType = 0;

        BaseBuilder() {
        }
    }

    public static class Builder extends BaseBuilder {
        public static Builder createFrom(UseCaseConfig useCaseConfig, Size size) {
            OptionUnpacker sessionOptionUnpacker = useCaseConfig.getSessionOptionUnpacker(null);
            if (sessionOptionUnpacker == null) {
                throw new IllegalStateException("Implementation is missing option unpacker for " + useCaseConfig.getTargetName(useCaseConfig.toString()));
            }
            Builder builder = new Builder();
            sessionOptionUnpacker.unpack(size, useCaseConfig, builder);
            return builder;
        }

        public Builder setInputConfiguration(InputConfiguration inputConfiguration) {
            this.mInputConfiguration = inputConfiguration;
            return this;
        }

        public Builder setTemplateType(int i) {
            this.mCaptureConfigBuilder.setTemplateType(i);
            return this;
        }

        public Builder setSessionType(int i) {
            this.mSessionType = i;
            return this;
        }

        public Builder setExpectedFrameRateRange(Range range) {
            this.mCaptureConfigBuilder.setExpectedFrameRateRange(range);
            return this;
        }

        public Builder setPreviewStabilization(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setPreviewStabilization(i);
            }
            return this;
        }

        public Builder setVideoStabilization(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setVideoStabilization(i);
            }
            return this;
        }

        public Builder addTag(String str, Object obj) {
            this.mCaptureConfigBuilder.addTag(str, obj);
            return this;
        }

        public Builder addDeviceStateCallback(CameraDevice.StateCallback stateCallback) {
            if (this.mDeviceStateCallbacks.contains(stateCallback)) {
                return this;
            }
            this.mDeviceStateCallbacks.add(stateCallback);
            return this;
        }

        public Builder addAllDeviceStateCallbacks(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                addDeviceStateCallback((CameraDevice.StateCallback) it.next());
            }
            return this;
        }

        public Builder addSessionStateCallback(CameraCaptureSession.StateCallback stateCallback) {
            if (this.mSessionStateCallbacks.contains(stateCallback)) {
                return this;
            }
            this.mSessionStateCallbacks.add(stateCallback);
            return this;
        }

        public Builder addAllSessionStateCallbacks(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                addSessionStateCallback((CameraCaptureSession.StateCallback) it.next());
            }
            return this;
        }

        public Builder addRepeatingCameraCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
            this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
            return this;
        }

        public Builder addAllRepeatingCameraCaptureCallbacks(Collection collection) {
            this.mCaptureConfigBuilder.addAllCameraCaptureCallbacks(collection);
            return this;
        }

        public Builder addCameraCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
            this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
            if (!this.mSingleCameraCaptureCallbacks.contains(cameraCaptureCallback)) {
                this.mSingleCameraCaptureCallbacks.add(cameraCaptureCallback);
            }
            return this;
        }

        public Builder addAllCameraCaptureCallbacks(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                CameraCaptureCallback cameraCaptureCallback = (CameraCaptureCallback) it.next();
                this.mCaptureConfigBuilder.addCameraCaptureCallback(cameraCaptureCallback);
                if (!this.mSingleCameraCaptureCallbacks.contains(cameraCaptureCallback)) {
                    this.mSingleCameraCaptureCallbacks.add(cameraCaptureCallback);
                }
            }
            return this;
        }

        public boolean removeCameraCaptureCallback(CameraCaptureCallback cameraCaptureCallback) {
            return this.mCaptureConfigBuilder.removeCameraCaptureCallback(cameraCaptureCallback) || this.mSingleCameraCaptureCallbacks.remove(cameraCaptureCallback);
        }

        public Builder setErrorListener(ErrorListener errorListener) {
            this.mErrorListener = errorListener;
            return this;
        }

        public Builder addSurface(DeferrableSurface deferrableSurface) {
            return addSurface(deferrableSurface, DynamicRange.SDR);
        }

        public Builder addSurface(DeferrableSurface deferrableSurface, DynamicRange dynamicRange) {
            return addSurface(deferrableSurface, dynamicRange, null, -1);
        }

        public Builder addSurface(DeferrableSurface deferrableSurface, DynamicRange dynamicRange, String str, int i) {
            this.mOutputConfigs.add(OutputConfig.builder(deferrableSurface).setPhysicalCameraId(str).setDynamicRange(dynamicRange).setMirrorMode(i).build());
            this.mCaptureConfigBuilder.addSurface(deferrableSurface);
            return this;
        }

        public Builder addNonRepeatingSurface(DeferrableSurface deferrableSurface) {
            return addNonRepeatingSurface(deferrableSurface, DynamicRange.SDR);
        }

        public Builder addNonRepeatingSurface(DeferrableSurface deferrableSurface, DynamicRange dynamicRange) {
            this.mOutputConfigs.add(OutputConfig.builder(deferrableSurface).setDynamicRange(dynamicRange).build());
            return this;
        }

        public Builder setPostviewSurface(DeferrableSurface deferrableSurface) {
            this.mPostviewOutputConfig = OutputConfig.builder(deferrableSurface).build();
            return this;
        }

        public Builder clearSurfaces() {
            this.mOutputConfigs.clear();
            this.mCaptureConfigBuilder.clearSurfaces();
            return this;
        }

        public Builder setImplementationOptions(Config config) {
            this.mCaptureConfigBuilder.setImplementationOptions(config);
            return this;
        }

        public Builder addImplementationOptions(Config config) {
            this.mCaptureConfigBuilder.addImplementationOptions(config);
            return this;
        }

        public SessionConfig build() {
            return new SessionConfig(new ArrayList(this.mOutputConfigs), new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), this.mCaptureConfigBuilder.build(), this.mErrorListener, this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
        }
    }

    public static final class ValidatingBuilder extends BaseBuilder {
        private final SurfaceSorter mSurfaceSorter = new SurfaceSorter();
        private boolean mValid = true;
        private StringBuilder mInvalidReason = new StringBuilder();
        private boolean mTemplateSet = false;
        private List mErrorListeners = new ArrayList();

        public void add(SessionConfig sessionConfig) {
            CaptureConfig repeatingCaptureConfig = sessionConfig.getRepeatingCaptureConfig();
            if (repeatingCaptureConfig.getTemplateType() != -1) {
                this.mTemplateSet = true;
                this.mCaptureConfigBuilder.setTemplateType(SessionConfig.getHigherPriorityTemplateType(repeatingCaptureConfig.getTemplateType(), this.mCaptureConfigBuilder.getTemplateType()));
            }
            setOrVerifyExpectFrameRateRange(repeatingCaptureConfig.getExpectedFrameRateRange());
            setPreviewStabilizationMode(repeatingCaptureConfig.getPreviewStabilizationMode());
            setVideoStabilizationMode(repeatingCaptureConfig.getVideoStabilizationMode());
            this.mCaptureConfigBuilder.addAllTags(sessionConfig.getRepeatingCaptureConfig().getTagBundle());
            this.mDeviceStateCallbacks.addAll(sessionConfig.getDeviceStateCallbacks());
            this.mSessionStateCallbacks.addAll(sessionConfig.getSessionStateCallbacks());
            this.mCaptureConfigBuilder.addAllCameraCaptureCallbacks(sessionConfig.getRepeatingCameraCaptureCallbacks());
            this.mSingleCameraCaptureCallbacks.addAll(sessionConfig.getSingleCameraCaptureCallbacks());
            if (sessionConfig.getErrorListener() != null) {
                this.mErrorListeners.add(sessionConfig.getErrorListener());
            }
            if (sessionConfig.getInputConfiguration() != null) {
                this.mInputConfiguration = sessionConfig.getInputConfiguration();
            }
            this.mOutputConfigs.addAll(sessionConfig.getOutputConfigs());
            this.mCaptureConfigBuilder.getSurfaces().addAll(repeatingCaptureConfig.getSurfaces());
            if (!getSurfaces().containsAll(this.mCaptureConfigBuilder.getSurfaces())) {
                Logger.m76d("ValidatingBuilder", "Invalid configuration due to capture request surfaces are not a subset of surfaces");
                this.mValid = false;
                this.mInvalidReason.append("Invalid configuration due to capture request surfaces are not a subset of surfaces");
            }
            if (sessionConfig.getSessionType() != this.mSessionType && sessionConfig.getSessionType() != 0 && this.mSessionType != 0) {
                Logger.m76d("ValidatingBuilder", "Invalid configuration due to that two non-default session types are set");
                this.mValid = false;
                this.mInvalidReason.append("Invalid configuration due to that two non-default session types are set");
            } else if (sessionConfig.getSessionType() != 0) {
                this.mSessionType = sessionConfig.getSessionType();
            }
            if (sessionConfig.mPostviewOutputConfig != null) {
                if (this.mPostviewOutputConfig == sessionConfig.mPostviewOutputConfig || this.mPostviewOutputConfig == null) {
                    this.mPostviewOutputConfig = sessionConfig.mPostviewOutputConfig;
                } else {
                    Logger.m76d("ValidatingBuilder", "Invalid configuration due to that two different postview output configs are set");
                    this.mValid = false;
                    this.mInvalidReason.append("Invalid configuration due to that two different postview output configs are set");
                }
            }
            this.mCaptureConfigBuilder.addImplementationOptions(repeatingCaptureConfig.getImplementationOptions());
        }

        private void setOrVerifyExpectFrameRateRange(Range range) {
            Range range2 = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            if (range.equals(range2)) {
                return;
            }
            if (this.mCaptureConfigBuilder.getExpectedFrameRateRange().equals(range2)) {
                this.mCaptureConfigBuilder.setExpectedFrameRateRange(range);
                return;
            }
            if (this.mCaptureConfigBuilder.getExpectedFrameRateRange().equals(range)) {
                return;
            }
            this.mValid = false;
            String str = "Different ExpectedFrameRateRange values; current = " + this.mCaptureConfigBuilder.getExpectedFrameRateRange() + ", new = " + range;
            Logger.m78e("ValidatingBuilder", str);
            this.mInvalidReason.append(str);
        }

        private void setPreviewStabilizationMode(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setPreviewStabilization(i);
            }
        }

        private void setVideoStabilizationMode(int i) {
            if (i != 0) {
                this.mCaptureConfigBuilder.setVideoStabilization(i);
            }
        }

        private List getSurfaces() {
            ArrayList arrayList = new ArrayList();
            for (OutputConfig outputConfig : this.mOutputConfigs) {
                arrayList.add(outputConfig.getSurface());
                Iterator it = outputConfig.getSharedSurfaces().iterator();
                while (it.hasNext()) {
                    arrayList.add((DeferrableSurface) it.next());
                }
            }
            return arrayList;
        }

        public boolean isValid() {
            return this.mTemplateSet && this.mValid;
        }

        public String getInvalidReason() {
            if (!this.mTemplateSet) {
                return "Template is not set";
            }
            return this.mInvalidReason.toString();
        }

        public SessionConfig build() {
            if (!this.mValid) {
                throw new IllegalArgumentException("Unsupported session configuration combination");
            }
            ArrayList arrayList = new ArrayList(this.mOutputConfigs);
            this.mSurfaceSorter.sort(arrayList);
            if (this.mSessionType == 1) {
                new HighSpeedFpsModifier().modifyFpsForPreviewOnlyRepeating(arrayList, this.mCaptureConfigBuilder);
            }
            return new SessionConfig(arrayList, new ArrayList(this.mDeviceStateCallbacks), new ArrayList(this.mSessionStateCallbacks), new ArrayList(this.mSingleCameraCaptureCallbacks), this.mCaptureConfigBuilder.build(), !this.mErrorListeners.isEmpty() ? new ErrorListener() { // from class: androidx.camera.core.impl.SessionConfig$ValidatingBuilder$$ExternalSyntheticLambda0
                @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
                public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                    SessionConfig.ValidatingBuilder.$r8$lambda$g6w8i8RYT_XDqkMVE6hhW4VoCdQ(this.f$0, sessionConfig, sessionError);
                }
            } : null, this.mInputConfiguration, this.mSessionType, this.mPostviewOutputConfig);
        }

        public static /* synthetic */ void $r8$lambda$g6w8i8RYT_XDqkMVE6hhW4VoCdQ(ValidatingBuilder validatingBuilder, SessionConfig sessionConfig, SessionError sessionError) {
            Iterator it = validatingBuilder.mErrorListeners.iterator();
            while (it.hasNext()) {
                ((ErrorListener) it.next()).onError(sessionConfig, sessionError);
            }
        }
    }
}
