.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field final synthetic val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public static synthetic $r8$lambda$UpRK8gz4ILEICVsoqw_VSG3xQKc(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->lambda$onEmojiSelected$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iput-object p10, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-object p11, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method private synthetic lambda$onEmojiSelected$0()V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$mshowUnlockPremiumAlert(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    return-void
.end method


# virtual methods
.method protected invalidateParent()V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    .line 209
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-boolean p5, p4, Lorg/telegram/ui/Components/ReactionsContainerLayout;->channelReactions:Z

    if-nez p5, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getWindowType()I

    move-result p4

    const/16 p5, 0xd

    if-eq p4, p5, :cond_0

    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p4

    if-nez p4, :cond_0

    .line 211
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiReaction:I

    .line 215
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->PremiumMore:I

    .line 216
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;)V

    .line 213
    invoke-virtual {p1, p3, p2, p4, p5}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 223
    sget p4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->putDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 225
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-nez p2, :cond_3

    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p4, p1, p2, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected onInputFocus()V
    .locals 4

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fgetwasFocused(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$fputwasFocused(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-nez v2, :cond_0

    .line 190
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->-$$Nest$mcreateLayoutParams(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->needEnterText()Z

    :cond_2
    return-void
.end method

.method protected onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public prevWindowKeyboardVisible()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->needEnterText()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
