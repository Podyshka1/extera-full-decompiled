.class public Lorg/telegram/ui/Components/ChatAvatarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;
    }
.end annotation


# instance fields
.field public allowDrawStories:Z

.field public allowShorterStatus:Z

.field private animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field public bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private currentAccount:I

.field private currentConnectionState:I

.field currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

.field private emojiStatusDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private final emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private final emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field public ignoreTouches:Z

.field private isOnline:[Z

.field private largerWidth:I

.field private lastSubtitle:Ljava/lang/CharSequence;

.field private lastSubtitleColorKey:I

.field private lastWidth:I

.field private leftPadding:I

.field private occupyStatusBar:Z

.field private onLongClick:Ljava/lang/Runnable;

.field private onlineCount:I

.field private overrideSubtitleColor:Ljava/lang/Integer;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field public premiumIconHiddable:Z

.field private pressed:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightAvatarPadding:I

.field private rightDrawable2ContentDescription:Ljava/lang/String;

.field private rightDrawableContentDescription:Ljava/lang/String;

.field private rightDrawableIsScamOrVerified:Z

.field private secretChatTimer:Z

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private starBgItem:Landroid/widget/ImageView;

.field private starFgItem:Landroid/widget/ImageView;

.field public stars:Z

.field private statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

.field public statusMadeShorter:[Z

.field private storiesForceState:Ljava/lang/Integer;

.field private subtitleIsThinkingBot:Z

.field private subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private timeItem:Landroid/widget/ImageView;

.field private timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

.field private titleAnimation:Landroid/animation/AnimatorSet;

.field private titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private verifiedBackground:Landroid/graphics/drawable/Drawable;

.field private verifiedCheck:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$04xa_y9NX7J55WiAG0SJt2jLZKo(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$C34o_RvbhdKKK594NK0uVWtS2Kk(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKAcZ6lS3UK9KXTvoj6kPBQ0bK4(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$fadeOutToLessWidth$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ot-s8coD6su8WkKPpVUpyzw_PZc(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$showTimeItem$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHHlUVMqFEi52eJeV5F7D23TTfE(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$aaFsJqvQqIhzSIjF-2Rxz77YWsk(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$hideTimeItem$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBoO5MoVbrFdt6fpKXbLWIzhKTg(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQMNM1OQhTYsHGLCsshwCrkt1lw(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatAvatarContainer;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesForceState(Lorg/telegram/ui/Components/ChatAvatarContainer;)Ljava/lang/Integer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->storiesForceState:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeItem(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleAnimation(Lorg/telegram/ui/Components/ChatAvatarContainer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtitleAnimation(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 176
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x6

    .line 91
    new-array v0, v6, [Lorg/telegram/ui/Components/StatusDrawable;

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    .line 92
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 93
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    const/4 v7, 0x1

    .line 94
    iput-boolean v7, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    const/high16 v0, 0x41000000    # 8.0f

    .line 95
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/4 v8, 0x0

    .line 96
    iput v8, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    const/4 v0, -0x1

    .line 99
    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    .line 100
    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    .line 105
    new-array v2, v7, [Z

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    .line 106
    new-array v2, v7, [Z

    iput-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    .line 110
    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 113
    iput v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    .line 119
    iput-boolean v8, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    .line 120
    iput-boolean v8, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->premiumIconHiddable:Z

    .line 367
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 368
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->onLongClick:Ljava/lang/Runnable;

    .line 856
    iput-boolean v8, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    const/4 v0, 0x0

    .line 857
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 858
    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 177
    iput-object v5, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 178
    instance-of v9, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_0

    .line 179
    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 182
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    const-wide/32 v10, 0x77628

    const/16 v12, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-ne v0, v12, :cond_3

    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v0, v13, v10

    if-eqz v0, :cond_3

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v8

    .line 183
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x2

    const/4 v13, 0x5

    if-nez v9, :cond_4

    .line 247
    instance-of v9, v3, Lorg/telegram/ui/TopicsFragment;

    if-eqz v9, :cond_8

    .line 248
    :cond_4
    iget-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v9

    if-eq v9, v13, :cond_6

    iget-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v9

    if-eq v9, v6, :cond_6

    iget-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v9

    if-eq v9, v12, :cond_6

    iget-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->isInBotForumMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 249
    :cond_5
    new-instance v9, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    .line 251
    :cond_6
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v3

    if-eq v3, v0, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v3

    if-eq v3, v13, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 252
    :cond_7
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_8
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrProfilePicture:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {v6}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 257
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_9

    .line 259
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_9
    new-instance v3, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;

    iget-object v4, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v1, v2, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 267
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 268
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 269
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 270
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 271
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v6, 0x3fa66666    # 1.3f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 273
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setCanHideRightDrawable(Z)V

    .line 274
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 275
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v3, v8, v6, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 276
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->useAnimatedSubtitle()Z

    move-result v3

    const/high16 v6, 0x41200000    # 10.0f

    const-string v9, "fonts/rregular.ttf"

    if-eqz v3, :cond_a

    .line 279
    new-instance v14, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v14, v2, v7, v7, v7}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v14, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v18, 0x140

    .line 280
    sget-object v20, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v15, 0x3e99999a    # 0.3f

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v20}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 282
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {v1, v14}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v3, v15}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 283
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 285
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 286
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v8, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 289
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 291
    :cond_a
    new-instance v3, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;

    iget-object v14, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v1, v2, v14}, Lorg/telegram/ui/Components/ChatAvatarContainer$SimpleTextConnectedView;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 292
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 293
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {v1, v14}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v3, v15}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 294
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v9, 0xe

    invoke-virtual {v3, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 297
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 298
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v8, v8, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 299
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_c

    .line 303
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    .line 304
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 305
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 306
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 307
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 308
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/TimerDrawable;

    invoke-direct {v9, v2, v5}, Lorg/telegram/ui/Components/TimerDrawable;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/TimerDrawable;->setBackgroundColor(I)V

    .line 311
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v3, p3

    .line 312
    iput-boolean v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    .line 314
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;

    invoke-direct {v9, v1, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-boolean v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz v3, :cond_b

    .line 322
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->SetTimer:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 324
    :cond_b
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$string;->AccAutoDeleteTimer:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    :goto_2
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    .line 328
    sget v9, Lorg/telegram/messenger/R$drawable;->star_small_outline:I

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v14}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v14, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 330
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 331
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 332
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 333
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    .line 336
    sget v2, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 338
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 339
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 340
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    :cond_c
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-eq v2, v12, :cond_d

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-ne v2, v4, :cond_12

    .line 344
    :cond_d
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v3, v2, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v3, :cond_e

    iget-boolean v2, v2, Lorg/telegram/ui/ChatActivity;->isComments:Z

    if-eqz v2, :cond_10

    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_10

    .line 345
    :cond_f
    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    :cond_10
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 351
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v6, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>(Z)V

    aput-object v6, v3, v8

    .line 352
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v6, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>(Z)V

    aput-object v6, v3, v7

    .line 353
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v6, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>(Z)V

    aput-object v6, v3, v0

    .line 354
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v3, v8, v5}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v3, v0, v4

    .line 355
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/RoundStatusDrawable;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/RoundStatusDrawable;-><init>(Z)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    .line 356
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    new-instance v3, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Components/ChoosingStickerStatusDrawable;-><init>(Z)V

    aput-object v3, v0, v13

    move v0, v8

    .line 357
    :goto_3
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v4, v3

    if-ge v0, v4, :cond_12

    .line 358
    aget-object v3, v3, v0

    if-eqz v2, :cond_11

    move v4, v7

    goto :goto_4

    :cond_11
    move v4, v8

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/StatusDrawable;->setIsChat(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 362
    :cond_12
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v0, v2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 363
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 364
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method

.method private fadeOutToLessWidth(I)V
    .locals 7

    .line 680
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    .line 681
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 685
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 687
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    const/16 v0, 0x12

    .line 688
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/4 v0, 0x3

    .line 689
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 690
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x3fa66666    # 1.3f

    .line 691
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    .line 692
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)Z

    .line 694
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawableOutside()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOutside(Z)V

    .line 695
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v6, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 704
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 706
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    .line 708
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 710
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 712
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xe

    .line 714
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 715
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 721
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 731
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 733
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public static getChatSubtitle(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;I)Ljava/lang/CharSequence;
    .locals 8

    .line 1284
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "OnlineCount"

    const-string v3, "%s, %s"

    const/4 v4, 0x1

    const-string v5, "Members"

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_4

    .line 1285
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v0, :cond_4

    .line 1286
    iget-boolean v7, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v7, :cond_1

    if-le p2, v4, :cond_0

    .line 1288
    new-array p0, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v6

    aput-object p1, p2, v4

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1290
    :cond_0
    new-array p0, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, p0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1293
    :cond_1
    new-array p2, v4, [I

    .line 1294
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v0

    .line 1295
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eqz v0, :cond_2

    aput p1, p2, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object p1

    .line 1296
    :goto_0
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const-string v0, "%d"

    if-eqz p0, :cond_3

    .line 1297
    aget p0, p2, v6

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aget p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1299
    :cond_3
    aget p0, p2, v6

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Subscribers"

    invoke-static {v2, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aget p2, p2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1303
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p2, :cond_8

    if-nez p1, :cond_5

    .line 1305
    sget p0, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1307
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->has_geo:Z

    if-eqz p1, :cond_6

    .line 1308
    sget p0, Lorg/telegram/messenger/R$string;->MegaLocation:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1309
    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1310
    sget p0, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1312
    :cond_7
    sget p0, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1316
    :cond_8
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1317
    sget p0, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1319
    :cond_9
    sget p0, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :cond_a
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isKickedFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1325
    sget p0, Lorg/telegram/messenger/R$string;->YouWereKicked:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1326
    :cond_b
    invoke-static {p0}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1327
    sget p0, Lorg/telegram/messenger/R$string;->YouLeft:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1329
    :cond_c
    iget p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz p1, :cond_d

    .line 1330
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz p1, :cond_d

    .line 1331
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_d
    if-le p2, v4, :cond_e

    if-eqz p0, :cond_e

    .line 1334
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v2, p2, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v6

    aput-object p1, p2, v4

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1336
    :cond_e
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$fadeOutToLessWidth$4()V
    .locals 2

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$fadeOutToLessWidth$5()V
    .locals 2

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 726
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowDrawStories:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 727
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideTimeItem$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 813
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onAvatarClick()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 261
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    .line 315
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-eqz p2, :cond_0

    .line 316
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentEncryptedChat()Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openSetTimer()Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 346
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 2

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->pressed:Z

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 371
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->canSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openSearch()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTimeItem$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 792
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setTypingAnimation(Z)V
    .locals 7

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 1040
    :try_start_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleIsThinkingBot:Z

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1041
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 1043
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "**oo**"

    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 1045
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    .line 1047
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 1049
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1051
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 1052
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 1053
    aget-object v0, v0, v1

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    if-ne v1, p1, :cond_5

    .line 1055
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusDrawable;->start()V

    goto :goto_3

    .line 1057
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1061
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1064
    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    .line 1065
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1067
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusDrawables:[Lorg/telegram/ui/Components/StatusDrawable;

    array-length v0, p1

    if-ge v1, v0, :cond_8

    .line 1068
    aget-object p1, p1, v1

    if-eqz p1, :cond_7

    .line 1069
    invoke-virtual {p1}, Lorg/telegram/ui/Components/StatusDrawable;->stop()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void
.end method

.method private updateCurrentConnectionState()V
    .locals 5

    .line 1564
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1565
    sget v0, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1567
    sget v0, Lorg/telegram/messenger/R$string;->Connecting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1569
    sget v0, Lorg/telegram/messenger/R$string;->Updating:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1571
    sget v0, Lorg/telegram/messenger/R$string;->ConnectingToProxy:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_7

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1575
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_5

    .line 1576
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1577
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1579
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void

    .line 1580
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    if-ltz v0, :cond_d

    .line 1581
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1584
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_d

    .line 1585
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v2, v4

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1586
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1588
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void

    .line 1589
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    if-ltz v0, :cond_d

    .line 1590
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1591
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1596
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_a

    .line 1597
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    .line 1598
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1600
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 1602
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void

    .line 1604
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1607
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_d

    .line 1608
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_b

    .line 1609
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    .line 1611
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 1613
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void

    .line 1615
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1616
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected canSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkAndUpdateAvatar()V
    .locals 14

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1393
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1395
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v2, v5, :cond_2

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_1

    .line 1398
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v8, v0

    move-object v1, v6

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    move-object v8, v6

    goto :goto_0

    :cond_2
    move-object v8, v0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v8, :cond_7

    .line 1406
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 1407
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    if-eqz v1, :cond_3

    .line 1408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1411
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v6, v1, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1414
    :cond_3
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1418
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v6, v1, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1421
    :cond_4
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1423
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1425
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v6, v1, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1428
    :cond_5
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1432
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1433
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v6, v6, v1, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1436
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1438
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;ZIZ)V

    return-void

    .line 1442
    :cond_7
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/high16 v5, 0x42280000    # 42.0f

    if-eqz v2, :cond_a

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v7

    .line 1444
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    cmp-long v0, v7, v3

    if-eqz v0, :cond_9

    if-lez v0, :cond_8

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1447
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1448
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1449
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 1451
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1452
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1454
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    .line 1457
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1458
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setMonoForumAvatar(ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Components/AvatarDrawable;Lorg/telegram/ui/Components/BackupImageView;)V

    .line 1460
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    return-void

    :cond_a
    if-eqz v1, :cond_b

    .line 1462
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_b

    .line 1466
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasStories(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-static {v5, v3, v2, v1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_b
    :goto_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1543
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    .line 1544
    iget p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 1545
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    if-eq p2, p1, :cond_4

    .line 1546
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1547
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    return-void

    .line 1549
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_3

    .line 1550
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_1

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1553
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1554
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1556
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1557
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    .line 1558
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    :cond_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 409
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->ignoreTouches:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 433
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 416
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 418
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 419
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    add-float/2addr p3, p4

    .line 420
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr p4, v1

    const/high16 v0, 0x41380000    # 11.5f

    .line 421
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    .line 422
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->PAINT_CLEAR:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 426
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getBotVerificationDrawable(JZ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 876
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->offset(II)V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p1
.end method

.method public getLastSubtitleColorKey()I
    .locals 1

    .line 1344
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    return v0
.end method

.method public getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;
    .locals 1

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-object v0
.end method

.method public getSubtitlePaint()Landroid/text/TextPaint;
    .locals 1

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleTextView()Landroid/view/View;
    .locals 1

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-object v0

    .line 1016
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeItem()Landroid/widget/ImageView;
    .locals 1

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hideSubtitle()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hideTimeItem(Z)V
    .locals 3

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 807
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$4;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    .line 813
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 815
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 817
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 818
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1499
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    .line 1501
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1502
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1504
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1506
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentConnectionState:I

    .line 1507
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateCurrentConnectionState()V

    .line 1509
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1510
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1512
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 1513
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 1515
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_4

    .line 1516
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_4
    return-void
.end method

.method protected onAvatarClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->onDestroy(Z)V

    return-void
.end method

.method public onDestroy(Z)V
    .locals 2

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->onDestroy(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1522
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 1524
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1525
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1527
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedMessagesDialogsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1530
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 1531
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1533
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1534
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    .line 1536
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 1537
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1624
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1626
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 1628
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1632
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_2

    .line 1637
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1638
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v1, :cond_3

    .line 1639
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1641
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1642
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1643
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$string;->OpenProfile:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1645
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1646
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 738
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    const/high16 p2, 0x42280000    # 42.0f

    .line 739
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    iget-boolean p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    add-int/2addr p1, p3

    .line 740
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget p5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p5

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p3, p5, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    .line 741
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    const/high16 p3, 0x42580000    # 54.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    :cond_1
    add-int/2addr p2, p4

    iget p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    add-int/2addr p2, p3

    .line 742
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 743
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2

    .line 744
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const p5, 0x3fa66666    # 1.3f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p3, :cond_3

    .line 746
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr v1, p5

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 749
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 p5, 0x41300000    # 11.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p3, :cond_3

    .line 751
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr v1, p5

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 754
    :cond_3
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz p3, :cond_4

    .line 755
    iget p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/high16 p5, 0x41800000    # 16.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p4, p5

    const/high16 p5, 0x41700000    # 15.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p5, p1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x42440000    # 49.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 757
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    const/high16 p4, 0x41e00000    # 28.0f

    const/high16 p5, 0x41c00000    # 24.0f

    if-eqz p3, :cond_5

    .line 758
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 760
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-eqz p3, :cond_6

    .line 761
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr v2, p4

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr v2, p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr p4, v3

    invoke-virtual {p3, v0, v1, v2, p4}, Landroid/view/View;->layout(IIII)V

    .line 763
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_7

    .line 764
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 765
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz p3, :cond_8

    .line 766
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p2, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 768
    :cond_8
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p3, :cond_9

    .line 770
    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    add-int/2addr p1, p5

    invoke-virtual {p3, p2, p4, v0, p1}, Landroid/view/View;->layout(IIII)V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 649
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x36

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p1, v0

    .line 651
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 652
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v4, -0x80000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/view/View;->measure(II)V

    .line 653
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v5, 0x41a00000    # 20.0f

    if-eqz v3, :cond_1

    .line 654
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 655
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v3, :cond_2

    .line 656
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    .line 658
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/high16 v3, 0x42080000    # 34.0f

    .line 659
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->measure(II)V

    .line 661
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 662
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v0, v3, v7}, Landroid/view/View;->measure(II)V

    .line 664
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 665
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->measure(II)V

    .line 667
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 668
    iget p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    if-eq p2, p1, :cond_6

    if-le p2, p1, :cond_6

    .line 669
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->fadeOutToLessWidth(I)V

    .line 671
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextLargerCopyView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p2, :cond_8

    .line 673
    iget v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->largerWidth:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 674
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 676
    :cond_8
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->canSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->pressed:Z

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onLongClick:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onLongClick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 386
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->pressed:Z

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 388
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->pressed:Z

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    .line 392
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onLongClick:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 395
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openProfile(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(ZZZ)V

    return-void
.end method

.method public openProfile(ZZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 537
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-gt v4, v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move/from16 v3, p1

    .line 540
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 541
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 542
    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    const-wide/16 v8, 0x0

    if-eqz v5, :cond_4

    .line 543
    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$Chat;->monoforum:Z

    if-eqz v10, :cond_4

    .line 544
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_4

    .line 547
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_4

    .line 548
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v5, 0x0

    move-object v4, v10

    .line 555
    :cond_4
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    .line 556
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageKey()Ljava/lang/String;

    move-result-object v11

    .line 557
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v12

    if-eqz v11, :cond_5

    .line 558
    invoke-virtual {v12, v11, v2}, Lorg/telegram/messenger/ImageLoader;->isInMemCache(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_5

    .line 559
    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 560
    instance-of v13, v10, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_5

    instance-of v13, v10, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v13, :cond_5

    .line 561
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v12, v10, v11, v2}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    .line 565
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v10, v2, Lorg/telegram/ui/ChatActivity;->isComments:Z

    if-eqz v10, :cond_7

    if-nez v5, :cond_6

    goto/16 :goto_4

    .line 567
    :cond_6
    iget-wide v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 571
    :cond_7
    const-string v10, "navBarColor"

    const-string v11, "chat_id"

    const/4 v12, 0x3

    const-string/jumbo v13, "topic_id"

    if-eqz v4, :cond_13

    .line 572
    iget-wide v14, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v16, 0x77628

    cmp-long v5, v14, v16

    if-nez v5, :cond_8

    goto/16 :goto_4

    .line 575
    :cond_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 576
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v14

    const-string v15, "dialog_id"

    if-eqz v14, :cond_b

    .line 577
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->hasSharedMedia()Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_4

    .line 580
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v5, v15, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 581
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    if-ne v2, v12, :cond_a

    .line 582
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v2

    invoke-virtual {v5, v13, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 584
    :cond_a
    new-instance v2, Lorg/telegram/ui/Components/MediaActivity;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    .line 585
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/MediaActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 586
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 588
    :cond_b
    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v14

    const-string/jumbo v2, "user_id"

    if-ne v14, v12, :cond_d

    .line 589
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v14

    .line 590
    const-string v12, "saved"

    invoke-virtual {v5, v12, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    cmp-long v8, v14, v8

    if-ltz v8, :cond_c

    .line 592
    invoke-virtual {v5, v2, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_c
    neg-long v8, v14

    .line 594
    invoke-virtual {v5, v11, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 597
    :cond_d
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 598
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    if-nez v7, :cond_e

    .line 599
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v8

    invoke-virtual {v5, v15, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 602
    :cond_e
    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v8

    invoke-virtual {v5, v13, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 605
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->hasReportSpam()Z

    move-result v2

    const-string v4, "reportSpam"

    invoke-virtual {v5, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    const-string v4, "actionBarColor"

    invoke-virtual {v5, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 607
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v2

    invoke-virtual {v5, v10, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 608
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v2, v5, v4}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    if-nez v7, :cond_10

    .line 610
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v5, Lorg/telegram/ui/ChatActivity;->profileChannelMessageFetcher:Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->birthdayAssetsFetcher:Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;

    invoke-virtual {v2, v4, v7, v5}, Lorg/telegram/ui/ProfileActivity;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/ui/Cells/ProfileChannelCell$ChannelMessageFetcher;Lorg/telegram/ui/ProfileBirthdayEffect$BirthdayEffectFetcher;)V

    :cond_10
    if-eqz p2, :cond_12

    if-eqz v3, :cond_11

    const/4 v6, 0x2

    .line 613
    :cond_11
    invoke-virtual {v2, v6}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 615
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    :cond_13
    if-eqz v5, :cond_19

    .line 618
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 619
    iget-wide v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 620
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v4

    if-ne v4, v12, :cond_14

    .line 621
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    .line 622
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v5, v4, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v5, :cond_15

    .line 623
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 625
    :cond_15
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v4

    invoke-virtual {v2, v10, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 626
    new-instance v4, Lorg/telegram/ui/ProfileActivity;

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v4, v2, v5}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    if-nez v7, :cond_16

    .line 628
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ProfileActivity;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_16
    if-eqz p2, :cond_18

    if-eqz v3, :cond_17

    const/4 v6, 0x2

    .line 631
    :cond_17
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 633
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v4, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_19
    :goto_4
    return-void
.end method

.method protected openSearch()V
    .locals 0

    return-void
.end method

.method public openSetTimer()Z
    .locals 11

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v2, 0xd

    .line 466
    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->showTimerHint()V

    :cond_1
    return v1

    .line 472
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 476
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 478
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    .line 481
    new-array v3, v2, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 482
    new-instance v4, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/Components/ChatAvatarContainer$2;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Components/ChatAvatarContainer$2;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;[Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 507
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->updateItems(I)V

    .line 509
    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$3;

    iget-object v5, v4, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, -0x2

    invoke-direct {v0, p0, v5, v6, v6}, Lorg/telegram/ui/Components/ChatAvatarContainer$3;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/view/View;II)V

    aput-object v0, v3, v1

    .line 518
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 519
    aget-object v0, v3, v1

    const/16 v5, 0xdc

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 520
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 521
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 522
    aget-object v0, v3, v1

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 523
    aget-object v0, v3, v1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 524
    iget-object v0, v4, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/high16 v4, 0x447a0000    # 1000.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 525
    aget-object v0, v3, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 526
    aget-object v0, v3, v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 527
    aget-object v0, v3, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return v2
.end method

.method public setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_1

    .line 1350
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasStories(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3, v1, v2, p1}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_1
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 775
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->leftPadding:I

    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 0

    .line 638
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->occupyStatusBar:Z

    return-void
.end method

.method public setOverrideSubtitleColor(Ljava/lang/Integer;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setRightAvatarPadding(I)V
    .locals 0

    .line 779
    iput p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightAvatarPadding:I

    return-void
.end method

.method public setStars(ZZ)V
    .locals 4

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 842
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->stars:Z

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez p2, :cond_7

    if-eqz p1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v3

    .line 844
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 845
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 846
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starBgItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 847
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 848
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v3

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 849
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 851
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_9

    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v3

    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    move v1, v3

    :goto_8
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 852
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->starFgItem:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_9

    :cond_b
    move v0, v3

    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_a

    :cond_c
    move v0, v3

    :goto_a
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    move v2, v3

    :goto_b
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e
    :goto_c
    return-void
.end method

.method public setStoriesForceState(Ljava/lang/Integer;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->storiesForceState:Ljava/lang/Integer;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 1000
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTime(IZ)V
    .locals 2

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->stars:Z

    if-nez p1, :cond_1

    .line 827
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->secretChatTimer:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 832
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->showTimeItem(Z)V

    .line 833
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timerDrawable:Lorg/telegram/ui/Components/TimerDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/TimerDrawable;->setTime(I)V

    return-void

    .line 835
    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->hideTimeItem(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 883
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;ZZZZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;ZZZZLcom/exteragram/messenger/api/dto/BadgeDTO;Lorg/telegram/tgnet/TLRPC$EmojiStatus;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    .line 890
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    .line 893
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 894
    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 899
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getRightDrawable2()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    .line 900
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 901
    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 902
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    .line 909
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 910
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 911
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    .line 912
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 914
    invoke-static {p7}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    .line 916
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    .line 919
    :cond_4
    new-instance p3, Lorg/telegram/ui/Components/ScamDrawable;

    const/16 v4, 0xb

    xor-int/2addr p2, v2

    invoke-direct {p3, v4, p2}, Lorg/telegram/ui/Components/ScamDrawable;-><init>(II)V

    .line 920
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 921
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    sget p2, Lorg/telegram/messenger/R$string;->ScamMessage:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 923
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    :cond_5
    if-eqz p4, :cond_7

    .line 926
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_6

    .line 927
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    .line 928
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget p3, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedCheck:Landroid/graphics/drawable/Drawable;

    .line 930
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 931
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedCheck:Landroid/graphics/drawable/Drawable;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p4

    invoke-direct {p3, p4, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 932
    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedCheck:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p3, p4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrVerified:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 934
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    :cond_7
    if-eqz p6, :cond_9

    .line 937
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p6}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4, p8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 938
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p2, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParticles(ZZ)V

    .line 939
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    if-eqz v1, :cond_8

    .line 940
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 941
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 943
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    :cond_9
    if-eqz v1, :cond_a

    .line 948
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {p7}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4, p8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    .line 949
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 950
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 952
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    .line 953
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_a
    if-eqz p5, :cond_c

    if-eqz p6, :cond_b

    .line 957
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable2:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 958
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 959
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    .line 960
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 963
    :cond_b
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_premium_liststar:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 964
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p5

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p5, p6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 965
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 966
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-direct {p0, p4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 967
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 968
    sget p3, Lorg/telegram/messenger/R$string;->AccDescrPremium:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableContentDescription:Ljava/lang/String;

    .line 970
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    .line 971
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 975
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 976
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_d
    move-object p2, p1

    .line 978
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v2, :cond_e

    .line 979
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 983
    :cond_e
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 984
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setTitleColors(II)V
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleExpand(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x41200000    # 10.0f

    .line 449
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 450
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTitleIcons(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawableIsScamOrVerified:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 864
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMuted:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 866
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->rightDrawable2ContentDescription:Ljava/lang/String;

    .line 868
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable2(Landroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method public setUserAvatar(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 3

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 1362
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1363
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1364
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1365
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1368
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1370
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1371
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1374
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 1375
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 1376
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1377
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, v2, v2, v0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    return-void

    .line 1381
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 1382
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p2, :cond_3

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_3
    return-void
.end method

.method public showTimeItem(Z)V
    .locals 3

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 790
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 794
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 795
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->timeItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentTypingDrawable:Lorg/telegram/ui/Components/StatusDrawable;

    if-eqz v0, :cond_0

    .line 1664
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StatusDrawable;->setColor(I)V

    .line 1666
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1667
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->botVerificationDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 1670
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 1672
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->emojiStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_3

    .line 1673
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 1675
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1676
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1678
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->verifiedCheck:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1679
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_profile_verifiedCheck:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1681
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateOnlineCount()V
    .locals 8

    .line 1475
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1478
    iput v1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    .line 1479
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1483
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    .line 1484
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    const/16 v4, 0xc8

    if-eqz v3, :cond_2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v5, v4, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_6

    .line 1492
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-le v1, v4, :cond_6

    .line 1493
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->online_count:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    return-void

    .line 1485
    :cond_3
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1486
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1487
    iget v4, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1488
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_5

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v4, v2, :cond_4

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v6, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    :cond_4
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v4, 0x2710

    if-le v3, v4, :cond_5

    .line 1489
    iget v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSubtitle()V
    .locals 1

    const/4 v0, 0x0

    .line 1076
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V

    return-void
.end method

.method public updateSubtitle(Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1082
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1085
    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1086
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->businessLink:Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->link:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Business/BusinessLinksController;->stripHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    .line 1089
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1090
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1091
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    const/4 v5, 0x3

    const-wide/32 v6, 0x77628

    const/16 v8, 0x8

    if-nez v4, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v4, v9, v6

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v4

    if-eq v4, v8, :cond_4

    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 1092
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_d

    .line 1093
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const/4 v4, 0x0

    .line 1098
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleIsThinkingBot:Z

    .line 1099
    iget v9, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v11

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/messenger/MessagesController;->getPrintingString(JJZ)Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_5

    .line 1100
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    .line 1107
    :cond_5
    const-string v10, ""

    if-eqz v9, :cond_6

    .line 1108
    const-string v11, "..."

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    :cond_6
    const/4 v11, 0x2

    const-wide/16 v12, 0xb4

    .line 1112
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-wide/from16 v16, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-eqz v18, :cond_c

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v18

    if-eqz v18, :cond_7

    iget-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_7

    goto/16 :goto_2

    .line 1223
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1224
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1225
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1226
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_8

    .line 1228
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1229
    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    .line 1232
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    .line 1233
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v8, v5, [F

    aput v6, v8, v4

    .line 1234
    invoke-static {v7, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1235
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v7

    new-array v8, v5, [F

    aput v2, v8, v4

    invoke-static {v7, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v7, v11, [Landroid/animation/Animator;

    aput-object v6, v7, v4

    aput-object v2, v7, v5

    .line 1233
    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1236
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/Components/ChatAvatarContainer$6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer$6;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1242
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1243
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1245
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1246
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1251
    :cond_a
    :goto_0
    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v2, v6, v7, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPrintingStringType(JJ)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1252
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 1253
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitlePaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v9, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_b
    move-object v10, v9

    .line 1256
    :goto_1
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    move v4, v5

    goto/16 :goto_8

    .line 1113
    :cond_c
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v8, v8, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v8, :cond_11

    .line 1114
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_3
    return-void

    .line 1117
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1118
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_f

    .line 1119
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1120
    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    :cond_f
    const v2, 0x411b3333    # 9.7f

    if-eqz v1, :cond_10

    .line 1123
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    .line 1124
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1125
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    new-array v7, v5, [F

    aput v2, v7, v4

    invoke-static {v3, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1126
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v3

    new-array v7, v5, [F

    aput v6, v7, v4

    invoke-static {v3, v14, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v2, v6, v4

    aput-object v3, v6, v5

    .line 1124
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1127
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAvatarContainer$5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer$5;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1141
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1142
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1144
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1146
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1150
    :cond_11
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTypingAnimation(Z)V

    .line 1151
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v6

    const-string v8, "messages"

    const/16 v9, 0x8

    if-ne v6, v9, :cond_17

    .line 1152
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v6, v2, Lorg/telegram/ui/ChatActivity;->isSubscriberSuggestions:Z

    if-eqz v6, :cond_12

    .line 1153
    sget v2, Lorg/telegram/messenger/R$string;->ChatMessageSuggestions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 1155
    :cond_12
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v6

    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-nez v2, :cond_14

    .line 1157
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    neg-long v5, v5

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/TopicsController;->getTopicsCount(J)I

    move-result v2

    if-lez v2, :cond_13

    .line 1159
    const-string v3, "Chats"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1161
    :cond_13
    sget v2, Lorg/telegram/messenger/R$string;->ChatMessageSuggestions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v10, v2

    goto/16 :goto_8

    .line 1164
    :cond_14
    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v9

    invoke-virtual {v2, v6, v7, v9, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1167
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    goto :goto_5

    :cond_15
    move v2, v4

    :goto_5
    if-lez v2, :cond_16

    .line 1170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v8, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1172
    :cond_16
    sget v2, Lorg/telegram/messenger/R$string;->TopicProfileStatus:I

    iget v6, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(ILorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1176
    :cond_17
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_18

    .line 1177
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/SavedMessagesController;->getMessagesCount(J)I

    move-result v2

    .line 1178
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "SavedMessagesCount"

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 1179
    :cond_18
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    iget-boolean v9, v6, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v9, :cond_1b

    if-eqz v3, :cond_1b

    .line 1180
    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v9

    invoke-virtual {v2, v6, v7, v9, v10}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1183
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->totalMessagesCount:I

    sub-int/2addr v2, v5

    goto :goto_6

    :cond_19
    move v2, v4

    :goto_6
    if-lez v2, :cond_1a

    .line 1186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v8, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 1188
    :cond_1a
    sget v2, Lorg/telegram/messenger/R$string;->TopicProfileStatus:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_1b
    if-eqz v3, :cond_1c

    .line 1191
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    .line 1192
    iget v5, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->onlineCount:I

    invoke-static {v3, v2, v5}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getChatSubtitle(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_8

    :cond_1c
    if-eqz v2, :cond_27

    .line 1194
    iget v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_1d

    move-object v2, v3

    .line 1199
    :cond_1d
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto/16 :goto_8

    .line 1201
    :cond_1e
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v3, v8, v16

    if-nez v3, :cond_1f

    goto/16 :goto_8

    .line 1203
    :cond_1f
    iget v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_20

    .line 1204
    sget v2, Lorg/telegram/messenger/R$string;->ChatYourSelf:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 1205
    :cond_20
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v10, 0x514c8

    cmp-long v3, v8, v10

    if-eqz v3, :cond_26

    const-wide/32 v10, 0xbdb28

    cmp-long v3, v8, v10

    if-eqz v3, :cond_26

    const-wide/32 v10, 0xa719

    cmp-long v3, v8, v10

    if-nez v3, :cond_21

    goto :goto_7

    .line 1207
    :cond_21
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1208
    sget v2, Lorg/telegram/messenger/R$string;->SupportStatus:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 1209
    :cond_22
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_23

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-eqz v6, :cond_23

    .line 1210
    const-string v2, "BotUsers"

    const/16 v3, 0x2c

    invoke-static {v2, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_23
    if-eqz v3, :cond_24

    .line 1212
    sget v2, Lorg/telegram/messenger/R$string;->Bot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 1214
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aput-boolean v4, v3, v4

    .line 1215
    iget v6, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->currentAccount:I

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->allowShorterStatus:Z

    if-eqz v8, :cond_25

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->statusMadeShorter:[Z

    :cond_25
    new-array v5, v5, [Z

    invoke-static {v6, v2, v3, v7, v5}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;[Z[Z[Z)Ljava/lang/String;

    move-result-object v10

    .line 1216
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->isOnline:[Z

    aget-boolean v4, v2, v4

    goto :goto_8

    .line 1206
    :cond_26
    :goto_7
    sget v2, Lorg/telegram/messenger/R$string;->ServiceNotifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_27
    :goto_8
    if-eqz v4, :cond_28

    .line 1258
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_status:I

    goto :goto_9

    :cond_28
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    :goto_9
    iput v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    .line 1259
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_2c

    .line 1260
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_2a

    .line 1261
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1262
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-nez v1, :cond_29

    .line 1263
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1264
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1266
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void

    .line 1269
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v10, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1270
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->overrideSubtitleColor:Ljava/lang/Integer;

    if-nez v1, :cond_2b

    .line 1271
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1272
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitleColorKey:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1274
    :cond_2b
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->animatedSubtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void

    .line 1278
    :cond_2c
    iput-object v10, v0, Lorg/telegram/ui/Components/ChatAvatarContainer;->lastSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method protected useAnimatedSubtitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
