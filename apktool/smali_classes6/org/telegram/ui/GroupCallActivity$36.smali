.class Lorg/telegram/ui/GroupCallActivity$36;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 5339
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected allowSearch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createEmojiView()V
    .locals 2

    .line 5399
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 5400
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5402
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 5403
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 5404
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    .line 5405
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->access$2700(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 5352
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 5353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5354
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetcallMessageEnterView(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    .line 5355
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 5357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 5358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 5362
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onEmojiKeyboardUpdate()V
    .locals 2

    .line 5378
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->onEmojiKeyboardUpdate()V

    .line 5381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5382
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiPadding()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 5383
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->isWaitingForKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5384
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getKeyboardHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-lez v0, :cond_2

    .line 5391
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->requestInAppKeyboardHeight(I)V

    return-void

    .line 5393
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetwindowInsetsStateHolder(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/inset/WindowInsetsStateHolder;->resetInAppKeyboardHeight(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 5342
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 5343
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 5344
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lme/vkryl/android/animator/FactorAnimator;->forceFactor(F)V

    return-void

    .line 5346
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetanimatorMessageInputHeight(Lorg/telegram/ui/GroupCallActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lme/vkryl/android/animator/FactorAnimator;->animateTo(F)V

    return-void
.end method

.method protected updatedEmojiExpanded()V
    .locals 1

    .line 5372
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->updatedEmojiExpanded()V

    .line 5373
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$36;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->access$2600(Lorg/telegram/ui/GroupCallActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method
