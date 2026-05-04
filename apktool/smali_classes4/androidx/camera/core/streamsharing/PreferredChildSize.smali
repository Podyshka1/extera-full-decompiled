.class public final Landroidx/camera/core/streamsharing/PreferredChildSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final childSizeToScale:Landroid/util/Size;

.field private final cropRectBeforeScaling:Landroid/graphics/Rect;

.field private final originalSelectedChildSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V
    .locals 1

    const-string v0, "cropRectBeforeScaling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childSizeToScale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalSelectedChildSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    .line 28
    iput-object p2, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    .line 34
    iput-object p3, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/streamsharing/PreferredChildSize;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    iget-object v3, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    iget-object v3, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    iget-object p1, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChildSizeToScale()Landroid/util/Size;
    .locals 1

    .line 28
    iget-object v0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    return-object v0
.end method

.method public final getCropRectBeforeScaling()Landroid/graphics/Rect;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getOriginalSelectedChildSize()Landroid/util/Size;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredChildSize(cropRectBeforeScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childSizeToScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalSelectedChildSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
