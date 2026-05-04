.class final Lcom/google/android/gms/internal/cast/zzdc;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/cast/zzdd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/cast/zzdd;->zzb(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cast/zzdd;->zzd(Lcom/google/android/gms/internal/cast/zzdd;Landroid/net/Network;)V

    return-void
.end method

.method public final onUnavailable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdc;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdd;->zzc(Lcom/google/android/gms/internal/cast/zzdd;)V

    return-void
.end method
