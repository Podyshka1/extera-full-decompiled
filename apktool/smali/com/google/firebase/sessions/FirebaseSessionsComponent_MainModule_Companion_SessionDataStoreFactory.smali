.class public final Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;

.field private final blockingDispatcherProvider:Ljavax/inject/Provider;

.field private final sessionDataSerializerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->appContextProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->sessionDataSerializerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;
    .locals 1

    .line 47
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static sessionDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionDataSerializer;)Landroidx/datastore/core/DataStore;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->sessionDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionDataSerializer;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/datastore/core/DataStore;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->sessionDataSerializerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/sessions/SessionDataSerializer;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->sessionDataStore(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionDataSerializer;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory;->get()Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method
