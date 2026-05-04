.class public final synthetic Lcom/google/android/gms/internal/cast/zzdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzdd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzdd;Lcom/google/android/gms/internal/cast/zzcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzdb;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzdb;->zza:Lcom/google/android/gms/internal/cast/zzdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzdd;->zze()Z

    const/4 v0, 0x0

    throw v0
.end method
