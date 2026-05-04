.class public final Lcom/google/firebase/sessions/FirebaseSessions_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final backgroundDispatcherProvider:Ljavax/inject/Provider;

.field private final firebaseAppProvider:Ljavax/inject/Provider;

.field private final sessionsActivityLifecycleCallbacksProvider:Ljavax/inject/Provider;

.field private final settingsProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->firebaseAppProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->sessionsActivityLifecycleCallbacksProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessions_Factory;
    .locals 1

    .line 51
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/sessions/FirebaseSessions_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/sessions/FirebaseSessions;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->firebaseAppProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/settings/SessionsSettings;

    iget-object v2, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    iget-object v3, p0, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->sessionsActivityLifecycleCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->newInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)Lcom/google/firebase/sessions/FirebaseSessions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/sessions/FirebaseSessions_Factory;->get()Lcom/google/firebase/sessions/FirebaseSessions;

    move-result-object v0

    return-object v0
.end method
