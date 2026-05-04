.class public final Lcom/google/android/gms/internal/cast/zzwe;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/cast/zzuf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/cast/zzuf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzuf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/cast/zzwe;)Lcom/google/android/gms/internal/cast/zzuf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    check-cast v0, Lcom/google/android/gms/internal/cast/zzue;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzue;->zzf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzwd;-><init>(Lcom/google/android/gms/internal/cast/zzwe;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cast/zzwc;-><init>(Lcom/google/android/gms/internal/cast/zzwe;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/cast/zzuf;
    .locals 0

    return-object p0
.end method

.method public final zze(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzuf;->zze(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzwe;->zza:Lcom/google/android/gms/internal/cast/zzuf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzuf;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
