package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureFailure;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidCaptureFailure implements RequestFailure {
    private final CaptureFailure captureFailure;
    private final long frameNumber;
    private final int reason;
    private final RequestMetadata requestMetadata;
    private final boolean wasImageCaptured;

    public AndroidCaptureFailure(RequestMetadata requestMetadata, CaptureFailure captureFailure) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(captureFailure, "captureFailure");
        this.requestMetadata = requestMetadata;
        this.captureFailure = captureFailure;
        this.frameNumber = FrameNumber.m1643constructorimpl(captureFailure.getFrameNumber());
        this.reason = captureFailure.getReason();
        this.wasImageCaptured = captureFailure.wasImageCaptured();
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public int getReason() {
        return this.reason;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public boolean getWasImageCaptured() {
        return this.wasImageCaptured;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CaptureFailure.class))) {
            return this.captureFailure;
        }
        return null;
    }
}
