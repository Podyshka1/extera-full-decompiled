.class public final synthetic Lcom/google/android/gms/internal/cast/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/cast/zzg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/cast/zzno;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzg;Lcom/google/android/gms/internal/cast/zzno;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzf;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzf;->zzb:Lcom/google/android/gms/internal/cast/zzno;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzf;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzf;->zza:Lcom/google/android/gms/internal/cast/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzf;->zzb:Lcom/google/android/gms/internal/cast/zzno;

    iget v2, p0, Lcom/google/android/gms/internal/cast/zzf;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzg;->zzd(Lcom/google/android/gms/internal/cast/zzno;I)V

    return-void
.end method
