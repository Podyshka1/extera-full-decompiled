.class Lorg/telegram/ui/Components/AudioPlayerAlert$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastMeasturedHeight:I

.field private lastMeasturedWidth:I

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iput-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 297
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->rect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 450
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 451
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$2$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$2;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 461
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 462
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/high16 v0, 0x41500000    # 13.0f

    .line 401
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 402
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 404
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 406
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v5

    add-int/2addr v4, v5

    .line 411
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$900(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v5, v6, :cond_2

    .line 412
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 413
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    sub-int/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 414
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    mul-float/2addr v6, v5

    float-to-int v0, v6

    sub-int/2addr v1, v0

    sub-int/2addr v3, v0

    add-int/2addr v4, v0

    sub-float v0, v8, v5

    goto :goto_0

    :cond_2
    move v0, v8

    .line 423
    :goto_0
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v5

    add-int/2addr v3, v5

    .line 426
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v2, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 427
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v2, v0, v8

    if-eqz v2, :cond_3

    .line 430
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v9

    add-int/2addr v9, v1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v9, v1

    int-to-float v1, v9

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x42100000    # 36.0f

    .line 437
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 438
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v1

    .line 440
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 441
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 443
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->rect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetactionBar(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    goto :goto_1

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x34

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v2, v2, 0xc4

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    goto :goto_1

    .line 374
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 378
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 382
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 359
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 360
    iget-object p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 361
    iget-object p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateEmptyViewPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 309
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 310
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 311
    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->lastMeasturedHeight:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->lastMeasturedWidth:I

    if-eq v0, v1, :cond_2

    .line 312
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetblurredView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mshowAlbumCover(Lorg/telegram/ui/Components/AudioPlayerAlert;ZZ)V

    .line 315
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->lastMeasturedWidth:I

    .line 316
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->lastMeasturedHeight:I

    :cond_2
    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->ignoreLayout:Z

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, p2, v1

    .line 322
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 325
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetblurredView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 328
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    const/16 v4, 0x34

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    const/16 v5, 0xb8

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 329
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_6

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 333
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    const/high16 v5, 0x41000000    # 8.0f

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_6

    :cond_7
    if-ge v3, v1, :cond_8

    sub-int v0, v1, v3

    goto :goto_3

    .line 336
    :cond_8
    div-int/lit8 v0, v1, 0x5

    int-to-float v0, v0

    const/high16 v3, 0x40600000    # 3.5f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v1, v0

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    .line 337
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    add-int/lit16 v3, v3, 0x14e

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    if-le v0, v3, :cond_b

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v4, v2

    :goto_5
    add-int/lit16 v4, v4, 0x14e

    int-to-float v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v1, v0

    :cond_b
    if-gez v0, :cond_d

    move v0, v2

    goto :goto_7

    .line 334
    :cond_c
    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 347
    :cond_d
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, v2

    .line 350
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_10

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_8

    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    :goto_8
    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 353
    :cond_10
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->ignoreLayout:Z

    const/high16 v0, 0x40000000    # 2.0f

    .line 354
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 387
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
