.class public Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;
.super Landroidx/camera/core/MeteringPointFactory;
.source "SourceFile"


# instance fields
.field private final mHeight:F

.field private final mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroidx/camera/core/MeteringPointFactory;-><init>()V

    .line 69
    iput p1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    .line 70
    iput p2, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    return-void
.end method


# virtual methods
.method protected convertPoint(FF)Landroid/graphics/PointF;
    .locals 2

    .line 118
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mWidth:F

    div-float/2addr p1, v1

    iget v1, p0, Landroidx/camera/core/SurfaceOrientedMeteringPointFactory;->mHeight:F

    div-float/2addr p2, v1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
