.class public final Lcom/google/firebase/sessions/SessionDataSerializer_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final sessionGeneratorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;->sessionGeneratorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionDataSerializer_Factory;
    .locals 1

    .line 34
    new-instance v0, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/SessionGenerator;)Lcom/google/firebase/sessions/SessionDataSerializer;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/sessions/SessionDataSerializer;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionDataSerializer;-><init>(Lcom/google/firebase/sessions/SessionGenerator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionDataSerializer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;->sessionGeneratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SessionGenerator;

    invoke-static {v0}, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;->newInstance(Lcom/google/firebase/sessions/SessionGenerator;)Lcom/google/firebase/sessions/SessionDataSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDataSerializer_Factory;->get()Lcom/google/firebase/sessions/SessionDataSerializer;

    move-result-object v0

    return-object v0
.end method
