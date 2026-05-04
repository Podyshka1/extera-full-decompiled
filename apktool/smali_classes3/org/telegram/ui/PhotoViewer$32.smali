.class Lorg/telegram/ui/PhotoViewer$32;
.super Lorg/telegram/ui/Components/CaptionPhotoViewer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 7083
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/CaptionPhotoViewer;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V

    .line 7084
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$32;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected captionLimitToast()Z
    .locals 2

    .line 7122
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlimitBulletin(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlimitBulletin(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->showCaptionLimitBulletin(Landroid/widget/FrameLayout;)Z

    move-result v0

    return v0
.end method

.method protected customBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V
    .locals 8

    move/from16 v0, p9

    .line 7107
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 7108
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 7109
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p3, p4, p4, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 7110
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$32;->path:Landroid/graphics/Path;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    if-eqz p8, :cond_0

    .line 7112
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p3

    neg-float p3, p3

    iget-object p4, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEditContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    add-float/2addr p3, p6

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p4

    neg-float p4, p4

    iget-object p6, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEditContainer(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p6

    invoke-virtual {p6}, Landroid/view/View;->getY()F

    move-result p6

    sub-float/2addr p4, p6

    add-float/2addr p4, p7

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 7114
    :cond_0
    invoke-virtual {p2, p6, p7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7116
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    if-eqz p5, :cond_1

    const p4, -0x878788

    goto :goto_1

    :cond_1
    const p4, -0xd9d9da

    :goto_1
    invoke-static {p4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    const/4 p4, 0x0

    if-eqz p8, :cond_3

    if-eqz p5, :cond_2

    move p6, p4

    goto :goto_2

    :cond_2
    const/high16 p6, 0x33000000

    goto :goto_2

    :cond_3
    const/high16 p6, 0x44000000    # 512.0f

    :goto_2
    invoke-static {p6, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    xor-int/lit8 v6, p5, 0x1

    if-nez p5, :cond_4

    if-eqz p8, :cond_4

    const/4 p4, 0x1

    :cond_4
    move v7, p4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v1, p2

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/PhotoViewer;->drawCaptionBlur(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;IIZZZ)V

    .line 7117
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected ignoreTouches(FF)Z
    .locals 0

    .line 7093
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public invalidate()V
    .locals 2

    .line 7130
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 7133
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected isAtTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMoveButtonClick()V
    .locals 1

    .line 7173
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mtoggleCaptionAbove(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method protected openedKeyboard()V
    .locals 1

    .line 7178
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->expandMoveButton()V

    .line 7179
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7180
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->expandMoveButton()V

    :cond_0
    return-void
.end method

.method protected setupMentionContainer()V
    .locals 4

    .line 7138
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    .line 7139
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 7140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 7141
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 7142
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    .line 7143
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7144
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 7145
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentChatActivity(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    goto :goto_1

    .line 7147
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 7148
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 7150
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 7151
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/16 v1, 0x33

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected showMoveButton()Z
    .locals 1

    .line 7163
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetplaceProvider(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->canMoveCaptionAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateKeyboard(I)V
    .locals 2

    .line 7098
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->updateKeyboard(I)V

    .line 7099
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisActionBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCaptionView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7100
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 7101
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisActionBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCaptionView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$32;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettopCaptionEdit(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mtoggleOnlyCheckImageView(Lorg/telegram/ui/PhotoViewer;Z)V

    :cond_4
    return-void
.end method

.method public updateMentionsLayoutPosition()V
    .locals 2

    .line 7156
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_0

    .line 7157
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getEditTextHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
