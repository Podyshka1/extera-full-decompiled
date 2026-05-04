.class public final Landroidx/camera/video/internal/config/FormatCombo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final audioMime:Ljava/lang/String;

.field private final container:I

.field private final videoMime:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    .line 32
    iput-object p2, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FormatCombo must have at least one valid track. Both videoMime and audioMime cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/FormatCombo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/FormatCombo;

    iget v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    iget v3, p1, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FormatCombo(container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoMime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->videoMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioMime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/FormatCombo;->audioMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
