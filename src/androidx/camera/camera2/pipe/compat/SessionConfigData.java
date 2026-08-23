package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraColorSpace;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class SessionConfigData {
    private final Executor executor;
    private final List inputConfiguration;
    private final List outputConfigurations;
    private final String sessionColorSpace;
    private final Map sessionParameters;
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
    public boolean equals(Object obj) {
        boolean zM1535equalsimpl0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionConfigData)) {
            return false;
        }
        SessionConfigData sessionConfigData = (SessionConfigData) obj;
        if (this.sessionType != sessionConfigData.sessionType || !Intrinsics.areEqual(this.inputConfiguration, sessionConfigData.inputConfiguration) || !Intrinsics.areEqual(this.outputConfigurations, sessionConfigData.outputConfigurations) || !Intrinsics.areEqual(this.executor, sessionConfigData.executor) || !Intrinsics.areEqual(this.stateCallback, sessionConfigData.stateCallback) || this.sessionTemplateId != sessionConfigData.sessionTemplateId || !Intrinsics.areEqual(this.sessionParameters, sessionConfigData.sessionParameters)) {
            return false;
        }
        String str = this.sessionColorSpace;
        String str2 = sessionConfigData.sessionColorSpace;
        if (str == null) {
            zM1535equalsimpl0 = str2 == null;
        } else if (str2 != null) {
            zM1535equalsimpl0 = CameraColorSpace.m1535equalsimpl0(str, str2);
        }
        return zM1535equalsimpl0;
    }

    public int hashCode() {
        int i = this.sessionType * 31;
        List list = this.inputConfiguration;
        int iHashCode = (((((((((((i + (list == null ? 0 : list.hashCode())) * 31) + this.outputConfigurations.hashCode()) * 31) + this.executor.hashCode()) * 31) + this.stateCallback.hashCode()) * 31) + this.sessionTemplateId) * 31) + this.sessionParameters.hashCode()) * 31;
        String str = this.sessionColorSpace;
        return iHashCode + (str != null ? CameraColorSpace.m1536hashCodeimpl(str) : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SessionConfigData(sessionType=");
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
        sb.append((Object) (str == null ? "null" : CameraColorSpace.m1538toStringimpl(str)));
        sb.append(')');
        return sb.toString();
    }

    private SessionConfigData(int i, List list, List outputConfigurations, Executor executor, CameraCaptureSessionWrapper.StateCallback stateCallback, int i2, Map sessionParameters, String str) {
        Intrinsics.checkNotNullParameter(outputConfigurations, "outputConfigurations");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        Intrinsics.checkNotNullParameter(sessionParameters, "sessionParameters");
        this.sessionType = i;
        this.inputConfiguration = list;
        this.outputConfigurations = outputConfigurations;
        this.executor = executor;
        this.stateCallback = stateCallback;
        this.sessionTemplateId = i2;
        this.sessionParameters = sessionParameters;
        this.sessionColorSpace = str;
    }

    public final int getSessionType() {
        return this.sessionType;
    }

    public final List getInputConfiguration() {
        return this.inputConfiguration;
    }

    public final List getOutputConfigurations() {
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

    public final Map getSessionParameters() {
        return this.sessionParameters;
    }

    /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name */
    public final String m1866getSessionColorSpacedxVZaPA() {
        return this.sessionColorSpace;
    }
}
