.class public final synthetic Lcom/google/android/gms/internal/cast/zzaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzbb;

.field public final synthetic zzb:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final synthetic zzc:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbb;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzb:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzc:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaz;->zza:Lcom/google/android/gms/internal/cast/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzb:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzaz;->zzc:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/cast/zzbb;->zza(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
