package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.impl.QuirkSettings;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceQuirksLoader {
    public static final DeviceQuirksLoader INSTANCE = new DeviceQuirksLoader();

    private DeviceQuirksLoader() {
    }

    public final List loadQuirks(QuirkSettings quirkSettings) {
        Intrinsics.checkNotNullParameter(quirkSettings, "quirkSettings");
        ArrayList arrayList = new ArrayList();
        if (quirkSettings.shouldEnableQuirk(PixelJpegRSupportedQuirk.class, PixelJpegRSupportedQuirk.Companion.isEnabled())) {
            arrayList.add(new PixelJpegRSupportedQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CloseCameraDeviceOnCameraGraphCloseQuirk.class, CloseCameraDeviceOnCameraGraphCloseQuirk.Companion.isEnabled())) {
            arrayList.add(new CloseCameraDeviceOnCameraGraphCloseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.class, CrashWhenTakingPhotoWithAutoFlashAEModeQuirk.Companion.isEnabled())) {
            arrayList.add(new CrashWhenTakingPhotoWithAutoFlashAEModeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ControlZoomRatioRangeAssertionErrorQuirk.class, ControlZoomRatioRangeAssertionErrorQuirk.Companion.isEnabled())) {
            arrayList.add(new ControlZoomRatioRangeAssertionErrorQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(DisableAbortCapturesOnStopQuirk.class, DisableAbortCapturesOnStopQuirk.Companion.isEnabled())) {
            arrayList.add(new DisableAbortCapturesOnStopQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(DisableAbortCapturesOnStopWithSessionProcessorQuirk.class, DisableAbortCapturesOnStopWithSessionProcessorQuirk.Companion.isEnabled())) {
            arrayList.add(new DisableAbortCapturesOnStopWithSessionProcessorQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(FlashAvailabilityBufferUnderflowQuirk.class, FlashAvailabilityBufferUnderflowQuirk.Companion.isEnabled())) {
            arrayList.add(new FlashAvailabilityBufferUnderflowQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ImageCapturePixelHDRPlusQuirk.class, ImageCapturePixelHDRPlusQuirk.Companion.isEnabled())) {
            arrayList.add(new ImageCapturePixelHDRPlusQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(InvalidVideoProfilesQuirk.class, InvalidVideoProfilesQuirk.Companion.isEnabled())) {
            arrayList.add(new InvalidVideoProfilesQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExcludedSupportedSizesQuirk.class, ExcludedSupportedSizesQuirk.Companion.isEnabled())) {
            arrayList.add(new ExcludedSupportedSizesQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraCroppingQuirk.class, ExtraCroppingQuirk.Companion.isEnabled())) {
            arrayList.add(new ExtraCroppingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedOutputSizeQuirk.class, ExtraSupportedOutputSizeQuirk.Companion.isEnabled())) {
            arrayList.add(new ExtraSupportedOutputSizeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedSurfaceCombinationsQuirk.class, ExtraSupportedSurfaceCombinationsQuirk.Companion.isEnabled())) {
            arrayList.add(new ExtraSupportedSurfaceCombinationsQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(Nexus4AndroidLTargetAspectRatioQuirk.class, Nexus4AndroidLTargetAspectRatioQuirk.Companion.isEnabled())) {
            arrayList.add(new Nexus4AndroidLTargetAspectRatioQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewPixelHDRnetQuirk.class, PreviewPixelHDRnetQuirk.Companion.isEnabled())) {
            arrayList.add(new PreviewPixelHDRnetQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(RepeatingStreamConstraintForVideoRecordingQuirk.class, RepeatingStreamConstraintForVideoRecordingQuirk.Companion.isEnabled())) {
            arrayList.add(new RepeatingStreamConstraintForVideoRecordingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(StillCaptureFlashStopRepeatingQuirk.class, StillCaptureFlashStopRepeatingQuirk.Companion.isEnabled())) {
            arrayList.add(new StillCaptureFlashStopRepeatingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(TorchIsClosedAfterImageCapturingQuirk.class, TorchIsClosedAfterImageCapturingQuirk.Companion.isEnabled())) {
            arrayList.add(new TorchIsClosedAfterImageCapturingQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SurfaceOrderQuirk.class, SurfaceOrderQuirk.Companion.isEnabled())) {
            arrayList.add(new SurfaceOrderQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CaptureSessionOnClosedNotCalledQuirk.class, CaptureSessionOnClosedNotCalledQuirk.Companion.isEnabled())) {
            arrayList.add(new CaptureSessionOnClosedNotCalledQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ZslDisablerQuirk.class, ZslDisablerQuirk.Companion.load())) {
            arrayList.add(new ZslDisablerQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SmallDisplaySizeQuirk.class, SmallDisplaySizeQuirk.Companion.load())) {
            arrayList.add(new SmallDisplaySizeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewUnderExposureQuirk.class, PreviewUnderExposureQuirk.load())) {
            arrayList.add(PreviewUnderExposureQuirk.INSTANCE);
        }
        return arrayList;
    }
}
