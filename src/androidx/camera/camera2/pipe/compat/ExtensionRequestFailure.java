package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionRequestFailure implements RequestFailure {
    private final long frameNumber;
    private final int reason;
    private final RequestMetadata requestMetadata;
    private final boolean wasImageCaptured;

    public /* synthetic */ ExtensionRequestFailure(RequestMetadata requestMetadata, boolean z, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(requestMetadata, z, j, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExtensionRequestFailure)) {
            return false;
        }
        ExtensionRequestFailure extensionRequestFailure = (ExtensionRequestFailure) obj;
        return Intrinsics.areEqual(this.requestMetadata, extensionRequestFailure.requestMetadata) && this.wasImageCaptured == extensionRequestFailure.wasImageCaptured && FrameNumber.m1645equalsimpl0(this.frameNumber, extensionRequestFailure.frameNumber) && this.reason == extensionRequestFailure.reason;
    }

    public int hashCode() {
        return (((((this.requestMetadata.hashCode() * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.wasImageCaptured)) * 31) + FrameNumber.m1646hashCodeimpl(this.frameNumber)) * 31) + this.reason;
    }

    public String toString() {
        return "ExtensionRequestFailure(requestMetadata=" + this.requestMetadata + ", wasImageCaptured=" + this.wasImageCaptured + ", frameNumber=" + ((Object) FrameNumber.m1647toStringimpl(this.frameNumber)) + ", reason=" + this.reason + ')';
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return null;
    }

    private ExtensionRequestFailure(RequestMetadata requestMetadata, boolean z, long j, int i) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        this.requestMetadata = requestMetadata;
        this.wasImageCaptured = z;
        this.frameNumber = j;
        this.reason = i;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public boolean getWasImageCaptured() {
        return this.wasImageCaptured;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public int getReason() {
        return this.reason;
    }
}
