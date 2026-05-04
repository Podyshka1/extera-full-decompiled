.class final Lcom/google/android/gms/internal/measurement/zzdr;
.super Lcom/google/android/gms/internal/measurement/zzeq;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzb:Landroid/os/Bundle;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Lcom/google/android/gms/internal/measurement/zzfb;

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;Z)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zza:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "google_analytics_force_disable_updates"

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    .line 7
    :cond_0
    :goto_0
    invoke-static {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzhu;->zzc(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Lcom/google/android/gms/internal/measurement/zzfb;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/measurement/zzfb;->zzc(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfb;->zzR(Lcom/google/android/gms/internal/measurement/zzcr;)V

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfb;->zzO()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to connect to measurement client."

    .line 18
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 11
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-ge v0, v7, :cond_5

    :cond_4
    move v14, v3

    goto :goto_2

    :cond_5
    move v14, v2

    .line 14
    :goto_2
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzdd;

    int-to-long v12, v8

    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzb:Landroid/os/Bundle;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-wide/32 v10, 0x2078d

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfb;->zzQ()Lcom/google/android/gms/internal/measurement/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcr;

    .line 17
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/measurement/zzeq;->zzh:J

    invoke-interface {v0, v4, v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcr;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdd;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzdr;->zzc:Lcom/google/android/gms/internal/measurement/zzfb;

    .line 19
    invoke-virtual {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfb;->zzN(Ljava/lang/Exception;ZZ)V

    return-void
.end method
