.class public Lorg/telegram/ui/LanguageSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private autoTranslationPosition:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private doNotTranslatePosition:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private infoPosition1:I

.field private languagesStartsPosition:I

.field private listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private manualTranslationPosition:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

.field private searchResult:Ljava/util/ArrayList;

.field private searchWas:Z

.field private searching:Z

.field private settingsFromPosition:I

.field private settingsToPosition:I

.field private sortedLanguages:Ljava/util/ArrayList;

.field private unofficialLanguages:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$3XbrwU5qSgLvSf3iIcd9fzMmDxY(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$updateSearchResults$10(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9F6KC6GYYO37NzGWoLaceE-00gY(Lorg/telegram/ui/LanguageSelectActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$5(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SHnsCWjwojK0j4sFxLt1js56wyU(Lorg/telegram/ui/LanguageSelectActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$3(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDPGZQMoMnfsRaRgMT5xtr1b7WE(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdgAvN_22yYWy0GX04ik_V3IXO8(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$didReceivedNotification$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$eQXL73GlwHTjQxtwiJ9rFtwNBxA(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/messenger/LocaleController$LocaleInfo;)I
    .locals 1

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, p0, :cond_1

    goto :goto_0

    .line 424
    :cond_1
    iget p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    iget v0, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    if-ne p0, v0, :cond_2

    .line 425
    iget-object p0, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    if-le p0, v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    if-ge p0, v0, :cond_4

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$mUiE-cbIP59BJOopYcuVZQbNlDc(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rMGImPH8OtNa403C2ZAbUrdXsTI(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$processSearch$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLhz7XyboplQcFF8DpkozLz60_E(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$4(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyQ2ZMl_TVOhEI7uQw6VPSk2JyM(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$onBecomeFullyVisible$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$zf4nx6qu17oaLc0WAqGp60ngvQ4(Lorg/telegram/ui/LanguageSelectActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LanguageSelectActivity;->lambda$createView$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetautoTranslationPosition(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->autoTranslationPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinfoPosition1(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->infoPosition1:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlanguagesStartsPosition(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->languagesStartsPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanualTranslationPosition(Lorg/telegram/ui/LanguageSelectActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->manualTranslationPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchListViewAdapter(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlanguagesStartsPosition(Lorg/telegram/ui/LanguageSelectActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->languagesStartsPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/LanguageSelectActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/LanguageSelectActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetChatValue(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetContextValue(Lorg/telegram/ui/LanguageSelectActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 555
    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->settingsFromPosition:I

    .line 556
    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->settingsToPosition:I

    .line 557
    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->manualTranslationPosition:I

    .line 559
    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->autoTranslationPosition:I

    .line 561
    iput v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->doNotTranslatePosition:I

    return-void
.end method

.method private fillLanguages()V
    .locals 7

    .line 418
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    .line 419
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/LocaleController;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    .line 438
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    .line 439
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 440
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 441
    iget v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_0

    .line 442
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private getChatValue()Z
    .locals 1

    .line 544
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isFeatureAvailable()Z

    move-result v0

    return v0
.end method

.method private getContextValue()Z
    .locals 1

    .line 540
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->isContextTranslateEnabled()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$createView$0()V
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 324
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->updateLanguage()V

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 2

    .line 320
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-nez p2, :cond_0

    .line 322
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    const-wide/16 v0, 0xa

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 330
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;I)V
    .locals 11

    .line 211
    :try_start_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 212
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_b

    :cond_1
    :goto_0
    move v0, v2

    .line 213
    :goto_1
    iget v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->manualTranslationPosition:I

    if-ne p2, v3, :cond_2

    .line 214
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 215
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/TranslateController;->setContextTranslateEnabled(Z)V

    .line 216
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 217
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    .line 218
    :cond_2
    iget v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->autoTranslationPosition:I

    if-ne p2, v3, :cond_4

    .line 219
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p2

    xor-int/lit8 v3, p2, 0x1

    if-nez p2, :cond_3

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_3

    .line 221
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/TranslateController;->setChatTranslateEnabled(Z)V

    .line 225
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateSearchSettings:I

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 226
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 228
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getContextValue()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->getChatValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v2

    :goto_4
    if-eq p1, v0, :cond_17

    .line 230
    iget p2, p0, Lorg/telegram/ui/LanguageSelectActivity;->autoTranslationPosition:I

    if-ltz p2, :cond_7

    goto :goto_5

    :cond_7
    iget p2, p0, Lorg/telegram/ui/LanguageSelectActivity;->manualTranslationPosition:I

    :goto_5
    const/4 v0, 0x0

    .line 232
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 233
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p2, :cond_8

    instance-of v4, v3, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v4, :cond_8

    .line 235
    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object v0, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    .line 239
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDivider(Z)V

    :cond_a
    if-eqz p1, :cond_b

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 244
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 248
    :cond_c
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_d

    .line 289
    new-instance p1, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 292
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_17

    instance-of p1, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-nez p1, :cond_e

    goto/16 :goto_a

    .line 295
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-ne p1, v0, :cond_f

    move p1, v2

    goto :goto_7

    :cond_f
    move p1, v1

    :goto_7
    if-nez p1, :cond_10

    .line 297
    iget v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->languagesStartsPosition:I

    sub-int/2addr p2, v0

    :cond_10
    if-eqz p1, :cond_11

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    :goto_8
    move-object v4, p1

    goto :goto_9

    .line 302
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    if-ltz p2, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_12

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_8

    .line 305
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v2

    sub-int/2addr p2, p1

    .line 308
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_8

    :goto_9
    if-eqz v4, :cond_17

    .line 311
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    if-ne p1, v4, :cond_14

    move v1, v2

    .line 314
    :cond_14
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    if-nez v1, :cond_15

    const-wide/16 v2, 0x1f4

    .line 316
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 318
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/TranslateController;->reset()V

    .line 319
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v10, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0, p1, v1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;ZZZZILjava/lang/Runnable;)I

    move-result p2

    if-eqz p2, :cond_16

    .line 329
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LanguageSelectActivity;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 334
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->invalidateSuggestedLanguageCodes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_17
    :goto_a
    return-void

    .line 337
    :goto_b
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/messenger/LocaleController$LocaleInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 369
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/LocaleController;->deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 370
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 371
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 377
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_2

    .line 378
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;I)Z
    .locals 6

    const/4 v0, 0x1

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_7

    instance-of p1, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 346
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-ne p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    .line 348
    iget v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->languagesStartsPosition:I

    sub-int/2addr p2, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_2

    .line 353
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    if-ltz p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_2

    .line 356
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p2, p1

    .line 359
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    :goto_2
    if-eqz p1, :cond_7

    .line 361
    iget-object p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->builtIn:Z

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->serverIndex:I

    const v1, 0x7fffffff

    if-eq p2, v1, :cond_6

    goto :goto_3

    .line 365
    :cond_6
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    sget v1, Lorg/telegram/messenger/R$string;->DeleteLocalizationTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 367
    const-string v1, "DeleteLocalizationText"

    sget v3, Lorg/telegram/messenger/R$string;->DeleteLocalizationText:I

    iget-object v4, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v1, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 368
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 382
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 383
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 385
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 387
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_7
    :goto_3
    return v2

    .line 390
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return v0
.end method

.method private synthetic lambda$didReceivedNotification$6()V
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBecomeFullyVisible$8()V
    .locals 1

    .line 455
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->updateLanguage()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSearch$9(Ljava/lang/String;)V
    .locals 6

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void

    .line 511
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 515
    iget-object v4, p0, Lorg/telegram/ui/LanguageSelectActivity;->unofficialLanguages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 516
    iget-object v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_6

    .line 522
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 523
    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 524
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$10(Ljava/util/ArrayList;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    .line 535
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 2

    .line 504
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLanguage()V
    .locals 7

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 484
    sget v0, Lorg/telegram/messenger/R$string;->Language:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 490
    invoke-virtual {v0}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1

    .line 533
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    .line 122
    iput-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchWas:Z

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 125
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 126
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Language:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/LanguageSelectActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LanguageSelectActivity$1;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 138
    sget v3, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/LanguageSelectActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LanguageSelectActivity$2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 174
    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    .line 177
    new-instance v1, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;-><init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    .line 179
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 180
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 183
    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 184
    sget v4, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 186
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 187
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 190
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 191
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 192
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 196
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    const-wide/16 v2, 0x190

    .line 203
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 204
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 205
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 395
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LanguageSelectActivity$4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 409
    sget p2, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    if-ne p1, p2, :cond_0

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz p1, :cond_0

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 412
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 25

    move-object/from16 v0, p0

    .line 856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 858
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lorg/telegram/ui/Cells/LanguageCell;

    aput-object v12, v5, v11

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v5, v11

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v2, v10, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v2, v11

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v10, [Ljava/lang/Class;

    aput-object v12, v2, v11

    const-string v3, "textView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    const-string v4, "textView2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    const-string v4, "checkImage"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 3

    .line 453
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 454
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LanguageSelectActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->checkForcePatchLangpack(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/LanguageSelectActivity;->fillLanguages()V

    .line 90
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->loadRemoteLanguages(IZ)V

    .line 91
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 110
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 463
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 471
    iput-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searching:Z

    const/4 p1, 0x0

    .line 472
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void

    .line 478
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V

    return-void
.end method
