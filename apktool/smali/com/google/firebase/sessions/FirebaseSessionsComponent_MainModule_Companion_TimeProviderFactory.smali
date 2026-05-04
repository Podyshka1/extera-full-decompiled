.class public final Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;
    .locals 1

    .line 27
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder;->access$000()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;

    move-result-object v0

    return-object v0
.end method

.method public static timeProvider()Lcom/google/firebase/sessions/TimeProvider;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->timeProvider()Lcom/google/firebase/sessions/TimeProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/TimeProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/TimeProvider;
    .locals 1

    .line 23
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;->timeProvider()Lcom/google/firebase/sessions/TimeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;->get()Lcom/google/firebase/sessions/TimeProvider;

    move-result-object v0

    return-object v0
.end method
