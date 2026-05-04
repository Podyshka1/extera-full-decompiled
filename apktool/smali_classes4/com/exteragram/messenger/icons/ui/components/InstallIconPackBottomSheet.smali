.class public final Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;
    }
.end annotation


# instance fields
.field private final iconPack:Lcom/exteragram/messenger/icons/IconPack;

.field private final installDelegate:Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;


# direct methods
.method public static synthetic $r8$lambda$IjIjXx-swikoBRDmnchaLkDpX8s(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->createView$lambda$1(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgLNG_8FuU32YSRiUHX-uUpOYBY(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->createView$lambda$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    return-void
.end method

.method public static $r8$lambda$UztXwNnZGEoTrWPoqye0HRJY5GU(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 2

    .line 42
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$gyXYJjokTk7rTbJ-bMSBdTp0lkA(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->createView$lambda$2$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Z)V

    return-void
.end method

.method public static $r8$lambda$lAHL0JphJT6_n-JA9poZvzL8HV0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {p0}, Lcom/exteragram/messenger/icons/IconPack;->getLocation()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$rTX5xf074cf39oZNZ3L1bsp1ykM(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->_init_$lambda$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6qz-6uuadbAqiX-EsPlKPVjwOQ(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->createView$lambda$2(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;ZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/exteragram/messenger/icons/IconPack;Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconPack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 30
    iput-object p2, p0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    .line 31
    iput-object p3, p0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->installDelegate:Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;

    .line 39
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 40
    new-instance p1, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 3

    .line 41
    new-instance v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 50
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 52
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    new-instance v4, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;

    invoke-direct {v4, v1}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v4, v3}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->setCircularMode(Z)V

    const/16 v6, 0xbb8

    .line 56
    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->setRefreshTime(I)V

    .line 57
    iget-object v6, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v4, v6}, Lcom/exteragram/messenger/icons/ui/components/IconPackPreviewView;->setIconPack(Lcom/exteragram/messenger/icons/IconPack;)V

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 61
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 59
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 73
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x11

    .line 75
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v6, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v6}, Lcom/exteragram/messenger/icons/IconPack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v12, 0x0

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    .line 80
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 78
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v4, Lorg/telegram/ui/Components/EffectsTextView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v6}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 91
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    const-string v6, "fonts/rregular.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 95
    invoke-virtual {v4, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-object v8, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    iget-object v8, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    iget-object v8, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 102
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, " \u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_2
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v8

    .line 105
    new-instance v9, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V

    invoke-static {v7, v8, v9}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->fullyFormatText(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x40800000    # 4.0f

    .line 111
    invoke-static/range {v8 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 109
    invoke-virtual {v2, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    sget-object v4, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    iget-object v7, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v7}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/exteragram/messenger/icons/IconManager;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v5

    .line 124
    :goto_0
    new-instance v7, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v1, v3, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 125
    invoke-virtual {v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 127
    iget-object v8, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v8}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "IconCount"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-virtual {v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(Ljava/lang/String;Z)V

    if-eqz v4, :cond_4

    .line 131
    sget v8, Lorg/telegram/messenger/R$string;->UpdatePack:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 133
    :cond_4
    sget v8, Lorg/telegram/messenger/R$string;->InstallPack:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :goto_1
    const/16 v14, 0x10

    const/16 v15, 0x10

    const/4 v9, -0x1

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    .line 137
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 135
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    sget-object v8, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->iconPack:Lcom/exteragram/messenger/icons/IconPack;

    invoke-virtual {v9}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 141
    new-instance v8, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v9, 0x15

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v8, v1, v9, v10}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 143
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    .line 144
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    .line 145
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    .line 142
    invoke-virtual {v8, v9, v10, v11}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 147
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 148
    invoke-virtual {v8, v3, v5}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v9, 0xa

    .line 149
    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 151
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    invoke-virtual {v9, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    sget v3, Lorg/telegram/messenger/R$string;->EnableAfterInstallation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v10, 0x15

    const/high16 v11, 0x41a80000    # 21.0f

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 159
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 157
    invoke-virtual {v3, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 165
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v5, 0x40c00000    # 6.0f

    .line 166
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    .line 167
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    .line 168
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 164
    invoke-virtual {v6, v1, v10, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/16 v12, 0x18

    const/16 v13, 0x18

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 172
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 170
    invoke-virtual {v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    const/4 v3, -0x2

    .line 176
    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 174
    invoke-virtual {v6, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v1, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/CheckBox2;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x3d4ccccd    # 0.05f

    const v3, 0x3f99999a    # 1.2f

    .line 188
    invoke-static {v6, v1, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 191
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/16 v3, 0x8

    .line 190
    invoke-static {v1, v3, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 197
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 195
    invoke-virtual {v2, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 211
    :goto_2
    new-instance v1, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, v8, v4}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Z)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method private static final createView$lambda$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private static final createView$lambda$1(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 183
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method private static final createView$lambda$2(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;ZLandroid/view/View;)V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 213
    new-instance p3, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p2}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Z)V

    const-wide/16 p0, 0xc8

    invoke-static {p3, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final createView$lambda$2$0(Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;Lorg/telegram/ui/Components/CheckBox2;Z)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet;->installDelegate:Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 214
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/exteragram/messenger/icons/ui/components/InstallIconPackBottomSheet$InstallDelegate;->onInstall(ZZ)V

    return-void
.end method
