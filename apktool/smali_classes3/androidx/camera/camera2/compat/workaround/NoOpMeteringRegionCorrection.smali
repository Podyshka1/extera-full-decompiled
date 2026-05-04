.class public final Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/MeteringRegionCorrection;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpMeteringRegionCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectedPoint(Landroidx/camera/core/MeteringPoint;I)Landroid/graphics/PointF;
    .locals 1

    const-string p2, "meteringPoint"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroidx/camera/core/MeteringPoint;->getY()F

    move-result p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method
