.class public final Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

.field private static final dependencies:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    invoke-direct {v0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->dependencies:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addDependency(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)V
    .locals 6

    const-string/jumbo v0, "subscriberName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->dependencies:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FirebaseSessions"

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already added."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    const-string v1, "dependencies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    const/4 v3, 0x1

    invoke-static {v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;-><init>(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " added."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final getDependency(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;
    .locals 3

    .line 91
    sget-object v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->dependencies:Ljava/util/Map;

    const-string v1, "dependencies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "getOrElse(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get dependency "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Dependencies should be added at class load time."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final register(Lcom/google/firebase/sessions/api/SessionSubscriber;)V
    .locals 5

    .line 61
    const-string/jumbo v0, "subscriber"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Lcom/google/firebase/sessions/api/SessionSubscriber;->getSessionSubscriberName()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    invoke-direct {v1, v0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->getDependency(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->getSubscriber()Lcom/google/firebase/sessions/api/SessionSubscriber;

    move-result-object v2

    const-string v3, "Subscriber "

    const-string v4, "FirebaseSessions"

    if-eqz v2, :cond_0

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already registered."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->setSubscriber(Lcom/google/firebase/sessions/api/SessionSubscriber;)V

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " registered."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v1}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getRegisteredSubscribers$com_google_firebase_firebase_sessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;

    iget v1, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;-><init>(Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$5:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    iget-object v8, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->dependencies:Ljava/util/Map;

    const-string v2, "dependencies"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 102
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p1

    move-object v5, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 104
    check-cast p1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    .line 76
    invoke-virtual {p1}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v6

    .line 121
    iput-object v5, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$getRegisteredSubscribers$1;->label:I

    invoke-interface {v6, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v9, v5

    .line 76
    :goto_2
    :try_start_0
    sget-object p1, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    invoke-virtual {p1, v7}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->getSubscriber$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/SessionSubscriber;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v6, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 104
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v9

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 125
    invoke-interface {v6, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-object v5
.end method

.method public final getSubscriber$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/SessionSubscriber;
    .locals 3

    const-string/jumbo v0, "subscriberName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->getDependency(Lcom/google/firebase/sessions/api/SessionSubscriber$Name;)Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies$Dependency;->getSubscriber()Lcom/google/firebase/sessions/api/SessionSubscriber;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has not been registered."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
