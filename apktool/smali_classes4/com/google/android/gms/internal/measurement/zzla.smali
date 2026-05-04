.class final Lcom/google/android/gms/internal/measurement/zzla;
.super Lcom/google/android/gms/internal/measurement/zzlb;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzlh;

.field private zzb:I

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzlh;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzlb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzla;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzb(I)B

    move-result v0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
