.class public final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;


# instance fields
.field final zza:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzte;->zza:Ljava/util/List;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztd;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztt;

    .line 3
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztd;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzte;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zztb;->zza(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzta;)V

    goto :goto_0

    :cond_0
    return-void
.end method
