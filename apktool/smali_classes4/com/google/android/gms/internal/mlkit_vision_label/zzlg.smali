.class public final Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/Integer;

.field private final zzb:Ljava/lang/Float;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_label/zzle;Lcom/google/android/gms/internal/mlkit_vision_label/zzlf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zza:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_label/zzle;->zzc(Lcom/google/android/gms/internal/mlkit_vision_label/zzle;)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zzb:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zzb:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zzb:Ljava/lang/Float;

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zzb:Ljava/lang/Float;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_label/zzlg;->zzb:Ljava/lang/Float;

    return-object v0
.end method
