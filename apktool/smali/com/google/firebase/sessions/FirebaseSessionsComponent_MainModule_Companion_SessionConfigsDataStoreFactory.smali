.class public final Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;

.field private final blockingDispatcherProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->appContextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static sessionConfigsDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->sessionConfigsDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/datastore/core/DataStore;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->sessionConfigsDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory;->get()Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method
