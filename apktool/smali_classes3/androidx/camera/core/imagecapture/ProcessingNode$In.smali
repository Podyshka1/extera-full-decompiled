.class abstract Landroidx/camera/core/imagecapture/ProcessingNode$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/ProcessingNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "In"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(ILjava/util/List;)Landroidx/camera/core/imagecapture/ProcessingNode$In;
    .locals 3

    .line 442
    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;

    new-instance v1, Landroidx/camera/core/processing/Edge;

    invoke-direct {v1}, Landroidx/camera/core/processing/Edge;-><init>()V

    new-instance v2, Landroidx/camera/core/processing/Edge;

    invoke-direct {v2}, Landroidx/camera/core/processing/Edge;-><init>()V

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_In;-><init>(Landroidx/camera/core/processing/Edge;Landroidx/camera/core/processing/Edge;ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract getEdge()Landroidx/camera/core/processing/Edge;
.end method

.method abstract getInputFormat()I
.end method

.method abstract getOutputFormats()Ljava/util/List;
.end method

.method abstract getPostviewEdge()Landroidx/camera/core/processing/Edge;
.end method
