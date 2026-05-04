.class final Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sessionConfig:Landroidx/camera/core/impl/SessionConfig;

.field label:I


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/SessionConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->$sessionConfig:Landroidx/camera/core/impl/SessionConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->$sessionConfig:Landroidx/camera/core/impl/SessionConfig;

    invoke-direct {p1, v0, p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;-><init>(Landroidx/camera/core/impl/SessionConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 107
    iget v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->$sessionConfig:Landroidx/camera/core/impl/SessionConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig;->getErrorListener()Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;->$sessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 111
    sget-object v1, Landroidx/camera/core/impl/SessionConfig$SessionError;->SESSION_ERROR_SURFACE_NEEDS_RESET:Landroidx/camera/core/impl/SessionConfig$SessionError;

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    .line 113
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
