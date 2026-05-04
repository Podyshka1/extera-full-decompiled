.class public interface abstract Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract appContext(Landroid/content/Context;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method

.method public abstract backgroundDispatcher(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method

.method public abstract blockingDispatcher(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method

.method public abstract build()Lcom/google/firebase/sessions/FirebaseSessionsComponent;
.end method

.method public abstract firebaseApp(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method

.method public abstract firebaseInstallationsApi(Lcom/google/firebase/installations/FirebaseInstallationsApi;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method

.method public abstract transportFactoryProvider(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;
.end method
