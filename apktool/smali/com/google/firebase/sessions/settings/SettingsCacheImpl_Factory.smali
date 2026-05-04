.class public final Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final backgroundDispatcherProvider:Ljavax/inject/Provider;

.field private final sessionConfigsDataStoreProvider:Ljavax/inject/Provider;

.field private final timeProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->timeProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->sessionConfigsDataStoreProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;
    .locals 1

    .line 46
    new-instance v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)Lcom/google/firebase/sessions/settings/SettingsCacheImpl;
    .locals 1

    .line 51
    new-instance v0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/SettingsCacheImpl;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->timeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/TimeProvider;

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->sessionConfigsDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/DataStore;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->newInstance(Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/TimeProvider;Landroidx/datastore/core/DataStore;)Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/SettingsCacheImpl_Factory;->get()Lcom/google/firebase/sessions/settings/SettingsCacheImpl;

    move-result-object v0

    return-object v0
.end method
