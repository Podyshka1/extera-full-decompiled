.class public final Landroidx/camera/camera2/internal/ZoomMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/ZoomMath;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/ZoomMath;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/ZoomMath;->INSTANCE:Landroidx/camera/camera2/internal/ZoomMath;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final areFloatsEqual(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 102
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final getLinearZoomFromZoomRatio(FFF)F
    .locals 3

    .line 42
    invoke-direct {p0, p2, p3}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/ZoomMath;->nearZero$camera_camera2(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    return v2

    .line 52
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomMath;->areFloatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    div-float p1, v2, p1

    div-float p3, v2, p3

    div-float p2, v2, p2

    sub-float p1, p2, p1

    sub-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 71
    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public final nearZero$camera_camera2(F)Z
    .locals 6

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->ulp(F)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
