.class final Lcom/google/android/gms/measurement/internal/zzov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzph;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzpg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;Lcom/google/android/gms/measurement/internal/zzph;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzov;->zza:Lcom/google/android/gms/measurement/internal/zzph;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzov;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzov;->zzb:Lcom/google/android/gms/measurement/internal/zzpg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzov;->zza:Lcom/google/android/gms/measurement/internal/zzph;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzau(Lcom/google/android/gms/measurement/internal/zzph;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzc()V

    return-void
.end method
