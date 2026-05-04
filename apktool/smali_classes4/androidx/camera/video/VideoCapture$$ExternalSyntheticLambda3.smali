.class public final synthetic Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoCapture;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoCapture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/video/VideoCapture;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/video/VideoCapture;

    invoke-static {v0, p1, p2}, Landroidx/camera/video/VideoCapture;->$r8$lambda$Ax-zBWnZVaOiZHDkbvvOQS3syJQ(Landroidx/camera/video/VideoCapture;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
