.class Lorg/telegram/ui/Components/TagEditCell$6;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TagEditCell;->showInfoSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private textWidth:F

.field final synthetic val$bgPaint:Landroid/graphics/Paint;

.field final synthetic val$color:I

.field final synthetic val$rankStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/graphics/Paint;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$rankStr:Ljava/lang/String;

    iput p2, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$color:I

    iput-object p3, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$bgPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12

    move-object/from16 p2, p9

    add-int v0, p6, p8

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x41980000    # 19.0f

    .line 409
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    .line 410
    iget v3, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$color:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    div-float v9, v2, v1

    sub-float v6, v0, v9

    .line 411
    iget v1, p0, Lorg/telegram/ui/Components/TagEditCell$6;->textWidth:F

    add-float v1, p5, v1

    const v2, 0x413547ae    # 11.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v7, v1, v2

    add-float v8, v0, v9

    iget-object v11, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$bgPaint:Landroid/graphics/Paint;

    move v10, v9

    move-object v4, p1

    move/from16 v5, p5

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$rankStr:Ljava/lang/String;

    const v1, 0x40b51eb8    # 5.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    add-float v1, p5, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, p8, v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const p2, 0x413547ae    # 11.33f

    .line 405
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/TagEditCell$6;->val$rankStr:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/TagEditCell$6;->textWidth:F

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method
