.class public abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;
    }
.end annotation


# instance fields
.field private animatedEmojiDrawables:Landroid/util/LongSparseArray;

.field private invalidated:Z

.field private lastChildCount:I

.field lineDrawables:Ljava/util/ArrayList;

.field lineDrawablesTmp:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field unusedArrays:Ljava/util/ArrayList;

.field unusedLineDrawables:Ljava/util/ArrayList;

.field viewsGroupedByLines:Landroid/util/SparseArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 0

    .line 4316
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 4317
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 4325
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 4326
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    .line 4327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    .line 4328
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    .line 4329
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 4332
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    const/4 p1, -0x1

    .line 4352
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lastChildCount:I

    const/4 p1, 0x1

    .line 4319
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    const/4 p1, 0x0

    .line 4320
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 4321
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    .line 4322
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    return-void
.end method

.method private release(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    .line 4925
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4926
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4928
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 2

    .line 4344
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetaccentColor(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    goto :goto_0

    .line 4347
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 4349
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4362
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    .line 4365
    iput-boolean v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    .line 4366
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 4368
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgettype(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    .line 4369
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4370
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4371
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4372
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v2, :cond_1

    .line 4373
    invoke-interface {v2, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 4375
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4376
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move v2, v8

    .line 4380
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4381
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4382
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4383
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4385
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 4387
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 4388
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    move v11, v8

    .line 4389
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    const/4 v12, 0x2

    if-eqz v2, :cond_11

    move v2, v8

    move v13, v2

    .line 4390
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v13, v3, :cond_11

    .line 4391
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4392
    instance-of v3, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_e

    .line 4393
    move-object v3, v14

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4394
    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->updatePressedProgress()V

    .line 4395
    iget v5, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    .line 4396
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetsmoothScrolling(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    .line 4397
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 4398
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/16 v16, 0x1

    .line 4399
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v10

    const/high16 v17, 0x40000000    # 2.0f

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v15

    invoke-virtual {v1, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4400
    iget-object v10, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->particlesColor:Ljava/lang/Integer;

    if-eqz v10, :cond_9

    .line 4401
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getCollectionParticles()Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    move-result-object v10

    .line 4402
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v10, v8, v8, v15, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(IIII)V

    if-nez v2, :cond_6

    .line 4404
    invoke-virtual {v10}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()Z

    move/from16 v2, v16

    .line 4407
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4408
    rem-int/lit8 v4, v5, 0x6

    if-ne v4, v12, :cond_7

    const/high16 v15, -0x40800000    # -1.0f

    goto :goto_4

    :cond_7
    const/high16 v15, 0x3f800000    # 1.0f

    :goto_4
    if-ne v4, v12, :cond_8

    const/high16 v4, -0x40800000    # -1.0f

    :goto_5
    move/from16 v18, v12

    goto :goto_6

    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_5

    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v17

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    invoke-virtual {v1, v15, v4, v12, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4409
    rem-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x5a

    int-to-float v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v17

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    invoke-virtual {v1, v4, v5, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4410
    iget-object v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->particlesColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v1, v4}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    .line 4411
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_9
    move/from16 v18, v12

    .line 4413
    :goto_7
    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawSelected(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 4414
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4416
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 4417
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v10, v12

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v12, v15

    invoke-virtual {v4, v5, v8, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4419
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xff

    int-to-float v8, v5

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v10

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4420
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4421
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    if-nez v7, :cond_c

    .line 4425
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 4426
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    :goto_8
    move-object v7, v4

    goto :goto_9

    .line 4428
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 4430
    :goto_9
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4432
    :cond_c
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4433
    iget-object v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 4434
    iget-object v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v4, :cond_d

    iget-object v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v4, :cond_d

    .line 4435
    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_d
    :goto_a
    move v8, v2

    goto :goto_b

    :cond_e
    move/from16 v18, v12

    const/16 v16, 0x1

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_a

    :goto_b
    if-eqz v11, :cond_10

    if-eqz v14, :cond_10

    .line 4440
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 4441
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromButtonTranslate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    move/from16 v4, v16

    :goto_c
    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_10

    .line 4442
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v6

    sub-long/2addr v3, v6

    long-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    cmpg-float v3, v2, v4

    if-gez v3, :cond_10

    .line 4444
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float v10, v4, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    move v4, v6

    move v6, v2

    move v2, v3

    move v3, v5

    move v5, v7

    const/16 v7, 0x1f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4445
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromButtonTranslate(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v10, v2

    add-float/2addr v10, v2

    .line 4447
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v17

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    invoke-virtual {v1, v10, v10, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4448
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4449
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    add-int/lit8 v13, v13, 0x1

    move v2, v8

    move/from16 v12, v18

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_11
    move/from16 v18, v12

    const/16 v16, 0x1

    .line 4456
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4457
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4458
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v8, 0x0

    .line 4461
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    if-ge v8, v2, :cond_17

    .line 4462
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 4463
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4464
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    const/4 v10, 0x0

    .line 4466
    :goto_e
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    .line 4467
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    iget v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->position:I

    if-ne v11, v6, :cond_12

    .line 4468
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    .line 4469
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_13
    :goto_f
    if-nez v5, :cond_15

    .line 4474
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    .line 4475
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    goto :goto_10

    .line 4477
    :cond_14
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)V

    const/4 v10, 0x7

    .line 4478
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    .line 4480
    :goto_10
    iput v6, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->position:I

    .line 4481
    invoke-virtual {v5}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 4483
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4484
    iput-object v2, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 4485
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4486
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4487
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    .line 4488
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    .line 4489
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v2, :cond_16

    if-lez v6, :cond_16

    .line 4491
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    move/from16 v19, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    move-object v1, v2

    .line 4493
    :cond_16
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_d

    :cond_17
    const/4 v6, 0x0

    .line 4496
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_19

    .line 4497
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_18

    .line 4498
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4499
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    iput-object v5, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 4500
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_12

    .line 4502
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 4505
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    .line 4507
    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v6, v2, :cond_20

    .line 4508
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4509
    instance-of v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_1e

    .line 4510
    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4511
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1c

    .line 4512
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4514
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 4515
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    .line 4513
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4518
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v4, :cond_1a

    .line 4519
    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    goto :goto_14

    .line 4521
    :cond_1a
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 4523
    :goto_14
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->done()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 4524
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 4526
    :cond_1b
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4527
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4529
    :cond_1c
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1d

    .line 4530
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x41880000    # 17.0f

    .line 4531
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 4533
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    .line 4534
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    int-to-float v5, v5

    .line 4532
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4536
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4537
    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->emojiDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4538
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_15

    :cond_1d
    const/4 v5, 0x0

    goto :goto_15

    :cond_1e
    const/4 v5, 0x0

    if-eqz v2, :cond_1f

    .line 4540
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v3

    if-eq v2, v3, :cond_1f

    .line 4541
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4542
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4543
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4544
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_1f
    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    .line 4548
    :cond_20
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4549
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->exec()V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 4339
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 4941
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4944
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4947
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    .line 4948
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 4953
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4956
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .line 4933
    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4936
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 4907
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 4908
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-ne p0, v1, :cond_0

    .line 4909
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 4915
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 4916
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-ne p0, v1, :cond_0

    .line 4917
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 4919
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    .line 4920
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    .line 4921
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 4356
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4357
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method
