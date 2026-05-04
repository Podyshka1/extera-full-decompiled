.class public Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/JavaAudioDeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSamples"
.end annotation


# instance fields
.field private final audioFormat:I

.field private final channelCount:I

.field private final data:[B

.field private final sampleRate:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->audioFormat:I

    .line 301
    iput p2, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->channelCount:I

    .line 302
    iput p3, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->sampleRate:I

    .line 303
    iput-object p4, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->data:[B

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 307
    iget v0, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->audioFormat:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 311
    iget v0, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->channelCount:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->data:[B

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 315
    iget v0, p0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioSamples;->sampleRate:I

    return v0
.end method
