.class public final Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;
.super Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/internal/FrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameInfoOutput"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;)V
    .locals 0

    .line 219
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState$FrameOutput;->getInternalResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    invoke-static {p9}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/FrameState;->onFrameInfoComplete()V

    return-void
.end method

.method protected release()V
    .locals 0

    return-void
.end method
