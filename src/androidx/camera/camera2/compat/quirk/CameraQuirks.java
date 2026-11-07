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
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u001b\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/compat/quirk/CameraQuirks;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "streamConfigurationMapCompat", "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V", "quirks", "Landroidx/camera/core/impl/Quirks;", "getQuirks", "()Landroidx/camera/core/impl/Quirks;", "quirks$delegate", "Lkotlin/Lazy;", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraQuirks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraQuirks.kt\nandroidx/camera/camera2/compat/quirk/CameraQuirks\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n136#2,4:284\n1#3:288\n*S KotlinDebug\n*F\n+ 1 CameraQuirks.kt\nandroidx/camera/camera2/compat/quirk/CameraQuirks\n*L\n45#1:284,4\n*E\n"})
public final class CameraQuirks {
    private final CameraMetadata cameraMetadata;

    /* JADX INFO: renamed from: quirks$delegate, reason: from kotlin metadata */
    private final Lazy quirks = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.compat.quirk.CameraQuirks$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CameraQuirks.m1099$r8$lambda$3nXzTEXW5hJTW6NAsrAgNfo7qI(this.f$0);
        }
    });
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;

    public CameraQuirks(CameraMetadata cameraMetadata, StreamConfigurationMapCompat streamConfigurationMapCompat) {
        this.cameraMetadata = cameraMetadata;
        this.streamConfigurationMapCompat = streamConfigurationMapCompat;
    }

    public final Quirks getQuirks() {
        return (Quirks) this.quirks.getValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$3nXzTEXW5hJTW6N-AsrAgNfo7qI, reason: not valid java name */
    public static Quirks m1099$r8$lambda$3nXzTEXW5hJTW6NAsrAgNfo7qI(CameraQuirks cameraQuirks) {
        QuirkSettings quirkSettings = QuirkSettingsHolder.instance().get();
        ArrayList arrayList = new ArrayList();
        CameraMetadata cameraMetadata = cameraQuirks.cameraMetadata;
        if (cameraMetadata == null) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "Failed to enable quirks: camera metadata injection failed");
            }
            return new Quirks(arrayList);
        }
        if (quirkSettings.shouldEnableQuirk(AeFpsRangeLegacyQuirk.class, AeFpsRangeLegacyQuirk.INSTANCE.isEnabled(cameraMetadata))) {
            arrayList.add(new AeFpsRangeLegacyQuirk(cameraQuirks.cameraMetadata));
        }
        if (quirkSettings.shouldEnableQuirk(AfRegionFlipHorizontallyQuirk.class, AfRegionFlipHorizontallyQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new AfRegionFlipHorizontallyQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(AspectRatioLegacyApi21Quirk.class, AspectRatioLegacyApi21Quirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new AspectRatioLegacyApi21Quirk());
        }
        if (quirkSettings.shouldEnableQuirk(CamcorderProfileResolutionQuirk.class, CamcorderProfileResolutionQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new CamcorderProfileResolutionQuirk(cameraQuirks.streamConfigurationMapCompat));
        }
        if (quirkSettings.shouldEnableQuirk(CameraNoResponseWhenEnablingFlashQuirk.class, CameraNoResponseWhenEnablingFlashQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new CameraNoResponseWhenEnablingFlashQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CaptureSessionStuckQuirk.class, CaptureSessionStuckQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new CaptureSessionStuckQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CloseCaptureSessionOnVideoQuirk.class, CloseCaptureSessionOnVideoQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new CloseCaptureSessionOnVideoQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ConfigureSurfaceToSecondarySessionFailQuirk.class, ConfigureSurfaceToSecondarySessionFailQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ConfigureSurfaceToSecondarySessionFailQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FinalizeSessionOnCloseQuirk.class, FinalizeSessionOnCloseQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new FinalizeSessionOnCloseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FlashTooSlowQuirk.class, FlashTooSlowQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new FlashTooSlowQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailWithAutoFlashQuirk.class, ImageCaptureFailWithAutoFlashQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureFailWithAutoFlashQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFlashNotFireQuirk.class, ImageCaptureFlashNotFireQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureFlashNotFireQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureWashedOutImageQuirk.class, ImageCaptureWashedOutImageQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureWashedOutImageQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureWithFlashUnderexposureQuirk.class, ImageCaptureWithFlashUnderexposureQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new ImageCaptureWithFlashUnderexposureQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(JpegHalCorruptImageQuirk.class, JpegHalCorruptImageQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new JpegHalCorruptImageQuirk());
        }
        JpegCaptureDownsizingQuirk jpegCaptureDownsizingQuirk = JpegCaptureDownsizingQuirk.INSTANCE;
        if (quirkSettings.shouldEnableQuirk(JpegCaptureDownsizingQuirk.class, jpegCaptureDownsizingQuirk.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(jpegCaptureDownsizingQuirk);
        }
        if (quirkSettings.shouldEnableQuirk(PreviewOrientationIncorrectQuirk.class, PreviewOrientationIncorrectQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new PreviewOrientationIncorrectQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TextureViewIsClosedQuirk.class, TextureViewIsClosedQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TextureViewIsClosedQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TorchFlashRequiredFor3aUpdateQuirk.class, TorchFlashRequiredFor3aUpdateQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TorchFlashRequiredFor3aUpdateQuirk(cameraQuirks.cameraMetadata));
        }
        if (quirkSettings.shouldEnableQuirk(YuvImageOnePixelShiftQuirk.class, YuvImageOnePixelShiftQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new YuvImageOnePixelShiftQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewStretchWhenVideoCaptureIsBoundQuirk.class, PreviewStretchWhenVideoCaptureIsBoundQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new PreviewStretchWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewDelayWhenVideoCaptureIsBoundQuirk.class, PreviewDelayWhenVideoCaptureIsBoundQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new PreviewDelayWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class, QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.class, ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ImageCaptureFailedWhenVideoCaptureIsBoundQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TemporalNoiseQuirk.class, TemporalNoiseQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new TemporalNoiseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCaptureFailedForVideoSnapshotQuirk.class, ImageCaptureFailedForVideoSnapshotQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ImageCaptureFailedForVideoSnapshotQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.class, AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(UltraWideFlashCaptureUnderexposureQuirk.class, UltraWideFlashCaptureUnderexposureQuirk.INSTANCE.isEnabled(cameraQuirks.cameraMetadata))) {
            arrayList.add(new UltraWideFlashCaptureUnderexposureQuirk());
        }
        Quirks quirks = new Quirks(arrayList);
        Logger.m74d("CameraQuirks", "camera2 CameraQuirks = " + Quirks.toString(quirks));
        return quirks;
    }
}
