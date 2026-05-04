.class final Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/badges/BadgesController;->updateBadge(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field label:I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->$badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;

    iget-object v0, p0, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->$badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-direct {p1, v0, p2}, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;-><init>(Lcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/exteragram/messenger/badges/BadgesController;->access$getApiBadgeSource$p()Lcom/exteragram/messenger/badges/source/ApiBadgeSource;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v3, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iget-object v1, p0, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->$badge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iput v2, p0, Lcom/exteragram/messenger/badges/BadgesController$updateBadge$1$1;->label:I

    invoke-virtual {p1, v3, v4, v1, p0}, Lcom/exteragram/messenger/badges/source/ApiBadgeSource;->updateLocalBadge(JLcom/exteragram/messenger/api/dto/BadgeDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 113
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
