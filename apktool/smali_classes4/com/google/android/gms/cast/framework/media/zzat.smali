.class final Lcom/google/android/gms/cast/framework/media/zzat;
.super Lcom/google/android/gms/cast/framework/media/zzbk;
.source "SourceFile"


# instance fields
.field final synthetic zza:[I

.field final synthetic zzb:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzb:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zza:[I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/zzbk;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Z)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zzb:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/cast/internal/zzaq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzbk;->zzb()Lcom/google/android/gms/cast/internal/zzas;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzat;->zza:[I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzaq;->zzv(Lcom/google/android/gms/cast/internal/zzas;[I)J

    return-void
.end method
