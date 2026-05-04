.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;
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
    name = "Parameters"
.end annotation


# instance fields
.field private final graph3AParameters:Ljava/util/Map;

.field private final graphParameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    const-string v0, "graphParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graph3AParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graphParameters:Ljava/util/Map;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graph3AParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getGraph3AParameters()Ljava/util/Map;
    .locals 1

    .line 720
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graph3AParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getGraphParameters()Ljava/util/Map;
    .locals 1

    .line 720
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->graphParameters:Ljava/util/Map;

    return-object v0
.end method
