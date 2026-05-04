.class public abstract Landroidx/graphics/shapes/CubicKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;
    .locals 3

    .line 390
    new-instance v0, Landroidx/graphics/shapes/Cubic;

    const/16 v1, 0x8

    .line 399
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    const/4 p0, 0x5

    aput p5, v1, p0

    const/4 p0, 0x6

    aput p6, v1, p0

    const/4 p0, 0x7

    aput p7, v1, p0

    .line 390
    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    return-object v0
.end method
