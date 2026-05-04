.class final Landroidx/camera/camera2/pipe/internal/FrameDistributor$imageDistributors$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/internal/FrameDistributor;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageDistributorMap:Ljava/util/Map;

.field final synthetic $imageSource:Landroidx/camera/camera2/pipe/media/ImageSource;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroidx/camera/camera2/pipe/media/ImageSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor$imageDistributors$1$1;->$imageDistributorMap:Ljava/util/Map;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/FrameDistributor$imageDistributors$1$1;->$imageSource:Landroidx/camera/camera2/pipe/media/ImageSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
