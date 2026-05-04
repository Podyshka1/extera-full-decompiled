.class final Lcom/google/android/gms/internal/cast/zzsw;
.super Lcom/google/android/gms/internal/cast/zzsy;
.source "SourceFile"


# instance fields
.field private final zzb:[B

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/cast/zzsv;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzsy;-><init>(Lcom/google/android/gms/internal/cast/zzsx;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/cast/zzsw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzb:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(I)I
    .locals 3

    iget p1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zze:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzsw;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzc:I

    if-lez v1, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzc:I

    return p1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzsw;->zzd:I

    return p1
.end method
