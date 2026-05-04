.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/GraphCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProcessor"
.end annotation


# instance fields
.field private final new:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

.field private final old:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->old:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->new:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    return-void
.end method


# virtual methods
.method public final getNew()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;
    .locals 1

    .line 717
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->new:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    return-object v0
.end method

.method public final getOld()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;
    .locals 1

    .line 717
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->old:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    return-object v0
.end method
