.class Lorg/telegram/ui/PhotoViewer$73;
.super Lorg/telegram/ui/PhotoViewer$CaptionScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 16397
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer$CaptionScrollView;-><init>(Landroid/content/Context;Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;Landroid/widget/FrameLayout;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 11

    .line 16405
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 16406
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisActionBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16407
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 16408
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    cmpl-float v5, v1, v2

    if-nez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v0, :cond_1

    cmpl-float v6, v1, v2

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-nez v5, :cond_5

    .line 16414
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoProgressViews(Lorg/telegram/ui/PhotoViewer;)[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->getY()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoProgressViews(Lorg/telegram/ui/PhotoViewer;)[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->-$$Nest$fgetsize(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v6

    add-int/2addr v5, v6

    .line 16415
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$73;->isStatusBarVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 16416
    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    float-to-int v1, v1

    add-int/2addr v7, v1

    sub-int/2addr v7, v0

    add-int/2addr v7, v6

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v7, v0

    .line 16417
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    .line 16418
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    if-le v7, v0, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    if-le v7, v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v4

    .line 16421
    :cond_5
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetallowShowFullscreenButton(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eqz v0, :cond_7

    .line 16422
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v8, 0x96

    const/4 v10, 0x3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_6

    if-eqz v6, :cond_6

    .line 16423
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16424
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Lorg/telegram/ui/PhotoViewer$73$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoViewer$73$1;-><init>(Lorg/telegram/ui/PhotoViewer$73;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 16429
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    .line 16430
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    if-nez v6, :cond_7

    .line 16431
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16432
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfullscreenButton(Lorg/telegram/ui/PhotoViewer;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 16436
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoProgressViews(Lorg/telegram/ui/PhotoViewer;)[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    move-result-object v0

    aget-object v0, v0, v4

    if-eqz v5, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {v0, v7, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setIndexedAlpha(IFZ)V

    :cond_9
    return-void
.end method

.method protected isStatusBarVisible()Z
    .locals 1

    .line 16400
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$73;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetinBubbleMode(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
