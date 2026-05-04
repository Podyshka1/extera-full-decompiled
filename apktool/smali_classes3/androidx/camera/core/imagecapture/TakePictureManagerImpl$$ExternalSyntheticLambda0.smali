.class public final synthetic Landroidx/camera/core/imagecapture/TakePictureManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->issueNextRequest()V

    return-void
.end method
