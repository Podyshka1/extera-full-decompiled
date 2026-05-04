.class public Lorg/telegram/ui/Components/Paint/Brush$Arrow;
.super Lorg/telegram/ui/Components/Paint/Brush;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Brush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arrow"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Brush;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultColor()I
    .locals 1

    const/16 v0, -0x7600

    return v0
.end method

.method public getDefaultWeight()F
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 224
    sget v0, Lorg/telegram/messenger/R$raw;->photo_arrow:I

    return v0
.end method

.method public getSmoothThicknessRate()F
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method
