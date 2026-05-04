.class public Lorg/telegram/ui/TopicCreateFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

.field checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

.field created:Z

.field defaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field dialogId:J

.field editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field firstSymbol:Ljava/lang/String;

.field forumBubbleDrawable:Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

.field iconColor:I

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private openInChatActivity:Lorg/telegram/ui/ChatActivity;

.field replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

.field selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field selectedEmojiDocumentId:J

.field topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field topicId:J


# direct methods
.method public static synthetic $r8$lambda$DeQ7hFf-Dj-aVXNnNJspJWgEadQ(Lorg/telegram/ui/TopicCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicCreateFragment;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IcgdsjAljmTA7OUK8gBy40mO17E(Lorg/telegram/ui/TopicCreateFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TopicCreateFragment;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNzxIkwwoCGJOQoN5eFLZS8xULU(Lorg/telegram/ui/TopicCreateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/TopicCreateFragment;->lambda$selectEmoji$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetopenInChatActivity(Lorg/telegram/ui/TopicCreateFragment;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/TopicCreateFragment;->openInChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectEmoji(Lorg/telegram/ui/TopicCreateFragment;Ljava/lang/Long;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TopicCreateFragment;->selectEmoji(Ljava/lang/Long;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 75
    new-array p1, p1, [Lorg/telegram/ui/Components/BackupImageView;

    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    .line 77
    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->firstSymbol:Ljava/lang/String;

    .line 588
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/TopicCreateFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method public static create(JJ)Lorg/telegram/ui/TopicCreateFragment;
    .locals 2

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string p0, "topic_id"

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 96
    new-instance p0, Lorg/telegram/ui/TopicCreateFragment;

    invoke-direct {p0, v0}, Lorg/telegram/ui/TopicCreateFragment;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 4

    .line 427
    iget-wide v0, p0, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez p1, :cond_0

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->forumBubbleDrawable:Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->moveNexColor()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 1

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$selectEmoji$2()V
    .locals 3

    .line 558
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private selectEmoji(Ljava/lang/Long;Z)V
    .locals 6

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    move-wide v2, v0

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 544
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V

    .line 545
    iget-wide v4, p0, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-nez p2, :cond_3

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3

    .line 549
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_3

    .line 550
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 552
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiHint:I

    .line 555
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PremiumMore:I

    .line 556
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    .line 553
    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 560
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 565
    :cond_3
    iput-wide v2, p0, Lorg/telegram/ui/TopicCreateFragment;->selectedEmojiDocumentId:J

    cmp-long p1, v2, v0

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 568
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v4, 0xa

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p1, v4, v5, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 569
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 570
    iget-object v2, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 571
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 573
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/LetterDrawable;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 574
    iget-object v2, p0, Lorg/telegram/ui/TopicCreateFragment;->firstSymbol:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/TopicCreateFragment;->defaultIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 580
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p2, p1, v0

    .line 581
    aget-object v2, p1, v1

    aput-object v2, p1, v0

    .line 582
    aput-object p2, p1, v1

    const/high16 p1, 0x3f000000    # 0.5f

    .line 584
    invoke-static {v2, v1, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 585
    iget-object p2, p0, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object p2, p2, v1

    invoke-static {p2, v0, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 121
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->EditTopic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->NewTopic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 127
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/TopicCreateFragment$1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/TopicCreateFragment$1;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 292
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v2, 0x2

    const/4 v9, 0x1

    if-nez v0, :cond_1

    .line 293
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Create:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_1

    .line 295
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 297
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 298
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 300
    new-instance v0, Lorg/telegram/ui/TopicCreateFragment$2;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/TopicCreateFragment$2;-><init>(Lorg/telegram/ui/TopicCreateFragment;Landroid/content/Context;)V

    .line 316
    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 317
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 319
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 321
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 323
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 324
    iget-object v3, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v3, :cond_2

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v3, v9, :cond_2

    .line 325
    sget v3, Lorg/telegram/messenger/R$string;->CreateGeneralTopicTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 327
    :cond_2
    sget v3, Lorg/telegram/messenger/R$string;->CreateTopicTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :goto_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 333
    sget v5, Lorg/telegram/messenger/R$string;->EnterTopicName:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 335
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 336
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v12, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v4, v6, v7, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 337
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 339
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/TextView;->getInputType()I

    move-result v5

    or-int/lit16 v5, v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 340
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v17, 0x41a80000    # 21.0f

    const/high16 v18, 0x40800000    # 4.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x424c0000    # 51.0f

    const/high16 v16, 0x40800000    # 4.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/TopicCreateFragment$3;

    invoke-direct {v5, v1}, Lorg/telegram/ui/TopicCreateFragment$3;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 371
    new-instance v4, Lorg/telegram/ui/TopicCreateFragment$4;

    invoke-direct {v4, v1, v8}, Lorg/telegram/ui/TopicCreateFragment$4;-><init>(Lorg/telegram/ui/TopicCreateFragment;Landroid/content/Context;)V

    .line 426
    new-instance v5, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v5, v10

    :goto_3
    const/16 v6, 0x11

    if-ge v5, v2, :cond_3

    .line 432
    iget-object v7, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    new-instance v12, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v12, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v12, v7, v5

    .line 433
    iget-object v7, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v7, v7, v5

    const/16 v12, 0x1c

    invoke-static {v12, v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x28

    const/high16 v13, 0x42200000    # 40.0f

    const/16 v14, 0x10

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v16, 0x0

    .line 435
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 438
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 440
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-static {v3, v7}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawableShadowed(II)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x9

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/16 v14, 0x30

    const/16 v15, 0x9

    const/16 v16, 0x1

    .line 441
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 447
    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    const/4 v13, -0x1

    if-eqz v2, :cond_5

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-eq v2, v9, :cond_4

    goto/16 :goto_4

    .line 500
    :cond_4
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 501
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_filled_general:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v3, 0x16

    .line 503
    invoke-static {v3, v3, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 507
    invoke-static {v13, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 505
    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawableShadowed(II)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 513
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 514
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/Switch;->setDrawIconType(I)V

    .line 515
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    sget v3, Lorg/telegram/messenger/R$string;->EditTopicHide:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->hidden:Z

    xor-int/2addr v4, v9

    invoke-virtual {v0, v3, v4, v10}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 516
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v3, v4, v5, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    new-instance v3, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/TopicCreateFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicCreateFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->checkBoxCell:Lorg/telegram/ui/Cells/TextCheckCell2;

    const/16 v3, 0x32

    const/16 v4, 0x77

    invoke-static {v13, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v19, 0x41100000    # 9.0f

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x42600000    # 56.0f

    const/16 v16, 0x30

    const/high16 v17, 0x41100000    # 9.0f

    const/high16 v18, 0x41000000    # 8.0f

    .line 521
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 524
    sget v2, Lorg/telegram/messenger/R$string;->EditTopicHideInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v17, 0x0

    const/high16 v18, 0x42680000    # 58.0f

    .line 525
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 448
    :cond_5
    :goto_4
    new-instance v0, Lorg/telegram/ui/TopicCreateFragment$5;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/TopicCreateFragment$5;-><init>(Lorg/telegram/ui/TopicCreateFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 474
    iget-boolean v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setAnimationsEnabled(Z)V

    .line 475
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 476
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/high16 v19, 0x41400000    # 12.0f

    const/high16 v20, 0x41400000    # 12.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x41400000    # 12.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    const-string v0, ""

    iget v2, v1, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    invoke-static {v0, v2, v10}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 479
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/CombinedDrawable;

    .line 480
    invoke-virtual {v2}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iput-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->forumBubbleDrawable:Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    .line 482
    new-instance v2, Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {v2, v8}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    .line 483
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    iget-object v3, v1, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    invoke-direct {v2, v0, v3, v10, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 484
    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 486
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setForumIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iput-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->defaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 490
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->addView(Landroid/view/View;)V

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->replaceableIconDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v9

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->addView(Landroid/view/View;)V

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v10

    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->defaultIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v10

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v9, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 495
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v0, v0, v9

    invoke-static {v0, v10, v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 497
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->forumBubbleDrawable:Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->addParent(Landroid/view/View;)V

    .line 498
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->forumBubbleDrawable:Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->backupImageView:[Lorg/telegram/ui/Components/BackupImageView;

    aget-object v2, v2, v9

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->addParent(Landroid/view/View;)V

    :goto_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 527
    invoke-static {v13, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v0, :cond_6

    .line 530
    iget-object v2, v1, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, v1, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/TopicCreateFragment;->selectEmoji(Ljava/lang/Long;Z)V

    goto :goto_6

    :cond_6
    const-wide/16 v2, 0x0

    .line 533
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/telegram/ui/TopicCreateFragment;->selectEmoji(Ljava/lang/Long;Z)V

    .line 536
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    neg-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "topic_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/TopicCreateFragment;->topicId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/TopicCreateFragment;->dialogId:J

    neg-long v1, v1

    iget-wide v3, p0, Lorg/telegram/ui/TopicCreateFragment;->topicId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->findTopic(JJ)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->topicForEdit:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    iput v0, p0, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    goto :goto_0

    .line 114
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->serverSupportedColor:[I

    sget-object v1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    array-length v2, v0

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lorg/telegram/ui/TopicCreateFragment;->iconColor:I

    .line 116
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 613
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 616
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 600
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_0

    .line 601
    iget-boolean p1, p0, Lorg/telegram/ui/TopicCreateFragment;->created:Z

    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 605
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    if-eqz p1, :cond_1

    .line 607
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setAnimationsEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 592
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    :cond_0
    return-void
.end method

.method public setOpenInChatActivity(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/TopicCreateFragment;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/TopicCreateFragment;->openInChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method public showKeyboard()V
    .locals 1

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/TopicCreateFragment;->editTextBoldCursor:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method
