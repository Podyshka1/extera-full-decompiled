.class public final synthetic Landroidx/camera/video/Recorder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEncoder(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;I)Landroidx/camera/video/internal/encoder/Encoder;
    .locals 1

    .line 0
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/video/internal/encoder/EncoderImpl;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderConfig;I)V

    return-object v0
.end method
