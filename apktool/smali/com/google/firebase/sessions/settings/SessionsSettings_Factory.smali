.class public final Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final localOverrideSettingsProvider:Ljavax/inject/Provider;

.field private final remoteSettingsProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->localOverrideSettingsProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->remoteSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;
    .locals 1

    .line 42
    new-instance v0, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/settings/SettingsProvider;Lcom/google/firebase/sessions/settings/SettingsProvider;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 1

    .line 47
    new-instance v0, Lcom/google/firebase/sessions/settings/SessionsSettings;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/settings/SessionsSettings;-><init>(Lcom/google/firebase/sessions/settings/SettingsProvider;Lcom/google/firebase/sessions/settings/SettingsProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->localOverrideSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/settings/SettingsProvider;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->remoteSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/sessions/settings/SettingsProvider;

    invoke-static {v0, v1}, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->newInstance(Lcom/google/firebase/sessions/settings/SettingsProvider;Lcom/google/firebase/sessions/settings/SettingsProvider;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/SessionsSettings_Factory;->get()Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object v0

    return-object v0
.end method
