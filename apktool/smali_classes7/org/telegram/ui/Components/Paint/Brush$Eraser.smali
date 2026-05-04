.class public Lorg/telegram/ui/Components/Paint/Brush$Eraser;
.super Lorg/telegram/ui/Components/Paint/Brush;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Brush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Eraser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Brush;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDefaultWeight()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 270
    sget v0, Lorg/telegram/messenger/R$raw;->photo_eraser:I

    return v0
.end method

.method public getPreviewScale()F
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    return v0
.end method

.method public getShaderName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 263
    :cond_0
    const-string p1, "brush"

    return-object p1

    .line 261
    :cond_1
    const-string p1, "compositeWithMaskEraser"

    return-object p1

    .line 259
    :cond_2
    const-string p1, "blitWithMaskEraser"

    return-object p1
.end method

.method public isEraser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
