.class public final Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# instance fields
.field private final appInfoProvider:Ljavax/inject/Provider;

.field private final configsFetcherProvider:Ljavax/inject/Provider;

.field private final firebaseInstallationsApiProvider:Ljavax/inject/Provider;

.field private final settingsCacheProvider:Ljavax/inject/Provider;

.field private final timeProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->timeProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->firebaseInstallationsApiProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->appInfoProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->configsFetcherProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->settingsCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;
    .locals 6

    .line 56
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)Lcom/google/firebase/sessions/settings/RemoteSettings;
    .locals 6

    .line 62
    new-instance v0, Lcom/google/firebase/sessions/settings/RemoteSettings;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/settings/RemoteSettings;-><init>(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/settings/RemoteSettings;
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->timeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/TimeProvider;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->firebaseInstallationsApiProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->appInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/sessions/ApplicationInfo;

    iget-object v3, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->configsFetcherProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;

    iget-object v4, p0, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->settingsCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/sessions/settings/SettingsCache;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->newInstance(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/sessions/ApplicationInfo;Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;Lcom/google/firebase/sessions/settings/SettingsCache;)Lcom/google/firebase/sessions/settings/RemoteSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/RemoteSettings_Factory;->get()Lcom/google/firebase/sessions/settings/RemoteSettings;

    move-result-object v0

    return-object v0
.end method
