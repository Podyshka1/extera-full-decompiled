.class public final Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;


# instance fields
.field private final metadata:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->Companion:Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getSamplingRate()Ljava/lang/Double;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_sampling_rate"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_enabled"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionRestartTimeout-FghU774()Lkotlin/time/Duration;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_sessions_restart_timeout"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateSettings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/google/firebase/sessions/settings/SettingsProvider$DefaultImpls;->updateSettings(Lcom/google/firebase/sessions/settings/SettingsProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
