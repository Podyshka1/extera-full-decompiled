.class final Lcom/google/android/gms/measurement/internal/zzlv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlu;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlu;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzmb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmb;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlu;Lcom/google/android/gms/measurement/internal/zzlu;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzb:Lcom/google/android/gms/measurement/internal/zzlu;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzc:Lcom/google/android/gms/measurement/internal/zzlu;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzd:J

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zze:Lcom/google/android/gms/measurement/internal/zzmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zze:Lcom/google/android/gms/measurement/internal/zzmb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzb:Lcom/google/android/gms/measurement/internal/zzlu;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzc:Lcom/google/android/gms/measurement/internal/zzlu;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzlv;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzmb;->zzt(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzlu;Lcom/google/android/gms/measurement/internal/zzlu;J)V

    return-void
.end method
