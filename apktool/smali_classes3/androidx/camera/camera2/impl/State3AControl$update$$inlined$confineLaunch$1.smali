.class public final Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/State3AControl;->update()Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $revision$inlined:Lkotlin/jvm/internal/Ref$LongRef;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/State3AControl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/State3AControl;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->$revision$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->$revision$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p1, p2, v0, v1}, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/State3AControl;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 171
    iget v0, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/State3AControl;

    iget-object v0, p0, Landroidx/camera/camera2/impl/State3AControl$update$$inlined$confineLaunch$1;->$revision$inlined:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v0, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/impl/State3AControl;->access$applyUpdate(Landroidx/camera/camera2/impl/State3AControl;J)V

    .line 194
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
