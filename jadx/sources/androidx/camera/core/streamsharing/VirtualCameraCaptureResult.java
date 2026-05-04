package androidx.camera.core.streamsharing;

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

/* JADX INFO: loaded from: classes4.dex */
public class VirtualCameraCaptureResult implements CameraCaptureResult {
    private final CameraCaptureResult mBaseCameraCaptureResult;
    private final TagBundle mTagBundle;
    private final long mTimestamp;

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public /* synthetic */ void populateExifData(ExifData.Builder builder) {
        CameraCaptureResult.CC.$default$populateExifData(this, builder);
    }

    public VirtualCameraCaptureResult(TagBundle tagBundle, CameraCaptureResult cameraCaptureResult) {
        this(cameraCaptureResult, tagBundle, -1L);
    }

    public VirtualCameraCaptureResult(TagBundle tagBundle, long j) {
        this(null, tagBundle, j);
    }

    private VirtualCameraCaptureResult(CameraCaptureResult cameraCaptureResult, TagBundle tagBundle, long j) {
        this.mBaseCameraCaptureResult = cameraCaptureResult;
        this.mTagBundle = tagBundle;
        this.mTimestamp = j;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return this.mTagBundle;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfMode getAfMode() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAfMode() : CameraCaptureMetaData$AfMode.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AfState getAfState() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAfState() : CameraCaptureMetaData$AfState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeState getAeState() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAeState() : CameraCaptureMetaData$AeState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbState getAwbState() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAwbState() : CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$FlashState getFlashState() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getFlashState() : CameraCaptureMetaData$FlashState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AeMode getAeMode() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAeMode() : CameraCaptureMetaData$AeMode.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData$AwbMode getAwbMode() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        return cameraCaptureResult != null ? cameraCaptureResult.getAwbMode() : CameraCaptureMetaData$AwbMode.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        CameraCaptureResult cameraCaptureResult = this.mBaseCameraCaptureResult;
        if (cameraCaptureResult != null) {
            return cameraCaptureResult.getTimestamp();
        }
        long j = this.mTimestamp;
        if (j != -1) {
            return j;
        }
        throw new IllegalStateException("No timestamp is available.");
    }
}
