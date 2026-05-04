.class public final Lcom/google/android/gms/internal/vision/zzlz;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzjv;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/vision/zzjv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzjv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/zzlz;)Lcom/google/android/gms/internal/vision/zzjv;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/vision/zzmb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzmb;-><init>(Lcom/google/android/gms/internal/vision/zzlz;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/vision/zzly;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzly;-><init>(Lcom/google/android/gms/internal/vision/zzlz;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzht;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzb(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzjv;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzlz;->zza:Lcom/google/android/gms/internal/vision/zzjv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjv;->zzd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/vision/zzjv;
    .locals 0

    return-object p0
.end method
