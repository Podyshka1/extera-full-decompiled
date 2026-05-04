.class public final Lcom/google/firebase/sessions/SessionGenerator_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final timeProvider:Ljavax/inject/Provider;

.field private final uuidGeneratorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionGenerator_Factory;->timeProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionGenerator_Factory;->uuidGeneratorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionGenerator_Factory;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/sessions/SessionGenerator_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionGenerator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)Lcom/google/firebase/sessions/SessionGenerator;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/firebase/sessions/SessionGenerator;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/SessionGenerator;-><init>(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionGenerator;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionGenerator_Factory;->timeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/TimeProvider;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionGenerator_Factory;->uuidGeneratorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/UuidGenerator;

    invoke-static {v0, v1}, Lcom/google/firebase/sessions/SessionGenerator_Factory;->newInstance(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionGenerator_Factory;->get()Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object v0

    return-object v0
.end method
