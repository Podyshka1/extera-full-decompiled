.class public abstract Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final preferencesDataStore(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "produceMigrations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;-><init>(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public static synthetic preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    .line 71
    sget-object p2, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt$preferencesDataStore$1;->INSTANCE:Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt$preferencesDataStore$1;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    .line 72
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {v0, p4, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p4

    invoke-virtual {p3, p4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 68
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object p0

    return-object p0
.end method
