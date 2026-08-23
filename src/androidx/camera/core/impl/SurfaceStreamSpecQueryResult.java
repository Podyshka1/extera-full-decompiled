package androidx.camera.core.impl;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SurfaceStreamSpecQueryResult {
    private final Map attachedSurfaceStreamSpecs;
    private final int maxSupportedFrameRate;
    private final Map useCaseStreamSpecs;

    public final Map component1() {
        return this.useCaseStreamSpecs;
    }

    public final Map component2() {
        return this.attachedSurfaceStreamSpecs;
    }

    public final int component3() {
        return this.maxSupportedFrameRate;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceStreamSpecQueryResult)) {
            return false;
        }
        SurfaceStreamSpecQueryResult surfaceStreamSpecQueryResult = (SurfaceStreamSpecQueryResult) obj;
        return Intrinsics.areEqual(this.useCaseStreamSpecs, surfaceStreamSpecQueryResult.useCaseStreamSpecs) && Intrinsics.areEqual(this.attachedSurfaceStreamSpecs, surfaceStreamSpecQueryResult.attachedSurfaceStreamSpecs) && this.maxSupportedFrameRate == surfaceStreamSpecQueryResult.maxSupportedFrameRate;
    }

    public int hashCode() {
        return (((this.useCaseStreamSpecs.hashCode() * 31) + this.attachedSurfaceStreamSpecs.hashCode()) * 31) + this.maxSupportedFrameRate;
    }

    public String toString() {
        return "SurfaceStreamSpecQueryResult(useCaseStreamSpecs=" + this.useCaseStreamSpecs + ", attachedSurfaceStreamSpecs=" + this.attachedSurfaceStreamSpecs + ", maxSupportedFrameRate=" + this.maxSupportedFrameRate + ')';
    }

    public SurfaceStreamSpecQueryResult(Map useCaseStreamSpecs, Map attachedSurfaceStreamSpecs, int i) {
        Intrinsics.checkNotNullParameter(useCaseStreamSpecs, "useCaseStreamSpecs");
        Intrinsics.checkNotNullParameter(attachedSurfaceStreamSpecs, "attachedSurfaceStreamSpecs");
        this.useCaseStreamSpecs = useCaseStreamSpecs;
        this.attachedSurfaceStreamSpecs = attachedSurfaceStreamSpecs;
        this.maxSupportedFrameRate = i;
    }
}
