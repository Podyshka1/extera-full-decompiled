.class public Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$44MutkypQCN2Go1Rsj3inguQDWc(Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 13

    .line 37
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 39
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    new-instance v4, Lorg/telegram/ui/Components/StickerImageView;

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v4, p1, v5}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    .line 49
    const-string v5, "exteraGramPlaceholders"

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/StickerImageView;->setStickerPackName(Ljava/lang/String;)V

    const/16 v5, 0xa

    .line 50
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    .line 51
    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v6, 0x90

    const/16 v7, 0x90

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x10

    .line 52
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 57
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    sget v5, Lorg/telegram/messenger/R$string;->PluginsSafeMode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x42200000    # 40.0f

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x0

    const/high16 v9, 0x42200000    # 40.0f

    const/high16 v10, 0x41a00000    # 20.0f

    .line 60
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    const-string v5, "fonts/rregular.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 65
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 66
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    sget v5, Lorg/telegram/messenger/R$string;->PluginsSafeModeInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41a80000    # 21.0f

    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v10, 0x41000000    # 8.0f

    .line 68
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v4, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, p1, v3, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 71
    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 72
    sget p1, Lorg/telegram/messenger/R$string;->Disable:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 73
    new-instance p1, Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/ui/components/SafeModeBottomSheet;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v5, -0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41e00000    # 28.0f

    .line 78
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 75
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->pluginsSafeMode:Z

    const-string v1, "pluginsSafeMode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/exteragram/messenger/plugins/PluginsController;->restart()V

    return-void
.end method


# virtual methods
.method public bridge synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method
