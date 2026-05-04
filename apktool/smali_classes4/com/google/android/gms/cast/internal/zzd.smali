.class public abstract Lcom/google/android/gms/cast/internal/zzd;
.super Lcom/google/android/gms/cast/internal/zzp;
.source "SourceFile"


# instance fields
.field private final zzb:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "MediaControlChannel"

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzd;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final zza()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzd;->zzb:Ljava/util/List;

    return-object v0
.end method

.method protected final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzd;->zzb:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzd;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/internal/zzau;

    const/16 v3, 0x7d2

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/internal/zzau;->zzc(I)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final zzc(Lcom/google/android/gms/cast/internal/zzau;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzd;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
