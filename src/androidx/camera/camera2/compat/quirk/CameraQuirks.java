package androidx.camera.camera2.compat.quirk;

import android.util.Log;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraQuirks {
    public static final Companion Companion = new Companion(null);
    private final CameraMetadata cameraMetadata;
    private final Lazy quirks$delegate;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;

    public CameraQuirks(CameraMetadata cameraMetadata, StreamConfigurationMapCompat streamConfigurationMapCompat) {
        Intrinsics.checkNotNullParameter(streamConfigurationMapCompat, "streamConfigurationMapCompat");
        this.cameraMetadata = cameraMetadata;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
        this.quirks$delegate = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.quirk.CameraQuirks$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CameraQuirks.quirks_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final Quirks getQuirks() {
        return (Quirks) this.quirks$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Quirks quirks_delegate$lambda$0(CameraQuirks cameraQuirks) {
        QuirkSettings quirkSettings = QuirkSettingsHolder.instance().get();
        Intrinsics.checkNotNullExpressionValue(quirkSettings, "get(...)");
        ArrayList arrayList = new ArrayList();
        CameraMetadata cameraMetadata = cameraQuirks.cameraMetadata;
        if (cameraMetadata == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to enable quirks: camera metadata injection failed");
            }
            return new Quirks(arrayList);
        }
        if (quirkSettings.shouldEnableQuirk(AeFpsRangeLegacyQuirk.class, AeFpsRangeLegacyQuirk.Companion.isEnabled(cameraMetadata))) {
            arrayList.add(new AeFpsRangeLegacyQuirk(cameraQuirks.cameraMetadata));
        }
        if (quirkSettings.shouldEnableQuirk(AfRegionFlipHorizontallyQuirk.class, AfRegionFlipHorizontallyQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new AfRegionFlipHorizontallyQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(AspectRatioLegacyApi21Quirk.class, AspectRatioLegacyApi21Quirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new AspectRatioLegacyApi21Quirk());
        }
        if (quirkSettings.shouldEnableQuirk(CamcorderProfileResolutionQuirk.class, CamcorderProfileResolutionQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new CamcorderProfileResolutionQuirk(cameraQuirks.streamConfigurationMapCompat));
        }
        if (quirkSettings.shouldEnableQuirk(CameraNoResponseWhenEnablingFlashQuirk.class, CameraNoResponseWhenEnablingFlashQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new CameraNoResponseWhenEnablingFlashQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CaptureSessionStuckQuirk.class, CaptureSessionStuckQuirk.Companion.isEnabled())) {
            arrayList.add(new CaptureSessionStuckQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CloseCaptureSessionOnVideoQuirk.class, CloseCaptureSessionOnVideoQuirk.Companion.isEnabled())) {
            arrayList.add(new CloseCaptureSessionOnVideoQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ConfigureSurfaceToSecondarySessionFailQuirk.class, ConfigureSurfaceToSecondarySessionFailQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ConfigureSurfaceToSecondarySessionFailQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FinalizeSessionOnCloseQuirk.class, FinalizeSessionOnCloseQuirk.Companion.isEnabled())) {
            arrayList.add(new FinalizeSessionOnCloseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FlashTooSlowQuirk.class, FlashTooSlowQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new FlashTooSlowQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailWithAutoFlashQuirk.class, ImageCaptureFailWithAutoFlashQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureFailWithAutoFlashQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFlashNotFireQuirk.class, ImageCaptureFlashNotFireQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureFlashNotFireQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureWashedOutImageQuirk.class, ImageCaptureWashedOutImageQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureWashedOutImageQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureWithFlashUnderexposureQuirk.class, ImageCaptureWithFlashUnderexposureQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureWithFlashUnderexposureQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(JpegHalCorruptImageQuirk.class, JpegHalCorruptImageQuirk.Companion.isEnabled())) {
            arrayList.add(new JpegHalCorruptImageQuirk());
        }
        JpegCaptureDownsizingQuirk jpegCaptureDownsizingQuirk = JpegCaptureDownsizingQuirk.INSTANCE;
        if (quirkSettings.shouldEnableQuirk(JpegCaptureDownsizingQuirk.class, jpegCaptureDownsizingQuirk.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(jpegCaptureDownsizingQuirk);
        }
        if (quirkSettings.shouldEnableQuirk(PreviewOrientationIncorrectQuirk.class, PreviewOrientationIncorrectQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new PreviewOrientationIncorrectQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TextureViewIsClosedQuirk.class, TextureViewIsClosedQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TextureViewIsClosedQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TorchFlashRequiredFor3aUpdateQuirk.class, TorchFlashRequiredFor3aUpdateQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TorchFlashRequiredFor3aUpdateQuirk(cameraQuirks.cameraMetadata));
        }
        if (quirkSettings.shouldEnableQuirk(YuvImageOnePixelShiftQuirk.class, YuvImageOnePixelShiftQuirk.Companion.isEnabled())) {
            arrayList.add(new YuvImageOnePixelShiftQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewStretchWhenVideoCaptureIsBoundQuirk.class, PreviewStretchWhenVideoCaptureIsBoundQuirk.Companion.isEnabled())) {
            arrayList.add(new PreviewStretchWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewDelayWhenVideoCaptureIsBoundQuirk.class, PreviewDelayWhenVideoCaptureIsBoundQuirk.Companion.isEnabled())) {
            arrayList.add(new PreviewDelayWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class, QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.class, ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.Companion.isEnabled())) {
            arrayList.add(new ImageCaptureFailedWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TemporalNoiseQuirk.class, TemporalNoiseQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TemporalNoiseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailedForVideoSnapshotQuirk.class, ImageCaptureFailedForVideoSnapshotQuirk.Companion.isEnabled())) {
            arrayList.add(new ImageCaptureFailedForVideoSnapshotQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.class, AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.Companion.isEnabled())) {
            arrayList.add(new AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(UltraWideFlashCaptureUnderexposureQuirk.class, UltraWideFlashCaptureUnderexposureQuirk.Companion.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new UltraWideFlashCaptureUnderexposureQuirk());
        }
        Quirks quirks = new Quirks(arrayList);
        Logger.m76d("CameraQuirks", "camera2 CameraQuirks = " + Quirks.toString(quirks));
        return quirks;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
