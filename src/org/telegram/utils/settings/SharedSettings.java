package org.telegram.utils.settings;

import kotlin.time.DurationKt;
import org.telegram.utils.camera.roundvideo.RoundVideoSession;

/* JADX INFO: loaded from: classes6.dex */
public abstract class SharedSettings {
    public static final BooleanSetting experimentalSettingsAllowed = BooleanSetting.of("experimental_settings_allowed", false);
    public static final BooleanSetting roundVideoCamera2Enabled = BooleanSetting.of("round_video_camera2_enabled", false);
    public static final EnumSetting<RoundVideoSession.OutputResolution> roundVideoOutputResolution = EnumSetting.of("round_video_output_resolution", RoundVideoSession.OutputResolution.P480);
    public static final EnumSetting<RoundVideoSession.CameraResolution> roundVideoCameraResolution = EnumSetting.of("round_video_camera_resolution", RoundVideoSession.CameraResolution.HIGH);
    public static final EnumSetting<RoundVideoSession.FrameRate> roundVideoFrameRate = EnumSetting.of("round_video_frame_rate", RoundVideoSession.FrameRate.FPS_30);
    public static final IntSetting roundVideoVideoBitrate = IntSetting.of("round_video_video_bitrate", DurationKt.NANOS_IN_MILLIS);
    public static final BooleanSetting roundVideoComposition = BooleanSetting.of("round_video_composition", true);
    public static final EnumSetting<RoundVideoSession.CameraFacing> roundVideoLastCamera = EnumSetting.of("round_video_last_camera", RoundVideoSession.CameraFacing.FRONT);
}
