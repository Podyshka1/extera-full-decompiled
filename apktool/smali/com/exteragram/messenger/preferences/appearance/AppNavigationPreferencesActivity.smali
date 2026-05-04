.class public Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;
.super Lcom/exteragram/messenger/preferences/BasePreferencesActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;,
        Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;
    }
.end annotation


# instance fields
.field private bottomNavigationModes:[Ljava/lang/CharSequence;

.field private final itemDetails:Ljava/util/HashMap;

.field private nextDividerId:I

.field private reorderIcon:Landroid/graphics/drawable/Drawable;

.field private resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final stableDividerIds:Ljava/util/ArrayList;

.field private tabletMode:[Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$0hlQ5-ZoscJQegC1Baix7f-FHbI(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7__uhjIw6L6gMmRp354aKUrT6go(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->updateConfigFromReorder(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9iROtsPCrPNVlSOe2-YFRaGTRPM(Ljava/lang/Boolean;)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Po3A4RwV39YnktoT4g7JvvXtYv0(Ljava/lang/Integer;)Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v0, v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$bEMEK_XQ2O7WHxuLIEXyTSoUoBQ(Ljava/lang/Boolean;)V
    .locals 0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->immersiveDrawerAnimation:Z

    return-void
.end method

.method public static synthetic $r8$lambda$cnPyg352KXCo9_AhTncZ8Yy0VEY(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->lambda$onClick$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFyVE5W-L30dUlGtGDYCrNYG8vI(Ljava/lang/Boolean;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/exteragram/messenger/ExteraConfig;->predictiveBackAnimation:Z

    return-void
.end method

.method public static synthetic $r8$lambda$s4Ox232Abp9pqUkF-gt9UcXyITY(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->lambda$onClick$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u07TReZ5mBL6eLs-_1kcuhUW0_k(Ljava/lang/Boolean;)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    .line 326
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 327
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "view_animations"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    const/16 v0, -0x7d0

    .line 74
    iput v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    return-void
.end method

.method private addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 6

    .line 207
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionStart()V

    .line 208
    invoke-static {p3}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionStart()I

    .line 212
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_5

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Integer;

    .line 213
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v4, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v5, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v3, v5, :cond_4

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    .line 217
    iget-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 218
    iget-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->createMenuItem(ILcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    .line 220
    iget v3, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-direct {p0, v3, v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->createMenuItem(ILcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_4
    iget-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->createMenuItem(ILcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderSectionEnd()V

    if-eqz p5, :cond_6

    .line 233
    sget p3, Lorg/telegram/messenger/R$drawable;->msg_add:I

    sget p4, Lorg/telegram/messenger/R$string;->MainMenuAddDivider:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/16 p5, -0xc8

    invoke-static {p5, p3, p4}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->whiteSectionEnd()V

    return-void
.end method

.method private createMenuItem(ILcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/16 v0, -0x7d0

    if-le p1, v0, :cond_2

    .line 240
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v0, v0, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 243
    iget v0, p2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;->iconRes:I

    iget-object p2, p2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 241
    :cond_2
    :goto_0
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_block:I

    sget v0, Lorg/telegram/messenger/R$string;->MainMenuDivider:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 247
    :goto_1
    iget-object p2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object p1
.end method

.method private initItemDetails()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PROFILE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->MyProfile:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->left_status_profile:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->ARCHIVE:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->ArchivedChats:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BOTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->FilterBots:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_GROUP:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->NewGroup:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CONTACTS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->NEW_CHANNEL:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->NewChannel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->CALLS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->Calls:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SAVED:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_saved:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->Plugins:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_plugins:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->BROWSER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->BrowserSettingsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->itemDetails:Ljava/util/HashMap;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->QR:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;

    sget v3, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-direct {v2, v3, v4}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$ItemInfo;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 124
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x7d0

    .line 125
    iput v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    .line 126
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v4, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v3, v4, :cond_0

    .line 128
    iget-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    iget v4, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetToDefault()V

    return-void
.end method

.method private synthetic lambda$onClick$4(I)V
    .locals 4

    .line 308
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 309
    :goto_1
    const-string v0, "bottomNavigationBarMode"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 310
    invoke-static {p1}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->setMode(I)V

    if-eqz v2, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetToDefault()V

    goto :goto_2

    .line 314
    :cond_2
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->ensureSettingsVisibility()V

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->updateResetButtonVisibility()V

    .line 318
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$onClick$7(I)V
    .locals 1

    .line 333
    sput p1, Lcom/exteragram/messenger/ExteraConfig;->tabletMode:I

    const-string/jumbo v0, "tabletMode"

    invoke-virtual {p0, v0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->changeIntSetting(Ljava/lang/String;I)V

    .line 334
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showRestartBulletin()V

    return-void
.end method

.method private refreshEditorList()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    .line 408
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    .line 409
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetToDefault()V
    .locals 7

    .line 428
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 429
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getDefaultMainMenuLayout()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->values()[Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 433
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    iget v6, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 434
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->PLUGINS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->isPluginEngineSupported()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    iget v4, v4, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x7d0

    .line 442
    iput v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    .line 443
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_3
    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    .line 444
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v5, v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v4, v5, :cond_3

    .line 445
    iget-object v4, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    iget v5, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 449
    :cond_4
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveMainMenuLayout()V

    .line 450
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 452
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->refreshEditorList()V

    .line 454
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method private saveAndNotify()V
    .locals 3

    .line 397
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveMainMenuLayout()V

    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 399
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->refreshEditorList()V

    .line 400
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->updateResetButtonVisibility()V

    return-void
.end method

.method private updateConfigFromReorder(ILjava/util/ArrayList;)V
    .locals 8

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Components/UItem;

    .line 256
    iget v5, v4, Lorg/telegram/ui/Components/UItem;->id:I

    const/16 v6, -0x7d0

    if-le v5, v6, :cond_2

    sget-object v7, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v7, v7, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v5, v7, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_0

    .line 259
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v5, v5, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget v4, v4, Lorg/telegram/ui/Components/UItem;->id:I

    if-gt v4, v6, :cond_3

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    .line 268
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 271
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget p1, p1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 272
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 273
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_5
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 277
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    .line 279
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 280
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget p1, p1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    :cond_7
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 283
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->saveAndNotify()V

    return-void
.end method

.method private updateResetButtonVisibility()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    .line 416
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->getDefaultMainMenuLayout()Ljava/util/ArrayList;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 420
    iget-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 421
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 140
    invoke-super {p0, p1}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 144
    sget v1, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->updateResetButtonVisibility()V

    .line 148
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->resetItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda7;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->allowReorder(Z)V

    .line 152
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_0
    return-object p1
.end method

.method protected fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 13

    .line 160
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->list_reorder:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->reorderIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->General:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->TABLET_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->TabletMode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->tabletMode:[Ljava/lang/CharSequence;

    sget v3, Lcom/exteragram/messenger/ExteraConfig;->tabletMode:I

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string/jumbo v1, "tabletMode"

    .line 167
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->BOTTOM_NAVIGATION_BAR_MODE:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->BottomNavigationBarMode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->bottomNavigationModes:[Ljava/lang/CharSequence;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;->asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string v1, "bottomNavigationBarMode"

    .line 170
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 172
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->PREDICTIVE_BACK_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->PredictiveBackAnimation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->predictiveBackAnimation:Z

    .line 173
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string/jumbo v1, "predictiveBackAnimation"

    .line 175
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->SPRING_ANIMATIONS:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->SpringAnimations:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->springAnimations:Z

    .line 178
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string/jumbo v1, "springAnimations"

    .line 180
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget v0, Lorg/telegram/messenger/R$string;->SpringAnimationsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget v0, Lorg/telegram/messenger/R$string;->AppNavigation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->DRAWER:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->NavigationDrawer:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    .line 185
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string/jumbo v1, "navigationDrawer"

    .line 187
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->IMMERSIVE_ANIMATION:Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    invoke-virtual {v0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->getId()I

    move-result v0

    sget v1, Lorg/telegram/messenger/R$string;->NavigationDrawerImmersiveAnimation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/UItem;->asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->immersiveDrawerAnimation:Z

    .line 190
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/UItem;->setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const-string v1, "immersiveDrawerAnimation"

    .line 192
    invoke-virtual {v0, v1, p0}, Lorg/telegram/ui/Components/UItem;->setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->NavigationDrawerInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget v0, Lorg/telegram/messenger/R$string;->MainMenuItems:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 198
    sget p1, Lorg/telegram/messenger/R$string;->MainMenuItemsInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object p1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 201
    sget p1, Lorg/telegram/messenger/R$string;->MainMenuHiddenItems:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v2

    move-object v9, v3

    invoke-direct/range {v7 .. v12}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->addMenuSection(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const/4 p1, 0x0

    .line 202
    invoke-static {p1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 135
    sget v0, Lorg/telegram/messenger/R$string;->AppNavigation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeOptionStrings()V
    .locals 7

    .line 90
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->initItemDetails()V

    .line 91
    sget v0, Lorg/telegram/messenger/R$string;->DistanceUnitsAutomatic:I

    .line 92
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PasswordOn:I

    .line 93
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->PasswordOff:I

    .line 94
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    iput-object v4, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->tabletMode:[Ljava/lang/CharSequence;

    .line 96
    sget v2, Lorg/telegram/messenger/R$string;->BottomNavigationModeShow:I

    .line 97
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$string;->BottomNavigationModeHide:I

    .line 98
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->BottomNavigationModeFloating:I

    .line 99
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v2, v3, v5

    aput-object v4, v3, v0

    aput-object v6, v3, v1

    iput-object v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->bottomNavigationModes:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    .line 291
    iget v2, p1, Lorg/telegram/ui/Components/UItem;->id:I

    .line 292
    invoke-static {v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;->fromId(I)Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$AppNavigationItem;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 295
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->tabletMode:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->TabletMode:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/exteragram/messenger/ExteraConfig;->tabletMode:I

    new-instance v5, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 324
    :cond_1
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string/jumbo v3, "springAnimations"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 321
    :cond_2
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda3;-><init>()V

    const-string/jumbo v3, "predictiveBackAnimation"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 322
    invoke-virtual {p0}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showRestartBulletin()V

    return-void

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->bottomNavigationModes:[Ljava/lang/CharSequence;

    sget v3, Lorg/telegram/messenger/R$string;->BottomNavigationBarMode:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->getMode()I

    move-result v4

    new-instance v5, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->showListDialog(Lorg/telegram/ui/Components/UItem;[Ljava/lang/CharSequence;Ljava/lang/String;ILcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    return-void

    .line 305
    :cond_4
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "immersiveDrawerAnimation"

    invoke-virtual {p0, v3, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    .line 297
    :cond_5
    new-instance v2, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v5, "navigationDrawer"

    invoke-virtual {p0, v5, p1, v2}, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->toggleBooleanSettingAndRefresh(Ljava/lang/String;Lorg/telegram/ui/Components/UItem;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 298
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/BasePreferencesActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 302
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1, v4}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildFragments(I)V

    return-void

    :cond_7
    const/16 v1, -0xc8

    if-ne v2, v1, :cond_8

    .line 341
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    iget v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->nextDividerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    sget-object v2, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v2, v2, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->saveAndNotify()V

    return-void

    :cond_8
    const/16 v1, -0x7d0

    if-gt v2, v1, :cond_d

    .line 348
    iget-object v1, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    move v3, v4

    .line 353
    :goto_0
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 354
    sget-object v5, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v6, v6, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v5, v6, :cond_a

    if-ne v3, v1, :cond_9

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    move v4, v2

    :goto_1
    if-eq v4, v2, :cond_c

    .line 364
    iget-object v2, p0, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->stableDividerIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->saveAndNotify()V

    :cond_c
    :goto_2
    return-void

    .line 372
    :cond_d
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->DIVIDER:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v3, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v2, v3, :cond_e

    .line 373
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->saveAndNotify()V

    return-void

    .line 378
    :cond_e
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->SETTINGS:Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;

    iget v3, v3, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-ne v2, v3, :cond_f

    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 379
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->MainMenuRemoveSettingsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 383
    :cond_f
    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 384
    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget v1, v1, Lcom/exteragram/messenger/ExteraConfig$MainMenuItem;->id:I

    if-eq v2, v1, :cond_11

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 386
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 388
    :cond_10
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 389
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuHiddenItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->mainMenuLayout:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_11
    :goto_3
    invoke-direct {p0}, Lcom/exteragram/messenger/preferences/appearance/AppNavigationPreferencesActivity;->saveAndNotify()V

    return-void
.end method
