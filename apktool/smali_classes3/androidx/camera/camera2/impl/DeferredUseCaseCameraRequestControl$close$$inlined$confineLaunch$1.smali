.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    invoke-direct {p1, p2, v0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 219
    iget v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->access$getImpl$p(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->close()V

    .line 194
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
