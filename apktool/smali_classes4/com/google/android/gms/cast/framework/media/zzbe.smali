.class public final synthetic Lcom/google/android/gms/cast/framework/media/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/framework/media/zzbf;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/zzbf;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzbe;->zza:Lcom/google/android/gms/cast/framework/media/zzbf;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/zzbe;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/zzbe;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzbe;->zza:Lcom/google/android/gms/cast/framework/media/zzbf;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/zzbf;->zza:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzaq;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/cast/internal/zzaq;->zzP(JI)V

    return-void
.end method
