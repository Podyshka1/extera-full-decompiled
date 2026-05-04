.class final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->update3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $aeMode:Landroidx/camera/camera2/pipe/AeMode;

.field final synthetic $aeRegions:Ljava/util/List;

.field final synthetic $afMode:Landroidx/camera/camera2/pipe/AfMode;

.field final synthetic $afRegions:Ljava/util/List;

.field final synthetic $awbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field final synthetic $awbRegions:Ljava/util/List;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeRegions:Ljava/util/List;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afRegions:Ljava/util/List;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbRegions:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeRegions:Ljava/util/List;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afRegions:Ljava/util/List;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbRegions:Ljava/util/List;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 231
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->access$getController3A$p(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object v0

    .line 233
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    .line 234
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    .line 235
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    .line 236
    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$aeRegions:Ljava/util/List;

    .line 237
    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$afRegions:Ljava/util/List;

    .line 238
    iget-object v7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$update3A$1;->$awbRegions:Ljava/util/List;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 232
    invoke-static/range {v0 .. v9}, Landroidx/camera/camera2/pipe/graph/Controller3A;->update3A-169HPGg$default(Landroidx/camera/camera2/pipe/graph/Controller3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Landroidx/camera/camera2/pipe/FlashMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
