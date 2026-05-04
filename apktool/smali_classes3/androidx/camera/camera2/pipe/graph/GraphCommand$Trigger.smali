.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;
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
    name = "Trigger"
.end annotation


# instance fields
.field private final triggerParameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "triggerParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;->triggerParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getTriggerParameters()Ljava/util/Map;
    .locals 1

    .line 729
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;->triggerParameters:Ljava/util/Map;

    return-object v0
.end method
