.class public final synthetic Lcom/google/android/gms/cast/zzbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/zzbt;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbt;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbd;->zza:Lcom/google/android/gms/cast/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzbd;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbd;->zza:Lcom/google/android/gms/cast/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzbd;->zzc:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/cast/internal/zzx;

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/zzbt;->zzG(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbu;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
