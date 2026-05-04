.class public Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/label/ImageLabeler;


# instance fields
.field private final zzb:Lcom/google/android/gms/common/Feature;


# direct methods
.method private constructor <init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/Feature;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;->zzb:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method public static newInstance(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/Feature;)Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/Feature;)V

    return-object v0
.end method


# virtual methods
.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/label/internal/ImageLabelerImpl;->zzb:Lcom/google/android/gms/common/Feature;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
