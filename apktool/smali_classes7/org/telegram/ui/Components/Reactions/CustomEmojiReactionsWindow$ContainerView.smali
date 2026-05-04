.class public Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerView"
.end annotation


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field enterTransitionOffsetX:F

.field enterTransitionOffsetY:F

.field enterTransitionScale:F

.field enterTransitionScalePx:F

.field enterTransitionScalePy:F

.field radiusTmp:[I

.field shadow:Landroid/graphics/drawable/Drawable;

.field shadowPad:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field transitionReactions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V
    .locals 3

    .line 766
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 767
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 761
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    .line 762
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    .line 763
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    .line 817
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 819
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 820
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 821
    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 822
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 823
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 825
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->clipPath:Landroid/graphics/Path;

    .line 768
    sget v0, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    .line 769
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 770
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 771
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 772
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    const v0, 0x3e051eb8    # 0.13f

    const/high16 v1, -0x1000000

    invoke-static {v1, p2, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 774
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 829
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    if-nez v3, :cond_0

    return-void

    .line 832
    :cond_0
    iget v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v11

    .line 833
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v10, v10, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 834
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v3

    const/4 v12, 0x4

    if-ne v3, v12, :cond_1

    .line 835
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 836
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v5, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateX:F

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRectTranslateY:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 838
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v5, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-static {v4, v2, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 839
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    const/4 v13, 0x5

    if-ne v2, v13, :cond_2

    const/high16 v2, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41000000    # 8.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 842
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    const v14, 0x3d4ccccd    # 0.05f

    const/high16 v15, 0x437f0000    # 255.0f

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move/from16 v17, v14

    goto :goto_2

    .line 845
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    div-float v5, v11, v14

    invoke-static {v5, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 846
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v8, v5, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v3, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget v3, v5, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    move/from16 v17, v14

    iget v14, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v14

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    invoke-virtual {v2, v6, v8, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 848
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x1

    :goto_1
    move v8, v4

    goto :goto_3

    .line 843
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$mgetBlurOffset(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)F

    move-result v6

    const/16 v7, 0xff

    const/4 v8, 0x1

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    const/4 v14, 0x1

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    move-object v1, v2

    goto :goto_1

    .line 850
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/4 v3, 0x3

    if-eqz v2, :cond_7

    .line 851
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 852
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    if-eq v2, v3, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    if-eq v2, v12, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    if-ne v2, v13, :cond_5

    goto :goto_4

    :cond_5
    move v2, v10

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_5
    sub-float/2addr v4, v2

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 853
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v5, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v15

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v6, v9, v6

    mul-float/2addr v2, v6

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v18, v15

    move/from16 v15, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 854
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 855
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 856
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_7
    move/from16 v18, v15

    move v15, v3

    .line 859
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 861
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    cmpl-float v3, v3, v17

    if-gtz v3, :cond_8

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    if-ne v2, v13, :cond_9

    .line 862
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 863
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 864
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 865
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 868
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    if-ne v2, v13, :cond_a

    .line 869
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 870
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->clipPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v8, v8, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 871
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 872
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 875
    :cond_a
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 876
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    .line 877
    iput v9, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 878
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 879
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 881
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v3, :cond_2a

    .line 882
    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v14

    :goto_7
    if-ltz v2, :cond_c

    .line 883
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_b

    .line 884
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 885
    iget-boolean v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isFirstReactions:Z

    if-eqz v4, :cond_b

    iget-object v4, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v4, :cond_b

    .line 886
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 891
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 893
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v5

    add-float/2addr v2, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v5, v9, v5

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 895
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    goto :goto_8

    :cond_d
    move v2, v10

    :goto_8
    sub-float v2, v9, v2

    .line 896
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v3, v9, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v3, v2, v9

    if-eqz v3, :cond_e

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v2, v2, v18

    float-to-int v6, v2

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 900
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 902
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_f

    move v4, v14

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    .line 903
    :goto_9
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v6

    if-eq v6, v13, :cond_11

    int-to-float v6, v3

    if-eqz v4, :cond_10

    int-to-float v4, v2

    const/high16 v7, 0x42100000    # 36.0f

    .line 904
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v15, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    mul-float/2addr v7, v15

    add-float/2addr v4, v7

    goto :goto_a

    :cond_10
    move v4, v10

    :goto_a
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v6, v4, v3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_11
    const/4 v15, -0x1

    move v2, v15

    .line 906
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_29

    if-ne v2, v15, :cond_12

    .line 909
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_c

    .line 911
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 913
    :goto_c
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ltz v4, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_14

    :cond_13
    move/from16 v23, v2

    move/from16 v22, v9

    move v13, v10

    move v14, v12

    const/16 v17, 0x0

    goto/16 :goto_1b

    .line 916
    :cond_14
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 918
    instance-of v4, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v4, :cond_28

    .line 919
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 920
    iget-object v6, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->lockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v6, :cond_15

    .line 921
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v7, v9, v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 923
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    iget-object v7, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v6, :cond_1e

    .line 936
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v17

    .line 937
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    const/high16 v19, 0x40000000    # 2.0f

    if-ne v2, v15, :cond_16

    .line 939
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    sub-float v17, v17, v7

    .line 940
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    sub-float/2addr v3, v7

    :cond_16
    move/from16 v7, v17

    .line 942
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v17

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v15, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    add-float v17, v17, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v15, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v15, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    add-float v17, v17, v15

    iget-object v15, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v15

    sub-float v17, v17, v15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v17, v17, v15

    .line 943
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v15

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v13, v13, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v15, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v13, v13, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v15, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v13, v13, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    add-float/2addr v15, v13

    iget-object v13, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    sub-float/2addr v15, v13

    .line 944
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    .line 945
    iget-boolean v14, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-nez v14, :cond_18

    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v14

    if-ne v14, v12, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    move/from16 v12, v17

    goto :goto_10

    .line 947
    :cond_18
    :goto_e
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v14}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v14

    if-ne v14, v12, :cond_19

    const v14, 0x3f5eb852    # 0.87f

    mul-float/2addr v14, v13

    const v21, 0x3ea8f5c3    # 0.33f

    .line 949
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float v17, v17, v12

    const v12, 0x3faa3d71    # 1.33f

    .line 950
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v15, v12

    goto :goto_f

    :cond_19
    move v14, v13

    .line 952
    :goto_f
    iget-boolean v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v12, :cond_1a

    const v12, 0x3f733333    # 0.95f

    mul-float/2addr v14, v12

    :cond_1a
    sub-float/2addr v13, v14

    div-float v13, v13, v19

    add-float v17, v17, v13

    add-float/2addr v15, v13

    move v13, v14

    goto :goto_d

    .line 960
    :goto_10
    iget-object v14, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v14, v14, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v7, v12, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    .line 961
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v3, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    move/from16 v21, v10

    .line 963
    iget-object v10, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v13, v10

    .line 964
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v9, v13, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    move/from16 v22, v9

    .line 965
    iget v9, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/high16 v23, 0x40c00000    # 6.0f

    if-nez v9, :cond_1b

    .line 966
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    move/from16 v24, v9

    move/from16 v23, v21

    move/from16 v25, v23

    goto :goto_12

    .line 968
    :cond_1b
    iget-boolean v9, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v9, :cond_1c

    .line 969
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    :goto_11
    move/from16 v23, v9

    move/from16 v24, v23

    move/from16 v25, v24

    goto :goto_12

    :cond_1c
    move/from16 v9, v21

    goto :goto_11

    .line 972
    :goto_12
    invoke-virtual {v1, v14, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 973
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 975
    iget v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    cmpl-float v5, v5, v21

    if-nez v5, :cond_1d

    iget v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    cmpl-float v5, v5, v21

    if-nez v5, :cond_1d

    .line 976
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v14, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v7

    sub-float/2addr v14, v12

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    move/from16 v7, v21

    invoke-static {v14, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 977
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v14, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v3

    sub-float/2addr v14, v15

    iget v3, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v14, v7, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    div-float v3, v22, v13

    .line 978
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    move/from16 v7, v22

    invoke-static {v3, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 979
    iput v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 980
    iput v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    :cond_1d
    move/from16 v3, v23

    move/from16 v5, v24

    move/from16 v7, v25

    goto :goto_13

    :cond_1e
    const/high16 v19, 0x40000000    # 2.0f

    .line 983
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v7, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v7, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    add-float/2addr v3, v7

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_13
    if-eqz v6, :cond_23

    .line 987
    iget-boolean v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v12, :cond_1f

    .line 988
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v19

    .line 989
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v13, v13, v19

    .line 990
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 991
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    sub-int v15, v15, v23

    int-to-float v15, v15

    div-float/2addr v15, v10

    .line 992
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v14, v15, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 993
    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float v10, v10, v19

    move/from16 v23, v2

    sub-float v2, v12, v10

    move/from16 v24, v10

    sub-float v10, v13, v24

    add-float v12, v12, v24

    add-float v13, v13, v24

    invoke-virtual {v15, v2, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v14, v14, v19

    const/high16 v2, 0x40800000    # 4.0f

    .line 994
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v14, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 995
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v10, v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v2, v2, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_14
    const/4 v2, 0x0

    goto :goto_15

    :cond_1f
    move/from16 v23, v2

    goto :goto_14

    .line 997
    :goto_15
    iput-boolean v2, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    const/16 v21, 0x0

    cmpl-float v10, v5, v21

    if-nez v10, :cond_20

    .line 1017
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v13, 0x0

    const/4 v14, 0x4

    :goto_16
    const/4 v3, 0x1

    goto :goto_18

    .line 999
    :cond_20
    iget-object v10, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    .line 1000
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 1001
    iget-object v12, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v12, v12, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v12, :cond_21

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    if-eqz v12, :cond_21

    .line 1002
    iget-object v10, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v10, v10, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    .line 1004
    :cond_21
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v12

    move v13, v2

    const/4 v14, 0x4

    :goto_17
    if-ge v13, v14, :cond_22

    .line 1006
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    aget v17, v12, v13

    aput v17, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 1008
    :cond_22
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v13, 0x0

    .line 1009
    invoke-static {v9, v13, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    float-to-int v9, v9

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 1010
    invoke-static {v3, v13, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 1011
    invoke-static {v7, v13, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    float-to-int v7, v7

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 1012
    invoke-static {v5, v13, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    .line 1008
    invoke-virtual {v10, v9, v3, v7, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 1014
    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1015
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    invoke-virtual {v10, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    goto :goto_16

    .line 1019
    :goto_18
    iput-boolean v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 1020
    iget-boolean v5, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v5, :cond_26

    .line 1021
    iput-boolean v3, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 1022
    invoke-virtual {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    goto :goto_19

    :cond_23
    move/from16 v23, v2

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 1025
    iget-boolean v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v3, :cond_24

    iget-object v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-nez v3, :cond_24

    .line 1026
    iget-object v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v3

    .line 1027
    iget-object v5, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v9, v22, v11

    mul-float/2addr v9, v3

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1028
    iget-object v5, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1029
    iget-object v5, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_19

    .line 1031
    :cond_24
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 1032
    iget-object v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 1033
    iget-object v5, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 1034
    iget-object v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 1036
    :cond_25
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v5

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v9, v22, v11

    mul-float/2addr v9, v5

    .line 1037
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1038
    iget-object v6, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1039
    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1042
    :cond_26
    :goto_19
    iget-object v3, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_27

    .line 1043
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_27
    move/from16 v17, v2

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_1a

    :cond_28
    move/from16 v23, v2

    move v13, v10

    move v14, v12

    const/4 v2, 0x0

    .line 1046
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v7

    iget-object v6, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1047
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v9, v22, v11

    mul-float v9, v9, v18

    float-to-int v6, v9

    const/16 v7, 0x1f

    move/from16 v17, v2

    const/4 v2, 0x0

    move-object v9, v3

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1048
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v3, v22, v2

    sub-float v2, v22, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/16 v20, 0x1

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1049
    invoke-virtual {v9, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1050
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1052
    :goto_1a
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_1b
    add-int/lit8 v2, v23, 0x1

    move v10, v13

    move v12, v14

    move/from16 v9, v22

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, -0x1

    goto/16 :goto_b

    .line 1054
    :cond_29
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1069
    :cond_2a
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1072
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgetframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2c

    .line 1073
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgetframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    const/4 v15, 0x3

    if-ne v2, v15, :cond_2b

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    goto :goto_1c

    :cond_2b
    const/4 v14, 0x1

    .line 1076
    :goto_1c
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgetframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v3

    add-int/2addr v3, v14

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fputframeDrawCount(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;I)V

    .line 1079
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 1081
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2d

    .line 1082
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 1084
    :cond_2d
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgetvalueAnimator(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 1085
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 1087
    :cond_2e
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->exec()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 780
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 782
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateSearchBox()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/high16 v5, 0x42100000    # 36.0f

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    if-ne v0, v2, :cond_1

    .line 792
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    mul-int/2addr p1, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_1

    .line 794
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 795
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/2addr p2, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_3

    move p1, p2

    goto :goto_1

    .line 790
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 801
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    if-ne p2, v3, :cond_4

    .line 802
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/2addr p2, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    sub-int/2addr p2, v0

    goto :goto_3

    .line 803
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 804
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p2, v6

    if-gt p2, v4, :cond_5

    .line 806
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/2addr p2, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_3

    .line 808
    :cond_5
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/2addr p2, v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :cond_6
    move p2, p1

    .line 811
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgettype(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    if-ne v0, v2, :cond_7

    const/high16 v0, 0x437e0000    # 254.0f

    .line 812
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    .line 814
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
