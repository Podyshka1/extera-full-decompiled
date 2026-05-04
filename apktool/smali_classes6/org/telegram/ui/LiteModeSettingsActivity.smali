.class public Lorg/telegram/ui/LiteModeSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;,
        Lorg/telegram/ui/LiteModeSettingsActivity$Item;,
        Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;,
        Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;
    }
.end annotation


# instance fields
.field private FLAGS_CHAT:I

.field adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

.field contentView:Landroid/widget/FrameLayout;

.field private expanded:[Z

.field private items:Ljava/util/ArrayList;

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private oldItems:Ljava/util/ArrayList;

.field private onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

.field restrictBulletin:Lorg/telegram/ui/Components/Bulletin;


# direct methods
.method public static synthetic $r8$lambda$3jQ9UWJyha9qInDmCWiVDS5iOCw(Lorg/telegram/ui/LiteModeSettingsActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obk5RgM4OOmZtvLVmGOby0kWjOQ(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$createView$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$vqpET2vyGgkoQJmeYsMUmdLbsk8(Lorg/telegram/ui/LiteModeSettingsActivity;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->lambda$highlightRow$2(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexpanded(Lorg/telegram/ui/LiteModeSettingsActivity;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetExpandedIndex(Lorg/telegram/ui/LiteModeSettingsActivity;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateInfo(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateValues(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 173
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v0, 0x3

    .line 175
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private getExpandedIndex(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x701c

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 181
    :cond_1
    iget v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private highlightRow(I)V
    .locals 1

    .line 218
    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;I)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;IFF)V
    .locals 3

    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    .line 118
    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p2, p4, :cond_0

    goto/16 :goto_2

    .line 121
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 123
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p4, v0, :cond_2

    const/4 v2, 0x4

    if-ne p4, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    if-ne p4, p3, :cond_6

    .line 141
    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne p2, v1, :cond_6

    .line 142
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 143
    const-string p3, "view_animations"

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 144
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    xor-int/lit8 v0, p4, 0x1

    .line 145
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    xor-int/lit8 p3, p4, 0x1

    .line 146
    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    .line 147
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    xor-int/lit8 p2, p4, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    return-void

    .line 124
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result p4

    const/4 v2, -0x1

    if-eqz p4, :cond_3

    .line 125
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/BatteryDrawable;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    const p4, 0x3fa66666    # 1.3f

    const v0, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v0, v2, p3, p4}, Lorg/telegram/ui/Components/BatteryDrawable;-><init>(FIIF)V

    sget p3, Lorg/telegram/messenger/R$string;->LiteBatteryRestricted:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 128
    :cond_3
    iget p4, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p4, v0, :cond_5

    invoke-virtual {p2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->getFlagsCount()I

    move-result p4

    if-le p4, v1, :cond_5

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v0, 0x42960000    # 75.0f

    if-eqz p4, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    .line 129
    :goto_1
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p1

    if-eq p1, v2, :cond_5

    .line 131
    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean p3, p2, p1

    xor-int/2addr p3, v1

    aput-boolean p3, p2, p1

    .line 132
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void

    .line 137
    :cond_5
    iget p1, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabledSetting(I)Z

    move-result p1

    .line 138
    iget p2, p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    xor-int/2addr p1, v1

    invoke-static {p2, p1}, Lorg/telegram/messenger/LiteMode;->toggleFlag(IZ)V

    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    :cond_6
    :goto_2
    return-void
.end method

.method private synthetic lambda$highlightRow$2(I)I
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return p1
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    return-void
.end method

.method private updateInfo()V
    .locals 6

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    .line 290
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    .line 291
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    .line 293
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "%d%%"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method

.method private updateItems()V
    .locals 6

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSlider()Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    .line 235
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    .line 236
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoDisabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_1

    .line 238
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoEnabled:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 239
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->LiteBatteryInfoBelow:I

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->getPowerSaverLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "%d%%"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$string;->LiteOptionsTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    sget v4, Lorg/telegram/messenger/R$string;->LiteOptionsStickers:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v2

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayKeyboard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_smile_status:I

    sget v4, Lorg/telegram/messenger/R$string;->LiteOptionsEmoji:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x701c

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayKeyboard:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x4004

    invoke-static {v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayReactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2008

    invoke-static {v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1010

    invoke-static {v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_ask_question:I

    sget v4, Lorg/telegram/messenger/R$string;->LiteOptionsChat:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsBackground"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsTopics"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsSpoiler"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-ge v0, v3, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_6

    .line 262
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsBlur2"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-ge v0, v3, :cond_7

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_8

    .line 265
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsLiquidGlass"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsScale"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect;->supports()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteOptionsThanos"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asCheckbox(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_call_earpiece:I

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsCalls:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x200

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_videocall:I

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayVideo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x400

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_gif:I

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsAutoplayGifs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x800

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$drawable;->photo_star:I

    sget v2, Lorg/telegram/messenger/R$string;->LiteOptionsParticles:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(ILjava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/messenger/R$string;->LiteSmoothTransitions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asSwitch(Ljava/lang/CharSequence;I)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    const-string v1, "LiteSmoothTransitionsInfo"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->asInfo(Ljava/lang/CharSequence;)Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateValues()V
    .locals 5

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 309
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_5

    .line 310
    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_2

    .line 313
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 314
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    .line 317
    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    invoke-virtual {v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    goto :goto_2

    .line 315
    :cond_4
    :goto_1
    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->update(Lorg/telegram/ui/LiteModeSettingsActivity$Item;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/LiteMode;->isPowerSaverApplied()Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->restrictBulletin:Lorg/telegram/ui/Components/Bulletin;

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->PowerUsage:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 102
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    .line 103
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 106
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Lorg/telegram/ui/LiteModeSettingsActivity-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->adapter:Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x15e

    .line 111
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 112
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 114
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LiteModeSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 154
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x581a0

    goto :goto_0

    :cond_0
    const p1, 0x581e0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->FLAGS_CHAT:I

    .line 156
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    .line 169
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 1

    .line 163
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->addOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 1051
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1052
    invoke-static {}, Lorg/telegram/messenger/LiteMode;->savePreference()V

    .line 1053
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->updateAll()V

    const/4 v0, 0x1

    .line 1054
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->onPowerAppliedChange:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->removeOnPowerSaverAppliedListener(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1068
    iget-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public scrollToFlags(I)V
    .locals 2

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 210
    iget v1, v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->flags:I

    if-ne v1, p1, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->highlightRow(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollToType(I)V
    .locals 2

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 200
    iget v1, v1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne v1, p1, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->highlightRow(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setExpanded(IZ)V
    .locals 1

    .line 188
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity;->getExpandedIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity;->expanded:[Z

    aput-boolean p2, v0, p1

    .line 193
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateValues()V

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/LiteModeSettingsActivity;->updateItems()V

    return-void
.end method
