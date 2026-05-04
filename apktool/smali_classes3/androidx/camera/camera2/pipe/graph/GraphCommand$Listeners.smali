.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;
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
    name = "Listeners"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getListeners()Ljava/util/List;
    .locals 1

    .line 723
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;->listeners:Ljava/util/List;

    return-object v0
.end method
