.class public Lorg/webrtc/audio/LegacyAudioDeviceModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/audio/AudioDeviceModule;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNativeAudioDeviceModulePointer()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 0

    .line 44
    invoke-static {p1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    return-void
.end method

.method public synthetic setNoiseSuppressorEnabled(Z)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/webrtc/audio/AudioDeviceModule$-CC;->$default$setNoiseSuppressorEnabled(Lorg/webrtc/audio/AudioDeviceModule;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic setPreferredMicrophoneFieldDimension(F)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/webrtc/audio/AudioDeviceModule$-CC;->$default$setPreferredMicrophoneFieldDimension(Lorg/webrtc/audio/AudioDeviceModule;F)Z

    move-result p1

    return p1
.end method

.method public setSpeakerMute(Z)V
    .locals 0

    .line 39
    invoke-static {p1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setSpeakerMute(Z)V

    return-void
.end method
