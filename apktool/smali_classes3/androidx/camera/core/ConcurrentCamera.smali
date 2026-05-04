.class public Landroidx/camera/core/ConcurrentCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;
    }
.end annotation


# instance fields
.field private mCameras:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/camera/core/ConcurrentCamera;->mCameras:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCameras()Ljava/util/List;
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/camera/core/ConcurrentCamera;->mCameras:Ljava/util/List;

    return-object v0
.end method
