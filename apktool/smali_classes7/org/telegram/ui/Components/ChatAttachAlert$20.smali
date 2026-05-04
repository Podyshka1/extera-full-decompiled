.class Lorg/telegram/ui/Components/ChatAttachAlert$20;
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
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3157
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected createEmojiView()V
    .locals 2

    .line 3193
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 3194
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3196
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 3197
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 3198
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    .line 3199
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setBottomInset(I)V

    :cond_0
    return-void
.end method

.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2

    .line 3185
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 3186
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v1}, Lorg/telegram/ui/ChatActivity;->fillActionModeMenu(Landroid/view/Menu;Lorg/telegram/tgnet/TLRPC$EncryptedChat;ZZ)V

    .line 3188
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetenterCommentEventSent(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3163
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    goto :goto_0

    .line 3165
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->makeFocusable(Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    .line 3168
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3179
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3180
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdatedTopCaptionHeight(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method

.method protected onLineCountChanged(II)V
    .locals 0

    .line 3173
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEmoji;->onLineCountChanged(II)V

    .line 3174
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$20;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$mupdatedTopCaptionHeight(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    return-void
.end method
