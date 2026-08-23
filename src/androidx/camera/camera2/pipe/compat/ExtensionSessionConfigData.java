package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u001b\b\u0080\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0012\u0010\r\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0018R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010%\u001a\u0004\b&\u0010'R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001d\u001a\u0004\b(\u0010\u0018R#\u0010\r\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010)\u001a\u0004\b*\u0010+R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010,\u001a\u0004\b-\u0010.R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u0010/\u001a\u0004\b0\u00101R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0011\u00102\u001a\u0004\b3\u00104¨\u00065"}, d2 = {"Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "sessionType", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigurations", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "stateCallback", "sessionTemplateId", _UrlKt.FRAGMENT_ENCODE_SET, "sessionParameters", "extensionMode", "Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;", "extensionStateCallback", "postviewOutputConfiguration", "<init>", "(ILjava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getSessionType", "Ljava/util/List;", "getOutputConfigurations", "()Ljava/util/List;", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "getStateCallback", "()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "getSessionTemplateId", "Ljava/util/Map;", "getSessionParameters", "()Ljava/util/Map;", "Ljava/lang/Integer;", "getExtensionMode", "()Ljava/lang/Integer;", "Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;", "getExtensionStateCallback", "()Landroidx/camera/camera2/pipe/compat/CameraExtensionSessionWrapper$StateCallback;", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "getPostviewOutputConfiguration", "()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ExtensionSessionConfigData {
    private final Executor executor;
    private final Integer extensionMode;
    private final CameraExtensionSessionWrapper.StateCallback extensionStateCallback;
    private final List<OutputConfigurationWrapper> outputConfigurations;
    private final OutputConfigurationWrapper postviewOutputConfiguration;
    private final Map<?, Object> sessionParameters;
    private final int sessionTemplateId;
    private final int sessionType;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExtensionSessionConfigData)) {
            return false;
        }
        ExtensionSessionConfigData extensionSessionConfigData = (ExtensionSessionConfigData) other;
        return this.sessionType == extensionSessionConfigData.sessionType && Intrinsics.areEqual(this.outputConfigurations, extensionSessionConfigData.outputConfigurations) && Intrinsics.areEqual(this.executor, extensionSessionConfigData.executor) && Intrinsics.areEqual(this.stateCallback, extensionSessionConfigData.stateCallback) && this.sessionTemplateId == extensionSessionConfigData.sessionTemplateId && Intrinsics.areEqual(this.sessionParameters, extensionSessionConfigData.sessionParameters) && Intrinsics.areEqual(this.extensionMode, extensionSessionConfigData.extensionMode) && Intrinsics.areEqual(this.extensionStateCallback, extensionSessionConfigData.extensionStateCallback) && Intrinsics.areEqual(this.postviewOutputConfiguration, extensionSessionConfigData.postviewOutputConfiguration);
    }

    public int hashCode() {
        int iHashCode = ((((((((((Integer.hashCode(this.sessionType) * 31) + this.outputConfigurations.hashCode()) * 31) + this.executor.hashCode()) * 31) + this.stateCallback.hashCode()) * 31) + Integer.hashCode(this.sessionTemplateId)) * 31) + this.sessionParameters.hashCode()) * 31;
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

    /* JADX WARN: Multi-variable type inference failed */
    public ExtensionSessionConfigData(int i, List<? extends OutputConfigurationWrapper> list, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, Integer num, CameraExtensionSessionWrapper.StateCallback stateCallback2, OutputConfigurationWrapper outputConfigurationWrapper) {
        this.sessionType = i;
        this.outputConfigurations = list;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = map;
        this.extensionMode = num;
        this.extensionStateCallback = stateCallback2;
        this.postviewOutputConfiguration = outputConfigurationWrapper;
    }

    public final List<OutputConfigurationWrapper> getOutputConfigurations() {
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
