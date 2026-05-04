.class public Lorg/webrtc/RtpParameters$Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RtpParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Codec"
.end annotation


# instance fields
.field public clockRate:Ljava/lang/Integer;

.field kind:Lorg/webrtc/MediaStreamTrack$MediaType;

.field public name:Ljava/lang/String;

.field public numChannels:Ljava/lang/Integer;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payloadType:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lorg/webrtc/MediaStreamTrack$MediaType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/webrtc/MediaStreamTrack$MediaType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Lorg/webrtc/RtpParameters$Codec;->payloadType:I

    .line 191
    iput-object p2, p0, Lorg/webrtc/RtpParameters$Codec;->name:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lorg/webrtc/RtpParameters$Codec;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    .line 193
    iput-object p4, p0, Lorg/webrtc/RtpParameters$Codec;->clockRate:Ljava/lang/Integer;

    .line 194
    iput-object p5, p0, Lorg/webrtc/RtpParameters$Codec;->numChannels:Ljava/lang/Integer;

    .line 195
    iput-object p6, p0, Lorg/webrtc/RtpParameters$Codec;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getClockRate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Codec;->clockRate:Ljava/lang/Integer;

    return-object v0
.end method

.method getKind()Lorg/webrtc/MediaStreamTrack$MediaType;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Codec;->kind:Lorg/webrtc/MediaStreamTrack$MediaType;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Codec;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNumChannels()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Codec;->numChannels:Ljava/lang/Integer;

    return-object v0
.end method

.method getParameters()Ljava/util/Map;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/webrtc/RtpParameters$Codec;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method getPayloadType()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "Codec"
    .end annotation

    .line 200
    iget v0, p0, Lorg/webrtc/RtpParameters$Codec;->payloadType:I

    return v0
.end method
