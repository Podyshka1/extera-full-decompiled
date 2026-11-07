package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraColorSpace;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0080\b\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u0018R\u001f\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0006¢\u0006\f\n\u0004\b\b\u0010\u001f\u001a\u0004\b\"\u0010!R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b)\u0010\u0018R#\u0010\u000f\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010*\u001a\u0004\b+\u0010,R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010-\u001a\u0004\b.\u0010\u0016¨\u0006/"}, d2 = {"Landroidx/camera/camera2/pipe/compat/SessionConfigData;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "sessionType", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/InputConfigData;", "inputConfiguration", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigurations", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "stateCallback", "sessionTemplateId", _UrlKt.FRAGMENT_ENCODE_SET, "sessionParameters", "Landroidx/camera/camera2/pipe/CameraColorSpace;", "sessionColorSpace", "<init>", "(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;ILjava/util/Map;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "I", "getSessionType", "Ljava/util/List;", "getInputConfiguration", "()Ljava/util/List;", "getOutputConfigurations", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "getStateCallback", "()Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "getSessionTemplateId", "Ljava/util/Map;", "getSessionParameters", "()Ljava/util/Map;", "Ljava/lang/String;", "getSessionColorSpace-dxVZaPA", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SessionConfigData {
    private final Executor executor;
    private final List<InputConfigData> inputConfiguration;
    private final List<OutputConfigurationWrapper> outputConfigurations;
    private final String sessionColorSpace;
    private final Map<?, Object> sessionParameters;
    private final int sessionTemplateId;
    private final int sessionType;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public /* synthetic */ SessionConfigData(int i, List list, List list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map map, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, list, list2, executor, stateCallback, i2, map, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object other) {
        boolean zM1284equalsimpl0;
        if (this == other) {
            return true;
        }
        if (!(other instanceof SessionConfigData)) {
            return false;
        }
        SessionConfigData sessionConfigData = (SessionConfigData) other;
        if (this.sessionType != sessionConfigData.sessionType || !Intrinsics.areEqual(this.inputConfiguration, sessionConfigData.inputConfiguration) || !Intrinsics.areEqual(this.outputConfigurations, sessionConfigData.outputConfigurations) || !Intrinsics.areEqual(this.executor, sessionConfigData.executor) || !Intrinsics.areEqual(this.stateCallback, sessionConfigData.stateCallback) || this.sessionTemplateId != sessionConfigData.sessionTemplateId || !Intrinsics.areEqual(this.sessionParameters, sessionConfigData.sessionParameters)) {
            return false;
        }
        String str = this.sessionColorSpace;
        String str2 = sessionConfigData.sessionColorSpace;
        if (str == null) {
            zM1284equalsimpl0 = str2 == null;
        } else if (str2 != null) {
            zM1284equalsimpl0 = CameraColorSpace.m1284equalsimpl0(str, str2);
        }
        return zM1284equalsimpl0;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.sessionType) * 31;
        List<InputConfigData> list = this.inputConfiguration;
        int iHashCode2 = (((((((((((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + this.outputConfigurations.hashCode()) * 31) + this.executor.hashCode()) * 31) + this.stateCallback.hashCode()) * 31) + Integer.hashCode(this.sessionTemplateId)) * 31) + this.sessionParameters.hashCode()) * 31;
        String str = this.sessionColorSpace;
        return iHashCode2 + (str != null ? CameraColorSpace.m1285hashCodeimpl(str) : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SessionConfigData(sessionType=");
        sb.append(this.sessionType);
        sb.append(", inputConfiguration=");
        sb.append(this.inputConfiguration);
        sb.append(", outputConfigurations=");
        sb.append(this.outputConfigurations);
        sb.append(", executor=");
        sb.append(this.executor);
        sb.append(", stateCallback=");
        sb.append(this.stateCallback);
        sb.append(", sessionTemplateId=");
        sb.append(this.sessionTemplateId);
        sb.append(", sessionParameters=");
        sb.append(this.sessionParameters);
        sb.append(", sessionColorSpace=");
        String str = this.sessionColorSpace;
        sb.append((Object) (str == null ? "null" : CameraColorSpace.m1287toStringimpl(str)));
        sb.append(')');
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SessionConfigData(int i, List<InputConfigData> list, List<? extends OutputConfigurationWrapper> list2, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map<?, ? extends Object> map, String str) {
        this.sessionType = i;
        this.inputConfiguration = list;
        this.outputConfigurations = list2;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = map;
        this.sessionColorSpace = str;
    }

    public final int getSessionType() {
        return this.sessionType;
    }

    public final List<InputConfigData> getInputConfiguration() {
        return this.inputConfiguration;
    }

    public final List<OutputConfigurationWrapper> getOutputConfigurations() {
        return this.outputConfigurations;
    }

    public final Executor getExecutor() {
        return this.executor;
    }

    public final CameraCaptureSessionWrapper.StateCallback getStateCallback() {
        return this.stateCallback;
    }

    public final int getSessionTemplateId() {
        return this.sessionTemplateId;
    }

    public final Map<?, Object> getSessionParameters() {
        return this.sessionParameters;
    }

    /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name and from getter */
    public final String getSessionColorSpace() {
        return this.sessionColorSpace;
    }
}
