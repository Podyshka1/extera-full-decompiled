.class final Lcom/google/android/gms/internal/measurement/zzoa;
.super Lcom/google/android/gms/internal/measurement/zzoe;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzoe;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoe;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoe;->zzc()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoe;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzoe;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzob;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzob;->zza()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v1

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()V

    return-void
.end method
