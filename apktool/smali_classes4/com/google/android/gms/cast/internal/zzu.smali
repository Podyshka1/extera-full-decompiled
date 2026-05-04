.class final Lcom/google/android/gms/cast/internal/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/cast/internal/zzw;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzv;Lcom/google/android/gms/cast/internal/zzw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzu;->zza:Lcom/google/android/gms/cast/internal/zzw;

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzu;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/internal/zzu;->zzc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zza:Lcom/google/android/gms/cast/internal/zzw;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzw;->zzA(Lcom/google/android/gms/cast/internal/zzw;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzu;->zza:Lcom/google/android/gms/cast/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/cast/internal/zzw;->zzA(Lcom/google/android/gms/cast/internal/zzw;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzu;->zzb:Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zza:Lcom/google/android/gms/cast/internal/zzw;

    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzu;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzu;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzw;->zzv(Lcom/google/android/gms/cast/internal/zzw;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 4
    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzu;->zzb:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/cast/internal/zzw;->zzw()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Discarded message for unknown namespace \'%s\'"

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
