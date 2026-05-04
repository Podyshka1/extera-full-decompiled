.class final Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/api/db/DatabaseHelper;->updateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.exteragram.messenger.api.db.DatabaseHelper$updateNowPlaying$1"
    f = "DatabaseHelper.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $id:J

.field final synthetic $newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

.field label:I


# direct methods
.method constructor <init>(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$id:J

    iput-object p3, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iput-object p4, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$callback:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;

    iget-wide v1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$id:J

    iget-object v3, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iget-object v4, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$callback:Ljava/util/function/Consumer;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;-><init>(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    :try_start_1
    sget-object p1, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/db/ExteraDatabase;->profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;

    move-result-object p1

    iget-wide v3, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$id:J

    iget-object v1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$newNowPlaying:Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    iput v2, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->label:I

    invoke-interface {p1, v3, v4, v1, p0}, Lcom/exteragram/messenger/api/db/ProfileDao;->updateNowPlaying(JLcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$callback:Ljava/util/function/Consumer;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 65
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 66
    iget-object p1, p0, Lcom/exteragram/messenger/api/db/DatabaseHelper$updateNowPlaying$1;->$callback:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 68
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
