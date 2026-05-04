package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.impl.CameraCaptureMetaData$AeMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class CaptureResultAdapter implements CameraCaptureResult, UnsafeWrapper {
    private final long frameNumber;
    private final RequestMetadata requestMetadata;
    private final FrameInfo result;

    public /* synthetic */ CaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameInfo frameInfo, DefaultConstructorMarker defaultConstructorMarker) {
        this(requestMetadata, j, frameInfo);
    }

    private CaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameInfo result) {
        Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
        Intrinsics.checkNotNullParameter(result, "result");
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.result = result;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfMode getAfMode() {
        return CaptureResultAdapterKt.getAfMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfState getAfState() {
        return CaptureResultAdapterKt.getAfState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeMode getAeMode() {
        return CaptureResultAdapterKt.getAeMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeState getAeState() {
        return CaptureResultAdapterKt.getAeState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbMode getAwbMode() {
        return CaptureResultAdapterKt.getAwbMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbState getAwbState() {
        return CaptureResultAdapterKt.getAwbState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$FlashState getFlashState() {
        return CaptureResultAdapterKt.getFlashState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        return CaptureResultAdapterKt.getTimestamp(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return (TagBundle) this.requestMetadata.getOrDefault(TagsKt.getCAMERAX_TAG_BUNDLE(), TagBundle.emptyBundle());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public void populateExifData(ExifData.Builder exifBuilder) {
        Intrinsics.checkNotNullParameter(exifBuilder, "exifBuilder");
        CameraCaptureResult.CC.$default$populateExifData(this, exifBuilder);
        CaptureResultAdapterKt.populateExifData(this.result.getMetadata(), exifBuilder);
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (!Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(FrameInfo.class))) {
            return this.result.unwrapAs(type);
        }
        FrameInfo frameInfo = this.result;
        Intrinsics.checkNotNull(frameInfo, "null cannot be cast to non-null type T of androidx.camera.camera2.adapter.CaptureResultAdapter.unwrapAs");
        return frameInfo;
    }
}
