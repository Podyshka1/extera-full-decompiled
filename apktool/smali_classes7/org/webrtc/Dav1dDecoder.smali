.class public Lorg/webrtc/Dav1dDecoder;
.super Lorg/webrtc/WrappedNativeVideoDecoder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/webrtc/WrappedNativeVideoDecoder;-><init>()V

    return-void
.end method

.method static native nativeCreateDecoder()J
.end method


# virtual methods
.method public createNative(J)J
    .locals 0

    .line 16
    invoke-static {}, Lorg/webrtc/Dav1dDecoder;->nativeCreateDecoder()J

    move-result-wide p1

    return-wide p1
.end method
