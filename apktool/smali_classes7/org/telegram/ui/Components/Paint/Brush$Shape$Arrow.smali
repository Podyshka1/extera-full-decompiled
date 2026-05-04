.class public Lorg/telegram/ui/Components/Paint/Brush$Shape$Arrow;
.super Lorg/telegram/ui/Components/Paint/Brush$Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Brush$Shape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arrow"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Brush$Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilledIconRes()I
    .locals 1

    .line 473
    sget v0, Lorg/telegram/messenger/R$drawable;->photo_arrowshape:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 468
    sget v0, Lorg/telegram/messenger/R$drawable;->photo_arrowshape:I

    return v0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 1

    .line 463
    sget v0, Lorg/telegram/messenger/R$string;->PaintArrow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShapeShaderType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
