.class Landroidx/camera/video/VideoCapabilities$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoCapabilities;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getResolution(Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoCapabilities$-CC;->$default$getResolution(Landroidx/camera/video/VideoCapabilities;Landroidx/camera/video/Quality;Landroidx/camera/core/DynamicRange;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedDynamicRanges()Ljava/util/Set;
    .locals 1

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getSupportedQualities(Landroidx/camera/core/DynamicRange;)Ljava/util/List;
    .locals 0

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
