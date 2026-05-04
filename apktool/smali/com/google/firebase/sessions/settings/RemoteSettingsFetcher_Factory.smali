.class public final Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final appInfoProvider:Ljavax/inject/Provider;

.field private final blockingDispatcherProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->appInfoProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;
    .locals 1

    .line 40
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/ApplicationInfo;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;
    .locals 1

    .line 45
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;-><init>(Lcom/google/firebase/sessions/ApplicationInfo;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->appInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/ApplicationInfo;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->blockingDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->newInstance(Lcom/google/firebase/sessions/ApplicationInfo;Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher_Factory;->get()Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;

    move-result-object v0

    return-object v0
.end method
