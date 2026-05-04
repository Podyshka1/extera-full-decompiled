.class Lorg/telegram/ui/Components/ShareAlert$23;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private messageEditTextAnimator:Landroid/animation/ValueAnimator;

.field private messageEditTextPredrawHeigth:I

.field private messageEditTextPredrawScrollY:I

.field private shouldAnimateEditTextWithBounds:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$FUjZMypgevW27mRqA1Buaf8-H90(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1630
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1610
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected bottomPanelTranslationY(F)V
    .locals 0

    .line 1614
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->bottomPanelTranslationY(F)V

    .line 1615
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShareAlert;->updateBottomOverlay()V

    return-void
.end method

.method protected createEmojiView()V
    .locals 2

    .line 1683
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 1684
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1686
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 1687
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 1688
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    .line 1689
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    .line 1691
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ShareAlert;->timestampFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1692
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1694
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1697
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetwriteButtonContainer(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1625
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_1

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcommentTextView(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    .line 1627
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextPredrawHeigth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextPredrawScrollY:I

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1628
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 1629
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1630
    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$23$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ShareAlert$23$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1634
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 1635
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1636
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1637
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1638
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$23;->shouldAnimateEditTextWithBounds:Z

    .line 1640
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hidePopup(Z)V
    .locals 0

    .line 1672
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 1

    .line 1645
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1646
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->shouldAnimateEditTextWithBounds:Z

    .line 1647
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextPredrawHeigth:I

    .line 1648
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->messageEditTextPredrawScrollY:I

    .line 1649
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1652
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    const/4 p1, 0x0

    .line 1653
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->shouldAnimateEditTextWithBounds:Z

    .line 1655
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ShareAlert;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ShareAlert;F)V

    .line 1656
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$23;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected showPopup(I)V
    .locals 0

    .line 1661
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->showPopup(I)V

    return-void
.end method
