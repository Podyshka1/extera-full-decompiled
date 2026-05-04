.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    const-string v0, "MessengerIpcClient"

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received response to request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MessengerIpcClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzp;->zze:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cloudmessaging/zzs;

    if-nez v2, :cond_1

    const-string p1, "MessengerIpcClient"

    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response for unknown request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/zzp;->zze:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzp;->zzf()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "unsupported"

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Not supported by GmsCore"

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzt;

    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 12
    invoke-direct {v0, v1, p1, v3}, Lcom/google/android/gms/cloudmessaging/zzt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cloudmessaging/zzs;->zzc(Lcom/google/android/gms/cloudmessaging/zzt;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zza(Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 9
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
