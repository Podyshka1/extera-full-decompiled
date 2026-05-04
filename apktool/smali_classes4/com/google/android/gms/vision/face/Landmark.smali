.class public final Lcom/google/android/gms/vision/face/Landmark;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/graphics/PointF;

.field private final zzb:I


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/vision/face/Landmark;->zza:Landroid/graphics/PointF;

    .line 5
    iput p2, p0, Lcom/google/android/gms/vision/face/Landmark;->zzb:I

    return-void
.end method


# virtual methods
.method public final getPosition()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/face/Landmark;->zza:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/vision/face/Landmark;->zzb:I

    return v0
.end method
