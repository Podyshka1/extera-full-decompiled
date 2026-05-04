package androidx.camera.video.internal.compat.quirk;

import androidx.camera.core.impl.QuirkSettings;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeviceQuirksLoader {
    static List loadQuirks(QuirkSettings quirkSettings) {
        ArrayList arrayList = new ArrayList();
        if (quirkSettings.shouldEnableQuirk(MediaCodecInfoReportIncorrectInfoQuirk.class, MediaCodecInfoReportIncorrectInfoQuirk.load())) {
            arrayList.add(new MediaCodecInfoReportIncorrectInfoQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CameraUseInconsistentTimebaseQuirk.class, CameraUseInconsistentTimebaseQuirk.load())) {
            arrayList.add(new CameraUseInconsistentTimebaseQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ReportedVideoQualityNotSupportedQuirk.class, ReportedVideoQualityNotSupportedQuirk.load())) {
            arrayList.add(new ReportedVideoQualityNotSupportedQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(VideoEncoderCrashQuirk.class, VideoEncoderCrashQuirk.load())) {
            arrayList.add(new VideoEncoderCrashQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExcludeStretchedVideoQualityQuirk.class, ExcludeStretchedVideoQualityQuirk.load())) {
            arrayList.add(new ExcludeStretchedVideoQualityQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(MediaStoreVideoCannotWrite.class, MediaStoreVideoCannotWrite.load())) {
            arrayList.add(new MediaStoreVideoCannotWrite());
        }
        if (quirkSettings.shouldEnableQuirk(AudioEncoderIgnoresInputTimestampQuirk.class, AudioEncoderIgnoresInputTimestampQuirk.load())) {
            arrayList.add(new AudioEncoderIgnoresInputTimestampQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class, VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.load())) {
            arrayList.add(new VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(NegativeLatLongSavesIncorrectlyQuirk.class, NegativeLatLongSavesIncorrectlyQuirk.load())) {
            arrayList.add(new NegativeLatLongSavesIncorrectlyQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(AudioTimestampFramePositionIncorrectQuirk.class, AudioTimestampFramePositionIncorrectQuirk.load())) {
            arrayList.add(new AudioTimestampFramePositionIncorrectQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedResolutionQuirk.class, ExtraSupportedResolutionQuirk.load())) {
            arrayList.add(new ExtraSupportedResolutionQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(StretchedVideoResolutionQuirk.class, StretchedVideoResolutionQuirk.load())) {
            arrayList.add(new StretchedVideoResolutionQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(CodecStuckOnFlushQuirk.class, CodecStuckOnFlushQuirk.load())) {
            arrayList.add(new CodecStuckOnFlushQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(StopCodecAfterSurfaceRemovalCrashMediaServerQuirk.class, StopCodecAfterSurfaceRemovalCrashMediaServerQuirk.load())) {
            arrayList.add(new StopCodecAfterSurfaceRemovalCrashMediaServerQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(ExtraSupportedQualityQuirk.class, ExtraSupportedQualityQuirk.load())) {
            arrayList.add(new ExtraSupportedQualityQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SignalEosOutputBufferNotComeQuirk.class, SignalEosOutputBufferNotComeQuirk.load())) {
            arrayList.add(new SignalEosOutputBufferNotComeQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(SizeCannotEncodeVideoQuirk.class, SizeCannotEncodeVideoQuirk.load())) {
            arrayList.add(new SizeCannotEncodeVideoQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewBlackScreenQuirk.class, PreviewBlackScreenQuirk.load())) {
            arrayList.add(new PreviewBlackScreenQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PrematureEndOfStreamVideoQuirk.class, PrematureEndOfStreamVideoQuirk.load())) {
            arrayList.add(PrematureEndOfStreamVideoQuirk.INSTANCE);
        }
        if (quirkSettings.shouldEnableQuirk(MediaCodecDefaultDataSpaceQuirk.class, MediaCodecDefaultDataSpaceQuirk.load())) {
            arrayList.add(new MediaCodecDefaultDataSpaceQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(HdrRepeatingRequestFailureQuirk.class, HdrRepeatingRequestFailureQuirk.load())) {
            arrayList.add(new HdrRepeatingRequestFailureQuirk());
        }
        if (quirkSettings.shouldEnableQuirk(PreviewFreezeAfterHighSpeedRecordingQuirk.class, PreviewFreezeAfterHighSpeedRecordingQuirk.load())) {
            arrayList.add(PreviewFreezeAfterHighSpeedRecordingQuirk.INSTANCE);
        }
        if (quirkSettings.shouldEnableQuirk(GLProcessingStuckOnCodecFlushQuirk.class, GLProcessingStuckOnCodecFlushQuirk.load())) {
            arrayList.add(GLProcessingStuckOnCodecFlushQuirk.INSTANCE);
        }
        if (quirkSettings.shouldEnableQuirk(VideoInterlacingQuirk.class, VideoInterlacingQuirk.load())) {
            arrayList.add(VideoInterlacingQuirk.INSTANCE);
        }
        return arrayList;
    }
}
