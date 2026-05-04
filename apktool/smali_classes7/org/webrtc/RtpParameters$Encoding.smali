.class public Lorg/webrtc/RtpParameters$Encoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RtpParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoding"
.end annotation


# instance fields
.field public active:Z

.field public adaptiveAudioPacketTime:Z

.field public bitratePriority:D

.field public maxBitrateBps:Ljava/lang/Integer;

.field public maxFramerate:Ljava/lang/Integer;

.field public minBitrateBps:Ljava/lang/Integer;

.field public networkPriority:I

.field public numTemporalLayers:Ljava/lang/Integer;

.field public rid:Ljava/lang/String;

.field public scaleResolutionDownBy:Ljava/lang/Double;

.field public ssrc:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;ZDILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Z)V
    .locals 0
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/webrtc/RtpParameters$Encoding;->rid:Ljava/lang/String;

    .line 99
    iput-boolean p2, p0, Lorg/webrtc/RtpParameters$Encoding;->active:Z

    .line 100
    iput-wide p3, p0, Lorg/webrtc/RtpParameters$Encoding;->bitratePriority:D

    .line 101
    iput p5, p0, Lorg/webrtc/RtpParameters$Encoding;->networkPriority:I

    .line 102
    iput-object p6, p0, Lorg/webrtc/RtpParameters$Encoding;->maxBitrateBps:Ljava/lang/Integer;

    .line 103
    iput-object p7, p0, Lorg/webrtc/RtpParameters$Encoding;->minBitrateBps:Ljava/lang/Integer;

    .line 104
    iput-object p8, p0, Lorg/webrtc/RtpParameters$Encoding;->maxFramerate:Ljava/lang/Integer;

    .line 105
    iput-object p9, p0, Lorg/webrtc/RtpParameters$Encoding;->numTemporalLayers:Ljava/lang/Integer;

    .line 106
    iput-object p10, p0, Lorg/webrtc/RtpParameters$Encoding;->scaleResolutionDownBy:Ljava/lang/Double;

    .line 107
    iput-object p11, p0, Lorg/webrtc/RtpParameters$Encoding;->ssrc:Ljava/lang/Long;

    .line 108
    iput-boolean p12, p0, Lorg/webrtc/RtpParameters$Encoding;->adaptiveAudioPacketTime:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Double;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 61
    iput-wide v0, p0, Lorg/webrtc/RtpParameters$Encoding;->bitratePriority:D

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lorg/webrtc/RtpParameters$Encoding;->networkPriority:I

    .line 88
    iput-object p1, p0, Lorg/webrtc/RtpParameters$Encoding;->rid:Ljava/lang/String;

    .line 89
    iput-boolean p2, p0, Lorg/webrtc/RtpParameters$Encoding;->active:Z

    .line 90
    iput-object p3, p0, Lorg/webrtc/RtpParameters$Encoding;->scaleResolutionDownBy:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method getActive()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 119
    iget-boolean v0, p0, Lorg/webrtc/RtpParameters$Encoding;->active:Z

    return v0
.end method

.method getAdaptivePTime()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 169
    iget-boolean v0, p0, Lorg/webrtc/RtpParameters$Encoding;->adaptiveAudioPacketTime:Z

    return v0
.end method

.method getBitratePriority()D
    .locals 2
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 124
    iget-wide v0, p0, Lorg/webrtc/RtpParameters$Encoding;->bitratePriority:D

    return-wide v0
.end method

.method getMaxBitrateBps()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->maxBitrateBps:Ljava/lang/Integer;

    return-object v0
.end method

.method getMaxFramerate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->maxFramerate:Ljava/lang/Integer;

    return-object v0
.end method

.method getMinBitrateBps()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->minBitrateBps:Ljava/lang/Integer;

    return-object v0
.end method

.method getNetworkPriority()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 129
    iget v0, p0, Lorg/webrtc/RtpParameters$Encoding;->networkPriority:I

    return v0
.end method

.method getNumTemporalLayers()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->numTemporalLayers:Ljava/lang/Integer;

    return-object v0
.end method

.method getRid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->rid:Ljava/lang/String;

    return-object v0
.end method

.method getScaleResolutionDownBy()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->scaleResolutionDownBy:Ljava/lang/Double;

    return-object v0
.end method

.method getSsrc()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Encoding"
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Encoding;->ssrc:Ljava/lang/Long;

    return-object v0
.end method
