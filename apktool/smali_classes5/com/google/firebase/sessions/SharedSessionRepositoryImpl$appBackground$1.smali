.class final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->appBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;

    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 110
    iget v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->access$getSessionDataStore$p(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    new-instance v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;

    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->label:I

    invoke-interface {p1, v1, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 116
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App backgrounded, failed to update data. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseSessions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->getLocalSessionData$com_google_firebase_firebase_sessions()Lcom/google/firebase/sessions/SessionData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->this$0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->access$getTimeProvider$p(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lcom/google/firebase/sessions/TimeProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/sessions/TimeProvider;->currentTime()Lcom/google/firebase/sessions/Time;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/sessions/SessionData;->copy$default(Lcom/google/firebase/sessions/SessionData;Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/SessionData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->setLocalSessionData$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionData;)V

    .line 119
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
