.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;
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
    name = "Capture"
.end annotation


# instance fields
.field private final requests:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->requests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getRequests()Ljava/util/List;
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->requests:Ljava/util/List;

    return-object v0
.end method
