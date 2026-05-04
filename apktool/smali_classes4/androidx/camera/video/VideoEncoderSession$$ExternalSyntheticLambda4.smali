.class public final synthetic Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda4;->f$0:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda4;->f$0:Landroidx/camera/video/VideoEncoderSession;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-static {v0, p1}, Landroidx/camera/video/VideoEncoderSession;->$r8$lambda$3VS9N96niRhWMq3xwyNPJVrofi8(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
