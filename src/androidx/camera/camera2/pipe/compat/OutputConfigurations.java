package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.StreamId;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0080\b\u0018\u00002\u00020\u0001BG\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010 R#\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001b\u001a\u0004\b!\u0010\u001d¨\u0006\""}, d2 = {"Landroidx/camera/camera2/pipe/compat/OutputConfigurations;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "all", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "deferred", "postviewOutput", "Landroidx/camera/camera2/pipe/OutputId;", "Landroid/view/Surface;", "outputSurfaceMap", "<init>", "(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getAll", "()Ljava/util/List;", "Ljava/util/Map;", "getDeferred", "()Ljava/util/Map;", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "getPostviewOutput", "()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "getOutputSurfaceMap", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class OutputConfigurations {
    private final List<OutputConfigurationWrapper> all;
    private final Map<StreamId, OutputConfigurationWrapper> deferred;
    private final Map<OutputId, Surface> outputSurfaceMap;
    private final OutputConfigurationWrapper postviewOutput;

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OutputConfigurations)) {
            return false;
        }
        OutputConfigurations outputConfigurations = (OutputConfigurations) other;
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

    /* JADX WARN: Multi-variable type inference failed */
    public OutputConfigurations(List<? extends OutputConfigurationWrapper> list, Map<StreamId, ? extends OutputConfigurationWrapper> map, OutputConfigurationWrapper outputConfigurationWrapper, Map<OutputId, ? extends Surface> map2) {
        this.all = list;
        this.deferred = map;
        this.postviewOutput = outputConfigurationWrapper;
        this.outputSurfaceMap = map2;
    }

    public final List<OutputConfigurationWrapper> getAll() {
        return this.all;
    }

    public final Map<StreamId, OutputConfigurationWrapper> getDeferred() {
        return this.deferred;
    }

    public final OutputConfigurationWrapper getPostviewOutput() {
        return this.postviewOutput;
    }

    public final Map<OutputId, Surface> getOutputSurfaceMap() {
        return this.outputSurfaceMap;
    }
}
