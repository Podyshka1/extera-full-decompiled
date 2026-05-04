.class final Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;
.super Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzay;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

.field private final transient zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzay;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbv;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zza:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzax;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzbo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzav;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_subject_segmentation/zzaq;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
