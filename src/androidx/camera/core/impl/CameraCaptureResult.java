package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraCaptureResult {
    CameraCaptureMetaData$AeMode getAeMode();

    CameraCaptureMetaData$AeState getAeState();

    CameraCaptureMetaData$AfMode getAfMode();

    CameraCaptureMetaData$AfState getAfState();

    CameraCaptureMetaData$AwbMode getAwbMode();

    CameraCaptureMetaData$AwbState getAwbState();

    CameraCaptureMetaData$FlashState getFlashState();

    TagBundle getTagBundle();

    long getTimestamp();

    void populateExifData(ExifData.Builder builder);

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraCaptureResult$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$populateExifData(CameraCaptureResult cameraCaptureResult, ExifData.Builder builder) {
            builder.setFlashState(cameraCaptureResult.getFlashState());
        }
    }

    public static final class EmptyCameraCaptureResult implements CameraCaptureResult {
        @Override // androidx.camera.core.impl.CameraCaptureResult
        public long getTimestamp() {
            return -1L;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public /* synthetic */ void populateExifData(ExifData.Builder builder) {
            CC.$default$populateExifData(this, builder);
        }

        public static CameraCaptureResult create() {
            return new EmptyCameraCaptureResult();
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AfMode getAfMode() {
            return CameraCaptureMetaData$AfMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AfState getAfState() {
            return CameraCaptureMetaData$AfState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AeState getAeState() {
            return CameraCaptureMetaData$AeState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AwbState getAwbState() {
            return CameraCaptureMetaData$AwbState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$FlashState getFlashState() {
            return CameraCaptureMetaData$FlashState.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AeMode getAeMode() {
            return CameraCaptureMetaData$AeMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public CameraCaptureMetaData$AwbMode getAwbMode() {
            return CameraCaptureMetaData$AwbMode.UNKNOWN;
        }

        @Override // androidx.camera.core.impl.CameraCaptureResult
        public TagBundle getTagBundle() {
            return TagBundle.emptyBundle();
        }
    }
}
