package androidx.camera.core.internal;

import androidx.camera.core.ImageInfo;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes4.dex */
public final class CameraCaptureResultImageInfo implements ImageInfo {
    private final CameraCaptureResult mCameraCaptureResult;

    public CameraCaptureResultImageInfo(CameraCaptureResult cameraCaptureResult) {
        this.mCameraCaptureResult = cameraCaptureResult;
    }

    @Override // androidx.camera.core.ImageInfo
    public TagBundle getTagBundle() {
        return this.mCameraCaptureResult.getTagBundle();
    }

    @Override // androidx.camera.core.ImageInfo
    public long getTimestamp() {
        return this.mCameraCaptureResult.getTimestamp();
    }

    @Override // androidx.camera.core.ImageInfo
    public int getFlashState() {
        return this.mCameraCaptureResult.getFlashState().toFlashState();
    }

    @Override // androidx.camera.core.ImageInfo
    public void populateExifData(ExifData.Builder builder) {
        this.mCameraCaptureResult.populateExifData(builder);
    }

    public CameraCaptureResult getCameraCaptureResult() {
        return this.mCameraCaptureResult;
    }
}
