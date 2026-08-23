package androidx.camera.camera2.pipe.compat;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OutputConfigurations {
    private final List all;
    private final Map deferred;
    private final Map outputSurfaceMap;
    private final OutputConfigurationWrapper postviewOutput;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OutputConfigurations)) {
            return false;
        }
        OutputConfigurations outputConfigurations = (OutputConfigurations) obj;
        return Intrinsics.areEqual(this.all, outputConfigurations.all) && Intrinsics.areEqual(this.deferred, outputConfigurations.deferred) && Intrinsics.areEqual(this.postviewOutput, outputConfigurations.postviewOutput) && Intrinsics.areEqual(this.outputSurfaceMap, outputConfigurations.outputSurfaceMap);
    }

    public int hashCode() {
        int iHashCode = ((this.all.hashCode() * 31) + this.deferred.hashCode()) * 31;
        OutputConfigurationWrapper outputConfigurationWrapper = this.postviewOutput;
        return ((iHashCode + (outputConfigurationWrapper == null ? 0 : outputConfigurationWrapper.hashCode())) * 31) + this.outputSurfaceMap.hashCode();
    }

    public String toString() {
        return "OutputConfigurations(all=" + this.all + ", deferred=" + this.deferred + ", postviewOutput=" + this.postviewOutput + ", outputSurfaceMap=" + this.outputSurfaceMap + ')';
    }

    public OutputConfigurations(List all, Map deferred, OutputConfigurationWrapper outputConfigurationWrapper, Map outputSurfaceMap) {
        Intrinsics.checkNotNullParameter(all, "all");
        Intrinsics.checkNotNullParameter(deferred, "deferred");
        Intrinsics.checkNotNullParameter(outputSurfaceMap, "outputSurfaceMap");
        this.all = all;
        this.deferred = deferred;
        this.postviewOutput = outputConfigurationWrapper;
        this.outputSurfaceMap = outputSurfaceMap;
    }

    public final List getAll() {
        return this.all;
    }

    public final Map getDeferred() {
        return this.deferred;
    }

    public final OutputConfigurationWrapper getPostviewOutput() {
        return this.postviewOutput;
    }

    public final Map getOutputSurfaceMap() {
        return this.outputSurfaceMap;
    }
}
