.class final Lcom/google/android/gms/cast/framework/media/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/framework/media/zzbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v7, p4

    :try_start_1
    invoke-direct {v2, v7}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    move-object/from16 v4, p5

    instance-of v5, v4, Lcom/google/android/gms/cast/internal/zzap;

    const/4 v6, 0x0

    if-eq v3, v5, :cond_0

    move-object v4, v6

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    move-object v3, v4

    check-cast v3, Lcom/google/android/gms/cast/internal/zzap;

    iget-object v3, v3, Lcom/google/android/gms/cast/internal/zzap;->zza:Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_0
    if-eqz v4, :cond_2

    check-cast v4, Lcom/google/android/gms/cast/internal/zzap;

    iget-object v6, v4, Lcom/google/android/gms/cast/internal/zzap;->zzb:Lcom/google/android/gms/cast/MediaError;

    :cond_2
    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/cast/framework/media/zzbl;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;Lcom/google/android/gms/cast/MediaError;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v7, p4

    .line 2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Result already set when calling onRequestCompleted"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbk;->zzg:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    move-object v4, p1

    move-wide v5, p2

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 4
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    move/from16 v7, p4

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final zzb(Ljava/lang/String;JJJ)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x837

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/cast/framework/media/zzbj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/cast/framework/media/zzbj;-><init>(Lcom/google/android/gms/cast/framework/media/zzbk;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Result already set when calling onRequestReplaced"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzbi;->zza:Lcom/google/android/gms/cast/framework/media/zzbk;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbk;->zzg:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzm(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    const/16 v6, 0x837

    move-object v3, p1

    move-wide v4, p2

    move-wide v7, p4

    move-wide/from16 v9, p6

    .line 4
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->zza(Ljava/lang/String;JIJJ)V

    goto :goto_1

    :cond_0
    return-void
.end method
