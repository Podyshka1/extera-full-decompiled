.class Lorg/telegram/ui/bots/BotWebViewSheet$1;
.super Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/bots/BotWebViewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/bots/BotWebViewSheet;Landroid/content/Context;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 443
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 446
    :cond_0
    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 452
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v2

    int-to-float v0, v0

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetdismissed(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetresetOffsetY(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    .line 454
    invoke-virtual {p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setOffsetY(F)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputignoreLayout(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fputresetOffsetY(Lorg/telegram/ui/bots/BotWebViewSheet;Z)V

    .line 459
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreen(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 462
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreen(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 464
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p2, v0

    .line 465
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 467
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    if-lez v0, :cond_5

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbotButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/BotButtons;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotButtons;->getTotalHeight()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_5
    const/high16 v0, 0x41c00000    # 24.0f

    .line 473
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    .line 474
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetignoreLayout(Lorg/telegram/ui/bots/BotWebViewSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 487
    invoke-super {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setTranslationY(F)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenButtons(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/messenger/BotFullscreenButtons;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 491
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetbulletinContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetinsets(Lorg/telegram/ui/bots/BotWebViewSheet;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetfullscreenProgress(Lorg/telegram/ui/bots/BotWebViewSheet;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/bots/BotWebViewSheet$1;->this$0:Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-static {v1}, Lorg/telegram/ui/bots/BotWebViewSheet;->-$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/BotWebViewSheet;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method
