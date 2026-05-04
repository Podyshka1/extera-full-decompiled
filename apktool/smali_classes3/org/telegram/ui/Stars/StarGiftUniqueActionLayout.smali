.class public Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;
    }
.end annotation


# instance fields
.field action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

.field private attached:Z

.field private backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final backgroundRect:Landroid/graphics/RectF;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private burned:Z

.field private final buttonBackgroundPaint:Landroid/graphics/Paint;

.field private final buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private buttonHeight:F

.field private final buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final buttonPath:Landroid/graphics/Path;

.field private final buttonRect:Landroid/graphics/RectF;

.field private buttonText:Lorg/telegram/ui/Components/Text;

.field private buttonY:F

.field private final currentAccount:I

.field currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private final emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private gradient:Landroid/graphics/RadialGradient;

.field private gradientRadius:I

.field height:I

.field public final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final matrix:Landroid/graphics/Matrix;

.field private model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

.field private nameWidth:F

.field private pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

.field public repost:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

.field private subtitle:Lorg/telegram/ui/Components/Text;

.field private subtitleY:F

.field private final table:Ljava/util/ArrayList;

.field private title:Lorg/telegram/ui/Components/Text;

.field private titleY:F

.field private valueWidth:F

.field private final view:Lorg/telegram/ui/Cells/ChatActionCell;

.field width:I


# direct methods
.method public constructor <init>(ILorg/telegram/ui/Cells/ChatActionCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    .line 101
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    .line 102
    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 103
    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 105
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;-><init>(Landroid/view/View;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    .line 106
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 107
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 108
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 109
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p3, 0x41e00000    # 28.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 300
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v1, v8

    .line 302
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    .line 304
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/high16 v10, -0x1000000

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradientRadius:I

    if-eq v4, v1, :cond_1

    .line 305
    :cond_0
    new-instance v11, Landroid/graphics/RadialGradient;

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradientRadius:I

    int-to-float v14, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    or-int/2addr v4, v10

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    or-int/2addr v1, v10

    filled-new-array {v4, v1}, [I

    move-result-object v15

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    .line 307
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 309
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v9, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 310
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 313
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 315
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 316
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3c4ccccd    # 0.0125f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 319
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x42820000    # 65.0f

    .line 323
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v1, :cond_3

    .line 325
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    or-int/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 327
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stars/StarGiftPatterns;->drawPattern(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;FFFF)V

    move-object v2, v1

    .line 328
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 330
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    sub-float v4, v9, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v5, v6, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 331
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    const/4 v1, -0x1

    const v3, 0x3f19999a    # 0.6f

    .line 333
    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    .line 334
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v3, :cond_4

    .line 335
    iget v1, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    or-int/2addr v1, v10

    :cond_4
    move v7, v1

    .line 338
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v3

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 339
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v9, v3

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->titleY:F

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 341
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->getWidth()F

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 342
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float v3, v9, v2

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitleY:F

    move-object/from16 v2, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 344
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    add-float v11, v1, v2

    .line 345
    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v13, :cond_5

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v14, v1, 0x1

    move-object v15, v2

    check-cast v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    .line 346
    iget-object v1, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    div-float v2, v11, v8

    sub-float v16, v9, v2

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    add-float v2, v16, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    sub-float v3, v2, v3

    iget v4, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 347
    iget-object v1, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    add-float v16, v16, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v16, v2

    iget v4, v15, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->y:F

    move v2, v5

    const/4 v5, -0x1

    move v15, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    move v1, v14

    move v5, v15

    goto :goto_0

    :cond_5
    move-object/from16 v2, p1

    move v15, v5

    .line 350
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v1, :cond_6

    .line 351
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    sub-float v3, v9, v3

    iget v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v6, v4

    div-float/2addr v6, v8

    add-float/2addr v9, v6

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    add-float/2addr v4, v6

    invoke-virtual {v1, v3, v5, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 353
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    div-float v5, v4, v8

    div-float/2addr v4, v8

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 355
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    const v3, 0x3e051eb8    # 0.13f

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v3, 0x3d99999a    # 0.075f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    .line 358
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 359
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 360
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 362
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    const v4, 0x423aae14    # 46.67f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    const v6, 0x3faa3d71    # 1.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v7, v6

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {v1, v3, v5, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setTextColor(I)V

    .line 364
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public drawOutbounds(Landroid/graphics/Canvas;)V
    .locals 8

    .line 371
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3c4ccccd    # 0.0125f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 379
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d99999a    # 0.075f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonParticles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/4 v1, -0x1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 388
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    .line 389
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidateOutbounds()V

    return-void
.end method

.method public getHeight()F
    .locals 1

    .line 281
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->height:I

    int-to-float v0, v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 277
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v0, v0

    return v0
.end method

.method public has()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(FFLandroid/view/MotionEvent;)Z
    .locals 9

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 396
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    .line 397
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 399
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_2

    .line 400
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 402
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_2

    .line 403
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_9

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto/16 :goto_2

    .line 406
    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 407
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->burned:Z

    if-eqz p1, :cond_5

    .line 408
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 410
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->fire_on:I

    sget p3, Lorg/telegram/messenger/R$string;->UniqueGiftNotFoundBurned:I

    .line 411
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 412
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    .line 415
    :cond_5
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->view:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 416
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    .line 419
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 422
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 423
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1

    .line 427
    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v1
.end method

.method public set(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 117
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 120
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-eqz v5, :cond_0

    .line 121
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 124
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->refunded:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v5, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez v5, :cond_2

    :cond_1
    move-object v4, v3

    .line 127
    :cond_2
    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->attached:Z

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    if-nez v5, :cond_3

    .line 128
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 129
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 131
    :cond_3
    iput-object v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->action:Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    .line 132
    iget-boolean v7, v1, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    iput-boolean v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v4, :cond_5

    return-void

    .line 137
    :cond_5
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 138
    iget-object v8, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 139
    iget-object v8, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iput-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 140
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 141
    iget-object v9, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iput-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 143
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backgroundPaint:Landroid/graphics/Paint;

    iput-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 144
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v9, :cond_6

    .line 145
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v9, v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v9, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_2

    .line 147
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v9, v3, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 149
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v2, :cond_9

    if-eqz v8, :cond_7

    iget-object v3, v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v8, v2

    if-eqz v2, :cond_9

    .line 150
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v2, :cond_8

    .line 151
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartLottieAnimation(Z)V

    .line 152
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 153
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_3

    .line 155
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeatCount(I)V

    .line 156
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    .line 157
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 159
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v8, 0x6e

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/Stars/StarsIntroActivity;->setGiftImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 161
    :cond_9
    iget-boolean v2, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->burned:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->burned:Z

    const/16 v3, 0xb

    if-eqz v2, :cond_a

    .line 162
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setColor(I)V

    .line 163
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    sget v8, Lorg/telegram/messenger/R$string;->Gift2UniqueRibbonBurned:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8, v6}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setText(ILjava/lang/CharSequence;Z)V

    goto :goto_4

    .line 165
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-virtual {v2, v8, v6, v5}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;ZZ)V

    .line 166
    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->ribbon:Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;

    sget v8, Lorg/telegram/messenger/R$string;->Gift2UniqueRibbon:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8, v6}, Lorg/telegram/ui/Gifts/GiftSheet$RibbonDrawable;->setText(ILjava/lang/CharSequence;Z)V

    .line 169
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-eqz v2, :cond_b

    const/high16 v2, 0x43480000    # 200.0f

    .line 170
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    goto :goto_6

    .line 172
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getMinTabletSide()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    goto :goto_5

    :cond_c
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f1eb852    # 0.62f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    :goto_5
    float-to-int v2, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    sub-int/2addr v3, v8

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v8

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    .line 173
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_d

    .line 174
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    .line 176
    :cond_d
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    .line 179
    :goto_6
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->width:I

    int-to-float v2, v2

    .line 182
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    .line 183
    iget-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->upgrade:Z

    xor-int/2addr v8, v6

    if-ne v8, v3, :cond_e

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v8

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    .line 184
    :goto_7
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_f

    .line 185
    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    .line 187
    :cond_f
    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x41200000    # 10.0f

    .line 189
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    add-float/2addr v9, v10

    const/high16 v11, 0x42dc0000    # 110.0f

    .line 190
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    const v11, 0x411547ae    # 9.33f

    .line 191
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 192
    iget-boolean v11, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v12, 0x41600000    # 14.0f

    if-eqz v11, :cond_10

    .line 193
    new-instance v1, Lorg/telegram/ui/Components/Text;

    iget-object v3, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto/16 :goto_9

    .line 194
    :cond_10
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v11, :cond_15

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_8

    .line 196
    :cond_11
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v15

    cmp-long v1, v13, v15

    if-nez v1, :cond_14

    .line 197
    iget-boolean v1, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->crafted:Z

    if-eqz v1, :cond_12

    .line 198
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionCraftedTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto :goto_9

    .line 199
    :cond_12
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGiftUnique;->resale_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v1, :cond_13

    .line 200
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionPurchasedTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto :goto_9

    .line 202
    :cond_13
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2ActionUpgradedTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto :goto_9

    .line 205
    :cond_14
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v4, Lorg/telegram/messenger/R$string;->Gift2UniqueTitle:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    goto :goto_9

    .line 195
    :cond_15
    :goto_8
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v3, Lorg/telegram/messenger/R$string;->Gift2UniqueTitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v3, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    .line 207
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->titleY:F

    .line 208
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->title:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    const/high16 v1, 0x40400000    # 3.0f

    .line 209
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 210
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v4, 0x41400000    # 12.0f

    if-eqz v1, :cond_16

    .line 211
    new-instance v1, Lorg/telegram/ui/Components/Text;

    const-string v5, "Gift2CollectionNumber"

    iget v6, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    goto :goto_a

    .line 213
    :cond_16
    new-instance v1, Lorg/telegram/ui/Components/Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, v6

    const/16 v11, 0x2c

    invoke-static {v6, v7, v11}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    .line 215
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitleY:F

    .line 216
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->subtitle:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    .line 217
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    const/high16 v3, 0x41300000    # 11.0f

    if-eqz v1, :cond_17

    move v1, v12

    goto :goto_b

    :cond_17
    move v1, v3

    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 219
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 220
    iput v10, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    .line 221
    iput v10, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    .line 223
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x40c00000    # 6.0f

    if-eqz v1, :cond_19

    .line 224
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 225
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 227
    :cond_18
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->model:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v6, v7}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 228
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float v7, v2, v4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 230
    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v10, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    .line 231
    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 232
    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v7, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    .line 233
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    .line 235
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    if-eqz v1, :cond_1b

    .line 236
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 237
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 239
    :cond_1a
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v6, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->backdrop:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    iget-object v7, v7, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v6, v7}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 240
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float v7, v2, v4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 242
    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v10, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    .line 243
    iget-object v6, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 244
    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v7, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    .line 245
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    .line 247
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    if-eqz v1, :cond_1d

    .line 248
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 249
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 251
    :cond_1c
    new-instance v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;

    sget v5, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->pattern:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v5, v6}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;-><init>(FLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->table:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    mul-float/2addr v2, v4

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 254
    iget v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    iget-object v5, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->name:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->nameWidth:F

    .line 255
    iget-object v4, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    .line 256
    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    iget-object v4, v1, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->value:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->valueWidth:F

    .line 257
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout$Row;->getHeight()F

    move-result v1

    add-float/2addr v9, v1

    :cond_1d
    const v1, 0x413a8f5c    # 11.66f

    .line 260
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    .line 261
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->repost:Z

    if-nez v1, :cond_1e

    .line 262
    iput v9, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonY:F

    .line 263
    new-instance v1, Lorg/telegram/ui/Components/Text;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2UniqueView:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v1, v2, v12, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonText:Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 264
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->buttonHeight:F

    add-float/2addr v9, v1

    .line 265
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_c
    int-to-float v1, v1

    add-float/2addr v9, v1

    goto :goto_d

    .line 267
    :cond_1e
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_c

    :goto_d
    float-to-int v1, v9

    .line 269
    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftUniqueActionLayout;->height:I

    return-void
.end method
