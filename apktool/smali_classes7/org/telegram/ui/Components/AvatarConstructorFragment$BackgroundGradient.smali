.class public Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AvatarConstructorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundGradient"
.end annotation


# instance fields
.field color1:I

.field color2:I

.field color3:I

.field color4:I

.field public premium:Z

.field public stableId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorsCount()I
    .locals 1

    .line 1299
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 1302
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 1305
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public copy()Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;
    .locals 2

    .line 1289
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;-><init>()V

    .line 1290
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 1291
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    .line 1292
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    .line 1293
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    iput v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    .line 1294
    iget-boolean v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->premium:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->premium:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1314
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1315
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    .line 1316
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v3, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v3, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v3, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    iget p1, p1, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAverageColor()I
    .locals 3

    .line 1325
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    .line 1326
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    .line 1327
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1329
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v1, :cond_1

    .line 1330
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1332
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v1, :cond_2

    .line 1333
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1321
    iget v0, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->stableId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
