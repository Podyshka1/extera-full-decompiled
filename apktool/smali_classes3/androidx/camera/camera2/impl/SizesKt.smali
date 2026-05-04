.class public abstract Landroidx/camera/camera2/impl/SizesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final area(Landroid/util/Size;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method
