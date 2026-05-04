.class public final synthetic Lcom/google/android/gms/cast/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cast/zzbs;

.field public final synthetic zzb:Lcom/google/android/gms/cast/internal/zzab;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbs;Lcom/google/android/gms/cast/internal/zzab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbl;->zza:Lcom/google/android/gms/cast/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbl;->zzb:Lcom/google/android/gms/cast/internal/zzab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->zza:Lcom/google/android/gms/cast/zzbs;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzbs;->zza:Lcom/google/android/gms/cast/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbl;->zzb:Lcom/google/android/gms/cast/internal/zzab;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/zzbt;->zzA(Lcom/google/android/gms/cast/zzbt;Lcom/google/android/gms/cast/internal/zzab;)V

    return-void
.end method
