package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.QuirkSettings;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "loadQuirks", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/Quirk;", "quirkSettings", "Landroidx/camera/core/impl/QuirkSettings;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class DeviceQuirksLoader {
    public static final DeviceQuirksLoader INSTANCE = new DeviceQuirksLoader();

    private DeviceQuirksLoader() {
    }

    public final List<Quirk> loadQuirks(QuirkSettings quirkSettings) {
        ArrayList arrayList = new ArrayList();
        if (quirkSettings.shouldEnableQuirk(PixelJpegRSupportedQuirk.class, PixelJpegRSupportedQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new PixelJpegRSupportedQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CloseCameraDeviceOnCameraGraphCloseQuirk.class, CloseCameraDeviceOnCameraGraphCloseQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new CloseCameraDeviceOnCameraGraphCloseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class, CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new CrashWhenTakingPhotoWithAutoFlashAEModeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ControlZoomRatioRangeAssertionErrorQuirk.class, ControlZoomRatioRangeAssertionErrorQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ControlZoomRatioRangeAssertionErrorQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(DisableAbortCapturesOnStopQuirk.class, DisableAbortCapturesOnStopQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new DisableAbortCapturesOnStopQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(DisableAbortCapturesOnStopWithSessionProcessorQuirk.class, DisableAbortCapturesOnStopWithSessionProcessorQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new DisableAbortCapturesOnStopWithSessionProcessorQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FlashAvailabilityBufferUnderflowQuirk.class, FlashAvailabilityBufferUnderflowQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new FlashAvailabilityBufferUnderflowQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCapturePixelHDRPlusQuirk.class, ImageCapturePixelHDRPlusQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ImageCapturePixelHDRPlusQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(InvalidVideoProfilesQuirk.class, InvalidVideoProfilesQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new InvalidVideoProfilesQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExcludedSupportedSizesQuirk.class, ExcludedSupportedSizesQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ExcludedSupportedSizesQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraCroppingQuirk.class, ExtraCroppingQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ExtraCroppingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedOutputSizeQuirk.class, ExtraSupportedOutputSizeQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ExtraSupportedOutputSizeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedSurfaceCombinationsQuirk.class, ExtraSupportedSurfaceCombinationsQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new ExtraSupportedSurfaceCombinationsQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(Nexus4AndroidLTargetAspectRatioQuirk.class, Nexus4AndroidLTargetAspectRatioQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new Nexus4AndroidLTargetAspectRatioQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewPixelHDRnetQuirk.class, PreviewPixelHDRnetQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new PreviewPixelHDRnetQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(RepeatingStreamConstraintForVideoRecordingQuirk.class, RepeatingStreamConstraintForVideoRecordingQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new RepeatingStreamConstraintForVideoRecordingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(StillCaptureFlashStopRepeatingQuirk.class, StillCaptureFlashStopRepeatingQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new StillCaptureFlashStopRepeatingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TorchIsClosedAfterImageCapturingQuirk.class, TorchIsClosedAfterImageCapturingQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new TorchIsClosedAfterImageCapturingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SurfaceOrderQuirk.class, SurfaceOrderQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new SurfaceOrderQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CaptureSessionOnClosedNotCalledQuirk.class, CaptureSessionOnClosedNotCalledQuirk.INSTANCE.isEnabled())) {
            arrayList.add(new CaptureSessionOnClosedNotCalledQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ZslDisablerQuirk.class, ZslDisablerQuirk.INSTANCE.load())) {
            arrayList.add(new ZslDisablerQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SmallDisplaySizeQuirk.class, SmallDisplaySizeQuirk.INSTANCE.load())) {
            arrayList.add(new SmallDisplaySizeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewUnderExposureQuirk.class, PreviewUnderExposureQuirk.load())) {
            arrayList.add(PreviewUnderExposureQuirk.INSTANCE);
        }
        return arrayList;
    }
}
