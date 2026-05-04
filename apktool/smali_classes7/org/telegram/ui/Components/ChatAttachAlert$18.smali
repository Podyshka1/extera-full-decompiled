.class Lorg/telegram/ui/Components/ChatAttachAlert$18;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public static synthetic $r8$lambda$LKkqKeWgn_35xcFcCV6pMyNgOcg(Lorg/telegram/ui/Components/ChatAttachAlert$18;Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$18;->lambda$dispatchDraw$0(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2955
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0(Lorg/telegram/ui/Components/EditTextCaption;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2983
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 2984
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    .line 2985
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 2986
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetphotoLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onContainerTranslationUpdated(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bottomPanelTranslationY(F)V
    .locals 3

    .line 3020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputbottomPannelTranslation(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 3022
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3023
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mcheckUi_writeButtonContainerY(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 3024
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    return-void
.end method

.method protected closeParent()V
    .locals 1

    .line 3029
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7701(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method

.method protected createEmojiView()V
    .locals 2

    .line 3048
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 3049
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3051
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 3052
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 3053
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    .line 3054
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2977
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->shouldAnimateEditTextWithBounds:Z

    if-eqz v0, :cond_1

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    .line 2979
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextPredrawHeigth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextPredrawScrollY:I

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2980
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEffects;->getOffsetY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    .line 2981
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

    .line 2982
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$18;Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2989
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2990
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2992
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    .line 2993
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2994
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2995
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2996
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 2998
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2

    .line 3040
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 3041
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v1}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;ZZ)V

    .line 3043
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2964
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetenterCommentEventSent(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2967
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    goto :goto_0

    .line 2969
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->commentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    .line 2972
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3034
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3035
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 1

    .line 3003
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3004
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 3005
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextPredrawHeigth:I

    .line 3006
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->messageEditTextPredrawScrollY:I

    .line 3007
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3009
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3010
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->setOffsetY(F)V

    const/4 p1, 0x0

    .line 3011
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->shouldAnimateEditTextWithBounds:Z

    .line 3013
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcaptionEditTextTopOffset(Lorg/telegram/ui/Components/ChatAttachAlert;)F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fputchatActivityEnterViewAnimateFromTop(Lorg/telegram/ui/Components/ChatAttachAlert;F)V

    .line 3014
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3015
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$18;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCommentTextViewPosition()V

    return-void
.end method
