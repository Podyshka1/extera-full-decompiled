.class Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChooseLanguageSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$LanguageView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final currentAccount:I

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchImageView:Landroid/widget/ImageView;

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$27LP07mT_xYlBOaIdZFuvxCt3SA(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRHFdD4Wss1GdvRoFpEqO52NUVU(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->lambda$new$0(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    const/4 v4, 0x0

    .line 1883
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1885
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->searchContainer:Landroid/widget/FrameLayout;

    .line 1886
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->searchImageView:Landroid/widget/ImageView;

    .line 1888
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->currentAccount:I

    .line 1889
    iput-object p2, v0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->title:Ljava/lang/CharSequence;

    .line 1890
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    const p1, 0x3f19999a    # 0.6f

    .line 1891
    iput p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    const/4 p1, 0x1

    .line 1892
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowHandle(Z)V

    .line 1893
    iput-boolean p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->handleOffset:Z

    .line 1894
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 1895
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setSlidingActionBar()V

    .line 1897
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1898
    iget-object p1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    .line 1922
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object p2

    .line 1923
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/TranslateController$Language;

    .line 1924
    invoke-static {v2}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$LanguageView$Factory;->of(Lorg/telegram/messenger/TranslateController$Language;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/Utilities$Callback;Landroid/view/View;I)V
    .locals 0

    .line 1899
    iget-object p2, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 1901
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1902
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p2, Lorg/telegram/messenger/TranslateController$Language;

    if-eqz p3, :cond_1

    .line 1903
    check-cast p2, Lorg/telegram/messenger/TranslateController$Language;

    iget-object p2, p2, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1904
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 7

    .line 1916
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;)V

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 p1, 0x0

    .line 1917
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/Stories/bots/BotPreviewsEditContainer$ChooseLanguageSheet;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
