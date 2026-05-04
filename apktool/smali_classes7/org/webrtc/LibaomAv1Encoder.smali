.class public Lorg/webrtc/LibaomAv1Encoder;
.super Lorg/webrtc/WrappedNativeVideoEncoder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/webrtc/WrappedNativeVideoEncoder;-><init>()V

    return-void
.end method

.method static native nativeCreateEncoder()J
.end method


# virtual methods
.method public createNativeVideoEncoder()J
    .locals 2

    .line 16
    invoke-static {}, Lorg/webrtc/LibaomAv1Encoder;->nativeCreateEncoder()J

    move-result-wide v0

    return-wide v0
.end method

.method public isHardwareEncoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
