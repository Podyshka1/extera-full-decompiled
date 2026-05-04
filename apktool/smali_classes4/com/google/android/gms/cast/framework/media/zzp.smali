.class public final synthetic Lcom/google/android/gms/cast/framework/media/zzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzp;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzp;->zza:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    check-cast p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzn(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;)V

    return-void
.end method
