.class final Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->label:I

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$1;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
