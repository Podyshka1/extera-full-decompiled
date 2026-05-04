.class public final synthetic Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$2:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iget-object v1, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda3;->f$2:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    invoke-static {v0, v1, v2, p1}, Landroidx/camera/video/VideoEncoderSession;->$r8$lambda$UMKB9ijC89XfXZJjfTuNJgEk90w(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
