.class public final Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->appContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;
    .locals 1

    .line 34
    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings_Factory;->get()Lcom/google/firebase/sessions/settings/LocalOverrideSettings;

    move-result-object v0

    return-object v0
.end method
