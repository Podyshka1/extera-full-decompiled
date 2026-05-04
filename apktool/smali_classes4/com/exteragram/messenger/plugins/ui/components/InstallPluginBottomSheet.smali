.class public Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;
    }
.end annotation


# instance fields
.field private final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private volatile cancellationRequested:Z

.field private currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private delayedLoadingRunnable:Ljava/lang/Runnable;

.field private enableAfterInstallation:Z

.field private installing:Z

.field private final isUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$0HxVViXM3BdpXiQ1U04HNxMJZpQ(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 324
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 325
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$8npRuZZpUjjXBzt2ERoDNo7yOSg(Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 0

    .line 475
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->openPluginSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9EvBtnOISdc1KUxDJuYuDy-DqQg(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$7(Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ap1OjPCrSmy6TAOxwhZiqgBVglM(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$E4sf1qt-hYxGgxEPKkmoQQexYCQ(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$showSuccessBulletin$12(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HcIbmBwEgcm0jyZzaQRLJUG2ALM(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$showSuccessBulletin$15(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NCk_PnzBOhorfCXboXcLY60hXac(Landroid/widget/LinearLayout;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 425
    sget-object p0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 426
    iget-boolean p1, p1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-eqz p1, :cond_0

    const-wide v0, -0x53130ba31c0974dbL    # -2.7761827122680035E-92

    :goto_0
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-wide v0, -0x53130bb71c0974dbL    # -2.7761534517907867E-92

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 427
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q89eYd-nvnkq65mLIdMAjRU0Uco(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Landroid/view/View;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$0(Landroid/view/View;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPWek7WT3ffv0ipVcMhBksJjwa8(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$10(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvJDf0W-VltZZt4leIihxTBEd94(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 338
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 339
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->TextCopied:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$nIj0Qxu_jv18K1X1AmO9nFNRVZM(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$6(Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOximtcpID4TyB3hrpNDRBjwkCs(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$9(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGN0BdZ_uqRJWzzjtZ-LERVd08I(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$showSuccessBulletin$14(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qmARahodWV22fVVcGE9qDsFATsU(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$1(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rINjEYVVBhKr5c-aMtiAwFJCijU(Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 0

    .line 495
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/exteragram/messenger/plugins/PluginsController;->openPluginSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uTQAqKd2QAYb4yMvnxnD4wBhIgQ(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wHXh1YzMFiRWzeISSK0Nl7Qn-7s(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->lambda$new$8(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbutton(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcancellationRequested(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdelayedLoadingRunnable(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinstalling(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdelayedLoadingRunnable(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 89
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 79
    iput-boolean v6, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->enableAfterInstallation:Z

    .line 80
    iput-boolean v6, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    .line 81
    iput-boolean v6, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    .line 90
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$1;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 96
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    iget-object v4, v4, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v5, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v5}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->isUpdate:Z

    .line 98
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 99
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 101
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 103
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 105
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 106
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object v10, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v10}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41400000    # 12.0f

    if-eqz v10, :cond_0

    iget-object v10, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v10}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v10

    if-ltz v10, :cond_0

    .line 109
    new-instance v10, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$2;

    invoke-direct {v10, v0, v5}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$2;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Landroid/content/Context;)V

    .line 140
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 141
    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x4e

    const/16 v14, 0x4e

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1c

    .line 142
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v12

    iget-object v13, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v13}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v14}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v14

    const-wide v15, -0x53130b2c1c0974dbL    # -2.7763568121074436E-92

    invoke-static/range {v15 .. v16}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v10, v13, v14, v15}, Lorg/telegram/messenger/MediaDataController;->setPlaceholderImageByIndex(Lorg/telegram/ui/Components/BackupImageView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    new-instance v10, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    sget v12, Lorg/telegram/messenger/R$drawable;->plugin_large:I

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 148
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v12, 0x429c0000    # 78.0f

    .line 149
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x4e

    const/16 v14, 0x4e

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1c

    .line 150
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :goto_0
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v13, 0x41900000    # 18.0f

    .line 156
    invoke-virtual {v10, v9, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v13, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v13}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x28

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/16 v17, 0x28

    const/16 v18, 0x10

    .line 159
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v10, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-direct {v10, v5, v13}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 162
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    const-wide v13, -0x53130b341c0974dbL    # -2.776345107916557E-92

    .line 163
    invoke-static {v13, v14}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    new-instance v13, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v13}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v14, 0x41600000    # 14.0f

    .line 166
    invoke-virtual {v10, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move/from16 v21, v11

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 168
    new-instance v11, Landroid/text/SpannableStringBuilder;

    sget v16, Lorg/telegram/messenger/R$string;->PluginVersion:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-wide v16, -0x53130b471c0974dbL    # -2.776317310463201E-92

    invoke-static/range {v16 .. v17}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 169
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-eqz v4, :cond_1

    .line 171
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v4

    iget-object v4, v4, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v9, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v9}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-wide v16, -0x53130b491c0974dbL    # -2.7763143844154792E-92

    invoke-static/range {v16 .. v17}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v9}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move/from16 v19, v15

    .line 174
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediathin:I

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-wide v22, -0x53130b4e1c0974dbL    # -2.776307069296175E-92

    invoke-static/range {v22 .. v23}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v18

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v20, v6

    invoke-static/range {v15 .. v20}, Lcom/exteragram/messenger/components/VerticalImageSpan;->createSpan(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    .line 175
    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v14

    const/16 v9, 0x21

    invoke-virtual {v11, v6, v14, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 178
    :cond_1
    iget-object v4, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    :goto_1
    const-wide v14, -0x53130b511c0974dbL    # -2.7763026802245925E-92

    .line 180
    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v6}, Lcom/exteragram/messenger/plugins/Plugin;->getAuthor()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V

    invoke-static {v6, v1, v9}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 181
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x15

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/16 v17, 0x15

    const/16 v18, 0x4

    .line 182
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-boolean v4, v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-eqz v4, :cond_3

    sget v6, Lorg/telegram/messenger/R$drawable;->trusted_mini:I

    goto :goto_2

    :cond_3
    sget v6, Lorg/telegram/messenger/R$drawable;->unknown_mini:I

    :goto_2
    if-eqz v4, :cond_4

    .line 185
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    goto :goto_3

    :cond_4
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    :goto_3
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    .line 186
    iget-boolean v9, v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-eqz v9, :cond_5

    sget v9, Lorg/telegram/messenger/R$string;->PluginSourceTrusted:I

    :goto_4
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_5
    sget v9, Lorg/telegram/messenger/R$string;->PluginSourceUnknown:I

    goto :goto_4

    .line 188
    :goto_5
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x3d4ccccd    # 0.05f

    const/high16 v14, 0x3fc00000    # 1.5f

    .line 189
    invoke-static {v10, v11, v14}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/4 v15, 0x0

    .line 190
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v16, 0x41a00000    # 20.0f

    .line 191
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const v11, 0x3dcccccd    # 0.1f

    invoke-static {v4, v11}, Lorg/telegram/messenger/AndroidUtilities;->multiplyAlphaComponent(IF)I

    move-result v11

    invoke-static {v15, v14, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v19, 0x41800000    # 16.0f

    move/from16 v20, v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    move-object/from16 v19, v7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v10, v11, v15, v14, v7}, Landroid/view/View;->setPadding(IIII)V

    const/16 v7, 0x11

    .line 193
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v4, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v22, 0xe

    const/16 v23, 0xe

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 198
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v10, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-wide v14, -0x53130b551c0974dbL    # -2.776296828129149E-92

    .line 201
    invoke-static {v14, v15}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41500000    # 13.0f

    const/4 v7, 0x1

    .line 203
    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v27, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x11

    const/16 v26, 0xc

    .line 206
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v8, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v4, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x3

    .line 249
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-wide v6, -0x53130b681c0974dbL    # -2.776269030675793E-92

    .line 250
    invoke-static {v6, v7}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 252
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x1

    .line 253
    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 254
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 255
    iget-object v6, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 256
    invoke-virtual {v6}, Lcom/exteragram/messenger/plugins/Plugin;->getDescription()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V

    invoke-static {v6, v1, v7}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fullyFormatText(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 255
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v27, 0x15

    const/16 v22, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x15

    const/16 v26, 0x1c

    .line 258
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v4, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 261
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v27, 0x15

    const/16 v28, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x15

    const/16 v26, 0xc

    .line 262
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v6, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v6}, Lcom/exteragram/messenger/plugins/Plugin;->getRequirements()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginRequirementsView;->setRequirements(Ljava/util/List;)V

    .line 266
    :cond_6
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 267
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v15, 0x0

    .line 268
    invoke-direct {v0, v15}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->restoreButtonText(Z)V

    .line 269
    new-instance v6, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v27, 0x10

    const/16 v28, 0x10

    const/16 v22, -0x1

    const/16 v23, 0x30

    const/16 v24, 0x0

    const/16 v25, 0x10

    const/16 v26, 0x1c

    .line 369
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v2}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 372
    new-instance v2, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x15

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v5, v4, v6}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 373
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v2, v4, v6, v7}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v7, 0x1

    .line 374
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 375
    iget-boolean v4, v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->enableAfterInstallation:Z

    const/4 v15, 0x0

    invoke-virtual {v2, v4, v15}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v4, 0xa

    .line 376
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 378
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 380
    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 381
    sget v6, Lorg/telegram/messenger/R$string;->EnableAfterInstallation:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v22, 0x15

    const/high16 v23, 0x41a80000    # 21.0f

    const/16 v24, 0x11

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 384
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    .line 387
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v9, 0x41000000    # 8.0f

    .line 388
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    const/16 v27, 0x6

    const/16 v28, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x18

    const/16 v24, 0x10

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 389
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x10

    const/4 v9, -0x2

    .line 390
    invoke-static {v9, v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0, v2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/Components/CheckBox2;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x3f99999a    # 1.2f

    const v4, 0x3d4ccccd    # 0.05f

    .line 395
    invoke-static {v7, v4, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 397
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/16 v4, 0x8

    invoke-static {v2, v4, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v27, 0x0

    const/16 v28, 0x8

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/16 v24, 0x1

    .line 398
    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :cond_7
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x3e19999a    # 0.15f

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 402
    invoke-static {v2, v4, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 403
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 405
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 406
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v3, v1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v7, 0x1

    invoke-static {v1, v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v16, 0x41800000    # 16.0f

    const/16 v17, 0x0

    const/16 v11, 0x28

    const/high16 v12, 0x42200000    # 40.0f

    const/16 v13, 0x35

    const/4 v14, 0x0

    const/high16 v15, 0x41800000    # 16.0f

    .line 415
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    move-object/from16 v4, v19

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 419
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 421
    iget-boolean v1, v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-wide v4, -0x53130b7b1c0974dbL    # -2.776241233222437E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    iget-boolean v1, v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-nez v1, :cond_a

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->preferences:Landroid/content/SharedPreferences;

    const-wide v4, -0x53130b8f1c0974dbL    # -2.7762119727452203E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-interface {v1, v2, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 423
    :cond_9
    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1, v10, v3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda8;-><init>(Landroid/widget/LinearLayout;Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;)V

    const-wide/16 v2, 0x258

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;I)I
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;I)I
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;I)I
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 5

    const/4 v0, 0x2

    .line 229
    new-array v1, v0, [I

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 232
    new-array v0, v0, [I

    .line 233
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 235
    aget v3, v1, v2

    aget v4, v0, v2

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v3, 0x1

    .line 236
    aget v4, v1, v3

    aget v0, v0, v3

    sub-int/2addr v4, v0

    aput v4, v1, v3

    const/high16 v0, 0x42c80000    # 100.0f

    .line 238
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 239
    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 241
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p1, 0x42000000    # 32.0f

    .line 242
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    const-wide/16 v0, 0x157c

    .line 243
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 244
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Landroid/view/View;)V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 213
    :cond_0
    iget-boolean p1, p1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->trusted:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->PluginSourceTrustedInfo:I

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->PluginSourceUnknownInfo:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    .line 217
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    .line 218
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 219
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 220
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    .line 221
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->allowBlur(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    .line 222
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/high16 v6, 0x42000000    # 32.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x37

    const/high16 v4, 0x42000000    # 32.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Landroid/view/View;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$10(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 6

    .line 407
    iget-boolean p3, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->dismiss()V

    .line 409
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x53130bcb1c0974dbL    # -2.7761241913135698E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Ljava/lang/String;)V
    .locals 4

    if-nez p3, :cond_0

    .line 334
    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->showSuccessBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/Plugin;)V

    return-void

    .line 336
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->PluginInstalledButFailedToEnable:I

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 337
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    invoke-static {p1}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->createCopySpan(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/text/Spannable;

    move-result-object v2

    new-instance v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    .line 295
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 301
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 302
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithTouchOutside(Z)V

    .line 303
    iput-boolean v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    .line 305
    iget-boolean v2, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    if-eqz v2, :cond_1

    .line 306
    iput-boolean v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    .line 307
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->restoreButtonText(Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    const-wide v2, -0x53130bdd1c0974dbL    # -2.7760978568840747E-92

    .line 312
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->restoreButtonText(Z)V

    return-void

    .line 316
    :cond_2
    invoke-direct {p0, v0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->restoreButtonText(Z)V

    const-wide v2, -0x53130bf41c0974dbL    # -2.7760642073352753E-92

    .line 318
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-wide v3, -0x53130bf61c0974dbL    # -2.7760612812875537E-92

    .line 319
    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x53130c001c0974dbL    # -2.7760466510489452E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$raw;->error:I

    sget v4, Lorg/telegram/messenger/R$string;->PluginInstallError:I

    iget-object p2, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    .line 323
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->createCopySpan(Lorg/telegram/ui/ActionBar/BaseFragment;)Landroid/text/Spannable;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3, p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->dismiss()V

    .line 331
    iget-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->enableAfterInstallation:Z

    if-eqz p1, :cond_4

    .line 332
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    iget-object v1, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p3, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda10;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/exteragram/messenger/plugins/PluginsController;->setPluginEnabled(Ljava/lang/String;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 345
    :cond_4
    iget-object p1, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    invoke-direct {p0, p3, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->showSuccessBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/Plugin;)V

    return-void
.end method

.method private synthetic lambda$new$7(Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 1

    .line 294
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/lang/String;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$8(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 270
    iget-boolean p4, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 271
    iget-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    if-nez p1, :cond_2

    .line 272
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    .line 273
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 274
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 278
    :cond_0
    iput-boolean v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->installing:Z

    const/4 p4, 0x0

    .line 279
    iput-boolean p4, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->cancellationRequested:Z

    .line 281
    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 282
    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithTouchOutside(Z)V

    .line 284
    iget-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    if-eqz p4, :cond_1

    .line 285
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 287
    :cond_1
    new-instance p4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda12;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V

    iput-object p4, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->delayedLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    .line 288
    invoke-static {p4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 290
    sget-object p4, Lcom/exteragram/messenger/plugins/PluginsController;->engines:Lj$/util/concurrent/ConcurrentHashMap;

    const-wide v0, -0x53130bd61c0974dbL    # -2.7761080980511006E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;

    if-nez p4, :cond_3

    :cond_2
    return-void

    .line 294
    :cond_3
    iget-object p1, p1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$PluginInstallParams;->filePath:Ljava/lang/String;

    iget-object v0, p2, Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;->plugin:Lcom/exteragram/messenger/plugins/Plugin;

    new-instance v1, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda13;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Lcom/exteragram/messenger/plugins/PluginsController$PluginValidationResult;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    new-instance p2, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;

    invoke-direct {p2, p0}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$3;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;)V

    invoke-virtual {p4, p1, v0, v1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine;->loadPluginFromFile(Ljava/lang/String;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/messenger/Utilities$Callback;Lcom/exteragram/messenger/plugins/pip/PipController$InstallerDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 1

    .line 392
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 393
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->enableAfterInstallation:Z

    return-void
.end method

.method private synthetic lambda$showSuccessBulletin$12(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 1

    const/4 v0, 0x1

    .line 443
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 444
    invoke-direct {p0, p2, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->showSimpleSuccessBulletin(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSuccessBulletin$14(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 2

    .line 451
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 456
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 458
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 459
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 464
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 465
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 466
    iget-boolean p1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->isUpdate:Z

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->PluginUpdated:I

    goto :goto_1

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->PluginInstalled:I

    :goto_1
    new-array p4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p5, p4, v0

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 467
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p4

    iget-object p4, p4, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz p4, :cond_3

    .line 470
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p5

    invoke-virtual {p3}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettings(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p4}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 471
    sget p4, Lorg/telegram/messenger/R$string;->Settings:I

    .line 474
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {p5, p3}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda14;-><init>(Lcom/exteragram/messenger/plugins/Plugin;)V

    .line 471
    invoke-virtual {p6, p2, p1, p4, p5}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_2

    .line 478
    :cond_3
    invoke-virtual {p6, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 480
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$showSuccessBulletin$15(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 8

    .line 450
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda11;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreButtonText(Z)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->isUpdate:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->UpdatePlugin:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->InstallPlugin:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 503
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setSubText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private showSimpleSuccessBulletin(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 4

    .line 490
    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-boolean v1, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->isUpdate:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->PluginUpdated:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->PluginInstalled:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v1

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/PluginsController;->plugins:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v1, :cond_1

    .line 494
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v2

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/exteragram/messenger/plugins/PluginsController;->hasPluginSettings(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v2, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v3, p1}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda15;-><init>(Lcom/exteragram/messenger/plugins/Plugin;)V

    invoke-virtual {p2, v1, v0, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 497
    :cond_1
    sget p1, Lorg/telegram/messenger/R$raw;->contact_check:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private showSuccessBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/exteragram/messenger/plugins/Plugin;)V
    .locals 9

    .line 433
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    .line 434
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getName()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getIndex()I

    move-result p1

    if-ltz p1, :cond_0

    .line 437
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 438
    invoke-virtual {p2}, Lcom/exteragram/messenger/plugins/Plugin;->getPack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 440
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 442
    new-instance v4, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v2, p2, v6}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda16;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V

    const-wide/16 v7, 0x12c

    .line 448
    invoke-static {v4, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 450
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet$$ExternalSyntheticLambda17;-><init>(Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/exteragram/messenger/plugins/Plugin;Ljava/lang/Runnable;Ljava/lang/String;Lorg/telegram/ui/Components/BulletinFactory;)V

    const/4 p2, 0x1

    invoke-virtual {v7, p1, v8, p2, v0}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-void

    :cond_0
    move-object v1, p0

    move-object v3, p2

    .line 485
    invoke-direct {p0, v3, v6}, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->showSimpleSuccessBulletin(Lcom/exteragram/messenger/plugins/Plugin;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    .line 510
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 512
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected onSwipeStarts()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/InstallPluginBottomSheet;->currentHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    return-void
.end method

.method public bridge synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method
