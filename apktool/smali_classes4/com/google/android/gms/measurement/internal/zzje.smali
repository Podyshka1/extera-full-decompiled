.class abstract Lcom/google/android/gms/measurement/internal/zzje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjg;


# instance fields
.field protected final zzu:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    return-void
.end method


# virtual methods
.method public final zzaU()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzgu;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzhz;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzaX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzaX()V

    return-void
.end method

.method public final zzaY()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaZ()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    return-void
.end method
