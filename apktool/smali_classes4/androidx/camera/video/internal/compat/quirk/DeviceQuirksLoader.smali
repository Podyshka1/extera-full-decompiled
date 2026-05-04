.class public abstract Landroidx/camera/video/internal/compat/quirk/DeviceQuirksLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static loadQuirks(Landroidx/camera/core/impl/QuirkSettings;)Ljava/util/List;
    .locals 3

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const-class v1, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    .line 45
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;->load()Z

    move-result v2

    .line 43
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/MediaCodecInfoReportIncorrectInfoQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    const-class v1, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    .line 50
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;->load()Z

    move-result v2

    .line 48
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    const-class v1, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;

    .line 55
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->load()Z

    move-result v2

    .line 53
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    const-class v1, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;

    .line 60
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;->load()Z

    move-result v2

    .line 58
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderCrashQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3
    const-class v1, Landroidx/camera/video/internal/compat/quirk/ExcludeStretchedVideoQualityQuirk;

    .line 65
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExcludeStretchedVideoQualityQuirk;->load()Z

    move-result v2

    .line 63
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/ExcludeStretchedVideoQualityQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/ExcludeStretchedVideoQualityQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_4
    const-class v1, Landroidx/camera/video/internal/compat/quirk/MediaStoreVideoCannotWrite;

    .line 70
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/MediaStoreVideoCannotWrite;->load()Z

    move-result v2

    .line 68
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/MediaStoreVideoCannotWrite;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/MediaStoreVideoCannotWrite;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_5
    const-class v1, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;

    .line 75
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;->load()Z

    move-result v2

    .line 73
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_6
    const-class v1, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;

    .line 80
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;->load()Z

    move-result v2

    .line 78
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 81
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_7
    const-class v1, Landroidx/camera/video/internal/compat/quirk/NegativeLatLongSavesIncorrectlyQuirk;

    .line 85
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/NegativeLatLongSavesIncorrectlyQuirk;->load()Z

    move-result v2

    .line 83
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/NegativeLatLongSavesIncorrectlyQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/NegativeLatLongSavesIncorrectlyQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_8
    const-class v1, Landroidx/camera/video/internal/compat/quirk/AudioTimestampFramePositionIncorrectQuirk;

    .line 90
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/AudioTimestampFramePositionIncorrectQuirk;->load()Z

    move-result v2

    .line 88
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 91
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/AudioTimestampFramePositionIncorrectQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/AudioTimestampFramePositionIncorrectQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_9
    const-class v1, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;

    .line 95
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;->load()Z

    move-result v2

    .line 93
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 96
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedResolutionQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_a
    const-class v1, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;

    .line 100
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;->load()Z

    move-result v2

    .line 98
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 101
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/StretchedVideoResolutionQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_b
    const-class v1, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;

    .line 105
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;->load()Z

    move-result v2

    .line 103
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 106
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/CodecStuckOnFlushQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_c
    const-class v1, Landroidx/camera/video/internal/compat/quirk/StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;

    .line 110
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;->load()Z

    move-result v2

    .line 108
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 111
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/StopCodecAfterSurfaceRemovalCrashMediaServerQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_d
    const-class v1, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    .line 115
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;->load()Z

    move-result v2

    .line 113
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 116
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/ExtraSupportedQualityQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_e
    const-class v1, Landroidx/camera/video/internal/compat/quirk/SignalEosOutputBufferNotComeQuirk;

    .line 120
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/SignalEosOutputBufferNotComeQuirk;->load()Z

    move-result v2

    .line 118
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 121
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/SignalEosOutputBufferNotComeQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/SignalEosOutputBufferNotComeQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_f
    const-class v1, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    .line 125
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;->load()Z

    move-result v2

    .line 123
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 126
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/SizeCannotEncodeVideoQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_10
    const-class v1, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;

    .line 130
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;->load()Z

    move-result v2

    .line 128
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 131
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/PreviewBlackScreenQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_11
    const-class v1, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

    .line 135
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;->load()Z

    move-result v2

    .line 133
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 136
    sget-object v1, Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/PrematureEndOfStreamVideoQuirk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_12
    const-class v1, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;

    .line 140
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;->load()Z

    move-result v2

    .line 138
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 141
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/MediaCodecDefaultDataSpaceQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_13
    const-class v1, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;

    .line 145
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;->load()Z

    move-result v2

    .line 143
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 146
    new-instance v1, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;

    invoke-direct {v1}, Landroidx/camera/video/internal/compat/quirk/HdrRepeatingRequestFailureQuirk;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_14
    const-class v1, Landroidx/camera/video/internal/compat/quirk/PreviewFreezeAfterHighSpeedRecordingQuirk;

    .line 150
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/PreviewFreezeAfterHighSpeedRecordingQuirk;->load()Z

    move-result v2

    .line 148
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 151
    sget-object v1, Landroidx/camera/video/internal/compat/quirk/PreviewFreezeAfterHighSpeedRecordingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/PreviewFreezeAfterHighSpeedRecordingQuirk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_15
    const-class v1, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;

    .line 155
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;->load()Z

    move-result v2

    .line 153
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 156
    sget-object v1, Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/GLProcessingStuckOnCodecFlushQuirk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_16
    const-class v1, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    .line 160
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->load()Z

    move-result v2

    .line 158
    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/QuirkSettings;->shouldEnableQuirk(Ljava/lang/Class;Z)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 161
    sget-object p0, Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;->INSTANCE:Landroidx/camera/video/internal/compat/quirk/VideoInterlacingQuirk;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-object v0
.end method
