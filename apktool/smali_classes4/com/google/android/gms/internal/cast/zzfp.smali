.class final Lcom/google/android/gms/internal/cast/zzfp;
.super Lcom/google/android/gms/internal/cast/zzfq;
.source "SourceFile"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/cast/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzfq;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzfq;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/cast/zzfp;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cast/zzez;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzfq;->zzh(II)Lcom/google/android/gms/internal/cast/zzfq;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzfm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzfm;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzfm;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/cast/zzfq;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/cast/zzez;->zzd(III)V

    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfp;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzfp;->zzc:Lcom/google/android/gms/internal/cast/zzfq;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/cast/zzfq;->zzh(II)Lcom/google/android/gms/internal/cast/zzfq;

    move-result-object p1

    return-object p1
.end method
