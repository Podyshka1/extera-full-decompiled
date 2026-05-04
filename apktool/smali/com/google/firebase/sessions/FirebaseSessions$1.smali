.class final Lcom/google/firebase/sessions/FirebaseSessions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/FirebaseSessions;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sessionsActivityLifecycleCallbacks:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/FirebaseSessions;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/FirebaseSessions;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->this$0:Lcom/google/firebase/sessions/FirebaseSessions;

    iput-object p2, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->$sessionsActivityLifecycleCallbacks:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/google/firebase/sessions/FirebaseSessions$1;

    iget-object v0, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->this$0:Lcom/google/firebase/sessions/FirebaseSessions;

    iget-object v1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->$sessionsActivityLifecycleCallbacks:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/FirebaseSessions$1;-><init>(Lcom/google/firebase/sessions/FirebaseSessions;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/FirebaseSessions$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/FirebaseSessions$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/FirebaseSessions$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/FirebaseSessions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->label:I

    const-string v2, "FirebaseSessions"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    sget-object p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    iput v4, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->label:I

    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->getRegisteredSubscribers$com_google_firebase_firebase_sessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 2632
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 2633
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/api/SessionSubscriber;

    .line 52
    invoke-interface {v1}, Lcom/google/firebase/sessions/api/SessionSubscriber;->isDataCollectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iget-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->this$0:Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessions;->access$getSettings$p(Lcom/google/firebase/sessions/FirebaseSessions;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object p1

    iput v3, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->label:I

    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/settings/SessionsSettings;->updateSettings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    .line 56
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->this$0:Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessions;->access$getSettings$p(Lcom/google/firebase/sessions/FirebaseSessions;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/sessions/settings/SessionsSettings;->getSessionsEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 57
    const-string p1, "Sessions SDK disabled. Not listening to lifecycle events."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_4

    .line 59
    :cond_7
    iget-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->this$0:Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessions;->access$getFirebaseApp$p(Lcom/google/firebase/sessions/FirebaseSessions;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/sessions/FirebaseSessions$1;->$sessionsActivityLifecycleCallbacks:Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    new-instance v1, Lcom/google/firebase/sessions/FirebaseSessions$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/firebase/sessions/FirebaseSessions$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    .line 53
    :cond_8
    :goto_3
    const-string p1, "No Sessions subscribers. Not listening to lifecycle events."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 68
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
