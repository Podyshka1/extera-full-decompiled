.class public abstract Landroidx/graphics/shapes/PointKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final clockwise-ybeJwSQ(JJ)Z
    .locals 2

    .line 58
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result p1

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final div-so9K2fw(JF)J
    .locals 1

    .line 108
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    div-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    div-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final dotProduct-5P9i7ZU(JFF)F
    .locals 1

    .line 51
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    return v0
.end method

.method public static final dotProduct-ybeJwSQ(JJ)F
    .locals 2

    .line 49
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final getDirection-DnnuFBc(J)J
    .locals 2

    .line 62
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getDistance-DnnuFBc(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 64
    invoke-static {p0, p1, v0}, Landroidx/graphics/shapes/PointKt;->div-so9K2fw(JF)J

    move-result-wide p0

    return-wide p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the direction of a 0-length vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getDistance-DnnuFBc(J)F
    .locals 2

    .line 40
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final getX-DnnuFBc(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final getY-DnnuFBc(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final interpolate-dLqxh1s(JJF)J
    .locals 2

    .line 132
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final minus-ybeJwSQ(JJ)J
    .locals 2

    .line 84
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final plus-ybeJwSQ(JJ)J
    .locals 2

    .line 92
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p1

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final times-so9K2fw(JF)J
    .locals 1

    .line 100
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {v0, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J
    .locals 2

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result p0

    invoke-interface {p2, v0, p0}, Landroidx/graphics/shapes/PointTransformer;->transform-XgqJiTY(FF)J

    move-result-wide p0

    const/16 p2, 0x20

    shr-long v0, p0, p2

    long-to-int p2, v0

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 137
    invoke-static {p2, p0}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide p0

    return-wide p0
.end method
