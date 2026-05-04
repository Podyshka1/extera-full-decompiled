package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionSessionConfigData {
    private final Executor executor;
    private final Integer extensionMode;
    private final CameraExtensionSessionWrapper.StateCallback extensionStateCallback;
    private final List outputConfigurations;
    private final OutputConfigurationWrapper postviewOutputConfiguration;
    private final Map sessionParameters;
    private final int sessionTemplateId;
    private final int sessionType;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExtensionSessionConfigData)) {
            return false;
        }
        ExtensionSessionConfigData extensionSessionConfigData = (ExtensionSessionConfigData) obj;
        return this.sessionType == extensionSessionConfigData.sessionType && Intrinsics.areEqual(this.outputConfigurations, extensionSessionConfigData.outputConfigurations) && Intrinsics.areEqual(this.executor, extensionSessionConfigData.executor) && Intrinsics.areEqual(this.stateCallback, extensionSessionConfigData.stateCallback) && this.sessionTemplateId == extensionSessionConfigData.sessionTemplateId && Intrinsics.areEqual(this.sessionParameters, extensionSessionConfigData.sessionParameters) && Intrinsics.areEqual(this.extensionMode, extensionSessionConfigData.extensionMode) && Intrinsics.areEqual(this.extensionStateCallback, extensionSessionConfigData.extensionStateCallback) && Intrinsics.areEqual(this.postviewOutputConfiguration, extensionSessionConfigData.postviewOutputConfiguration);
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.sessionType * 31) + this.outputConfigurations.hashCode()) * 31) + this.executor.hashCode()) * 31) + this.stateCallback.hashCode()) * 31) + this.sessionTemplateId) * 31) + this.sessionParameters.hashCode()) * 31;
        Integer num = this.extensionMode;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        CameraExtensionSessionWrapper.StateCallback stateCallback = this.extensionStateCallback;
        int iHashCode3 = (iHashCode2 + (stateCallback == null ? 0 : stateCallback.hashCode())) * 31;
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutputConfiguration;
        return iHashCode3 + (outputConfigurationWrapper != null ? outputConfigurationWrapper.hashCode() : 0);
    }

    public String toString() {
        return "ExtensionSessionConfigData(sessionType=" + this.sessionType + ", outputConfigurations=" + this.outputConfigurations + ", executor=" + this.executor + ", stateCallback=" + this.stateCallback + ", sessionTemplateId=" + this.sessionTemplateId + ", sessionParameters=" + this.sessionParameters + ", extensionMode=" + this.extensionMode + ", extensionStateCallback=" + this.extensionStateCallback + ", postviewOutputConfiguration=" + this.postviewOutputConfiguration + ')';
    }

    public ExtensionSessionConfigData(int i, List outputConfigurations, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map sessionParameters, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper) {
        Intrinsics.checkNotNullParameter(outputConfigurations, "outputConfigurations");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        Intrinsics.checkNotNullParameter(sessionParameters, "sessionParameters");
        this.sessionType = i;
        this.outputConfigurations = outputConfigurations;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = sessionParameters;
        this.extensionMode = num;
        this.extensionStateCallback = stateCallback2;
        this.postviewOutputConfiguration = outputConfigurationWrapper;
    }

    public final List getOutputConfigurations() {
        return this.outputConfigurations;
    }

    public final Executor getExecutor() {
        return this.executor;
    }

    public final Integer getExtensionMode() {
        return this.extensionMode;
    }

    public final CameraExtensionSessionWrapper.StateCallback getExtensionStateCallback() {
        return this.extensionStateCallback;
    }

    public final OutputConfigurationWrapper getPostviewOutputConfiguration() {
        return this.postviewOutputConfiguration;
    }
}
