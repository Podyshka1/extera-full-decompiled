.class public interface abstract Lorg/webrtc/VideoDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createDecoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoDecoder;
    .annotation build Lorg/webrtc/CalledByNative;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lorg/webrtc/VideoCodecInfo;
    .annotation build Lorg/webrtc/CalledByNative;
    .end annotation
.end method
