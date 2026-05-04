.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile zza:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfb;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;)V

    sput-object v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zza:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzlk;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/google/firebase/analytics/zzd;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/zzd;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;)V

    return-object p1
.end method


# virtual methods
.method public getFirebaseInstanceId()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 2
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :catch_2
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Firebase Installations getId Task has timed out."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resetAnalyticsData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzs()V

    return-void
.end method

.method public setAnalyticsCollectionEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzq(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->zzb:Lcom/google/android/gms/internal/measurement/zzfb;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdf;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdf;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzfb;->zzp(Lcom/google/android/gms/internal/measurement/zzdf;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
