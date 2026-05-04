.class Lorg/telegram/ui/Components/ChatAttachAlert$5$2;
.super Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$5;Landroid/view/View;)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected heightAnimationEnabled()Z
    .locals 3

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetopenTransitionFinished(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpollLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettodoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1401
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpollLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpollLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v0

    .line 1402
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettodoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettodoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    move-result-object v0

    .line 1403
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->isPopupVisible()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected onPanTranslationUpdate(FFZ)V
    .locals 2

    .line 1371
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput p1, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    .line 1372
    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_0

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgettoScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    iput p3, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    .line 1375
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p2, :cond_1

    .line 1378
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1380
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1381
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetactionBarShadow(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdateSelectedPosition(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    .line 1384
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCurrentPanTranslationY(F)V

    .line 1385
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1386
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1388
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1391
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onContainerTranslationUpdated(F)V

    :cond_2
    return-void
.end method

.method protected onTransitionEnd()V
    .locals 3

    .line 1354
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionEnd()V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;I)V

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionEnd()V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotButtonWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42a80000    # 84.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1362
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1363
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotAttachLayouts(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->setMeasureOffsetY(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTransitionStart(ZI)V
    .locals 4

    .line 1330
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onTransitionStart(ZI)V

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v3, v3, v1

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_0

    .line 1332
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetpreviousScrollOffsetY(Lorg/telegram/ui/Components/ChatAttachAlert;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputtoScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    goto :goto_0

    .line 1335
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputfromScrollY(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 1337
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;

    if-eqz v0, :cond_2

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetbotButtonWasVisible(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1344
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$5$2;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$5;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionStart(ZI)V

    return-void
.end method
