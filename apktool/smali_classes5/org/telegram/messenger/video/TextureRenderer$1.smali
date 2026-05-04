.class Lorg/telegram/messenger/video/TextureRenderer$1;
.super Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/TextureRenderer;->initTextEntity(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/TextureRenderer;

.field final synthetic val$e:Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

.field final synthetic val$editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

.field final synthetic val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/TextureRenderer;JFLandroid/graphics/Paint$FontMetricsInt;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;)V
    .locals 0

    .line 1319
    iput-object p1, p0, Lorg/telegram/messenger/video/TextureRenderer$1;->this$0:Lorg/telegram/messenger/video/TextureRenderer;

    iput-object p6, p0, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iput-object p7, p0, Lorg/telegram/messenger/video/TextureRenderer$1;->val$editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iput-object p8, p0, Lorg/telegram/messenger/video/TextureRenderer$1;->val$e:Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4

    .line 1322
    invoke-super/range {p0 .. p9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    move-object p1, p0

    .line 1324
    iget-object p2, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p2, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget-object p3, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p5

    iget p4, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float/2addr p3, p4

    iget-object p4, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p7, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float p7, p7

    div-float/2addr p3, p7

    iget p7, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr p3, p7

    add-float/2addr p2, p3

    .line 1325
    iget p3, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iget-object p4, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    add-int/2addr p4, p6

    int-to-float p4, p4

    sub-int/2addr p8, p6

    int-to-float p6, p8

    div-float/2addr p6, p5

    add-float/2addr p4, p6

    iget-object p6, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p7, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float p7, p7

    div-float/2addr p4, p7

    iget p7, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr p4, p7

    add-float/2addr p3, p4

    .line 1327
    iget p4, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    const/4 p8, 0x0

    cmpl-float p4, p4, p8

    if-eqz p4, :cond_0

    .line 1328
    iget p4, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iget p8, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    div-float/2addr p8, p5

    add-float/2addr p4, p8

    .line 1329
    iget p6, p6, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    div-float/2addr p7, p5

    add-float/2addr p6, p7

    .line 1330
    iget-object p7, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->this$0:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-static {p7}, Lorg/telegram/messenger/video/TextureRenderer;->-$$Nest$fgettransformedWidth(Lorg/telegram/messenger/video/TextureRenderer;)I

    move-result p7

    int-to-float p7, p7

    iget-object p8, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->this$0:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-static {p8}, Lorg/telegram/messenger/video/TextureRenderer;->-$$Nest$fgettransformedHeight(Lorg/telegram/messenger/video/TextureRenderer;)I

    move-result p8

    int-to-float p8, p8

    div-float/2addr p7, p8

    sub-float/2addr p2, p4

    sub-float/2addr p3, p6

    div-float/2addr p3, p7

    float-to-double p8, p2

    .line 1333
    iget-object p2, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p2, p2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float p2, p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p8

    float-to-double p2, p3

    iget-object v2, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    add-float/2addr p4, v0

    .line 1334
    iget-object v0, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p8, v0

    iget-object v0, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget v0, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    add-double/2addr p8, p2

    double-to-float p2, p8

    mul-float/2addr p2, p7

    add-float p3, p2, p6

    move p2, p4

    .line 1337
    :cond_0
    iget-object p4, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$e:Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    iget-object p4, p4, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p6, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p7, p6

    iget-object p8, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->val$entity:Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget p9, p8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    int-to-float p9, p9

    div-float/2addr p7, p9

    iget p9, p8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    mul-float/2addr p7, p9

    iput p7, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    int-to-float p6, p6

    .line 1338
    iget p9, p8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    int-to-float p9, p9

    div-float/2addr p6, p9

    iget p9, p8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    mul-float/2addr p6, p9

    iput p6, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    div-float/2addr p7, p5

    sub-float/2addr p2, p7

    .line 1339
    iput p2, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    div-float/2addr p6, p5

    sub-float/2addr p3, p6

    .line 1340
    iput p3, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1341
    iget p2, p8, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput p2, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 1343
    iget-object p2, p4, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_1

    .line 1344
    iget-object p2, p1, Lorg/telegram/messenger/video/TextureRenderer$1;->this$0:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-static {p2, p4}, Lorg/telegram/messenger/video/TextureRenderer;->-$$Nest$minitStickerEntity(Lorg/telegram/messenger/video/TextureRenderer;Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;)V

    :cond_1
    return-void
.end method
