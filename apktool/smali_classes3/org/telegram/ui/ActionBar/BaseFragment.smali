.class public abstract Lorg/telegram/ui/ActionBar/BaseFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;,
        Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;,
        Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;,
        Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheetWindow;
    }
.end annotation


# instance fields
.field protected actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field protected arguments:Landroid/os/Bundle;

.field private bottomInset:I

.field protected classGuid:I

.field protected currentAccount:I

.field protected finishing:Z

.field protected fragmentBeginToShow:Z

.field public fragmentView:Landroid/view/View;

.field private fullyVisibleListener:Ljava/lang/Runnable;

.field protected hasOwnBackground:Z

.field protected inBubbleMode:Z

.field protected inMenuMode:Z

.field protected inPreviewMode:Z

.field protected inTransitionAnimation:Z

.field public isFinished:Z

.field private isFullyVisible:Z

.field protected isPaused:Z

.field protected parentDialog:Landroid/app/Dialog;

.field protected parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

.field private removingFromStack:Z

.field protected resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public sheetsStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;",
            ">;"
        }
    .end annotation
.end field

.field public visibleDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$AzkNGVjYDfNdhtxkt3cv3xjZJgk(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$showDialog$0(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMpXmKmokozlm5AWV_1jB0NtqhE([Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    const/4 v0, 0x0

    .line 954
    aget-object p0, p0, v0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inTransitionAnimation:Z

    .line 208
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    const/4 v1, 0x1

    .line 88
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inTransitionAnimation:Z

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 213
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return-void
.end method

.method public static hasFullyVisibleSheets(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownFullyVisibleSheet()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 193
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v1, :cond_2

    return v0

    .line 194
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 195
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownFullyVisibleSheet()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public static hasSheets(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownSheet()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 185
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v1, :cond_2

    return v0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownSheet()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 808
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 810
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 812
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private setParentDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public addSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V
    .locals 1

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->listenToAttachedSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)Z

    .line 1328
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    return-void
.end method

.method public allowFinishFragmentInsteadOfRemoveFromStack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected allowPresentFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public attachSheets(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V
    .locals 3

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1198
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1199
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-eqz v1, :cond_0

    .line 1200
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->attachedToParent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1202
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canBeginSlide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected checkSystemBarColors()V
    .locals 2

    .line 739
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 740
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_0

    .line 741
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZ)V

    :cond_0
    return-void
.end method

.method public clearSheets()V
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 202
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->dismiss(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public clearViews()V
    .locals 3

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 315
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 320
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 322
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 326
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 328
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 331
    :cond_2
    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 333
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    .line 334
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method public closeLastFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeSheet()Z
    .locals 2

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 574
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->onAttachedBackPressed()Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 393
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 394
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 395
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 396
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 397
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 398
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 399
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 400
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    return-object v0
.end method

.method public createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;
    .locals 1

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    :cond_0
    if-nez p1, :cond_2

    .line 1350
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1351
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->getArticleViewer()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    return-object p1

    .line 1353
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    .line 1355
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 1356
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_2

    .line 1358
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment(Z)Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ArticleViewer$Sheet;

    .line 1359
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->getArticleViewer()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    return-object p1

    .line 1364
    :cond_2
    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->makeSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    .line 1365
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->addSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    .line 1366
    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->checkSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    return-object p1
.end method

.method public createOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 2

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    .line 1336
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1337
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1338
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromBottomSheet:Z

    .line 1340
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public detachSheets()V
    .locals 3

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1210
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1211
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-eqz v1, :cond_0

    .line 1212
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->attachedToParent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 672
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public drawEdgeNavigationBar()Z
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    return v0
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public finishFragment()V
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

    if-eqz v0, :cond_1

    .line 421
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;->finishFragment()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 423
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    return-void
.end method

.method public finishFragment(Z)Z
    .locals 2

    .line 432
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 435
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    .line 436
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public finishPreviewFragment()V
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->finishPreviewFragment()V

    :cond_0
    return-void
.end method

.method public getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 856
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomInset()I
    .locals 1

    .line 1400
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->bottomInset:I

    return v0
.end method

.method public getClassGuid()I
    .locals 1

    .line 260
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return v0
.end method

.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 876
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method protected getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 256
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getCustomSlideTransition(ZZF)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    .line 904
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method public getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 896
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentBeginToShow()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    return v0
.end method

.method public getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getGiftAuctionsController()Lorg/telegram/messenger/GiftAuctionController;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getGiftAuctionsController()Lorg/telegram/messenger/GiftAuctionController;

    move-result-object v0

    return-object v0
.end method

.method public getInPassivePreviewMode()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPassivePreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 136
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getLayoutContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 609
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 610
    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaController()Lorg/telegram/messenger/MediaController;
    .locals 1

    .line 916
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 888
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 4

    .line 1082
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 1083
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1084
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1085
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 1086
    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->attachedToParent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1087
    invoke-interface {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getNavigationBarColor(I)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 912
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 884
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationsSettings()Landroid/content/SharedPreferences;
    .locals 1

    .line 908
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 3

    .line 1259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    .line 1263
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1267
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1268
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1269
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/StoryViewer;->fromBottomSheet:Z

    .line 1271
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    :cond_3
    return-object v0
.end method

.method public getOrCreateStoryViewer(I)Lorg/telegram/ui/Stories/StoryViewer;
    .locals 4

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    .line 1282
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoryViewer;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1285
    iget v3, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    if-eq v3, p1, :cond_2

    .line 1286
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->close(Z)V

    .line 1287
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    .line 1291
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    iput-boolean v2, p1, Lorg/telegram/ui/Stories/StoryViewer;->fromBottomSheet:Z

    .line 1295
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    return-object p1

    :cond_4
    return-object v1
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 642
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method protected getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    .line 900
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method public getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 892
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getThemedColor(I)I
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1071
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 1067
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOwnBackground()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    return v0
.end method

.method public hasSheet()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasShownFullyVisibleSheet()Z
    .locals 4

    .line 173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasSheet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isFullyVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasShownSheet()Z
    .locals 4

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasSheet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 165
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasStoryViewer()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hideKeyboardOnShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isActionBarCrossfadeEnabled()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBeginToShow()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    return v0
.end method

.method public isBotView(Landroid/view/View;)Z
    .locals 2

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    .line 1233
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1234
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected isFinishing()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    return v0
.end method

.method public isInBubbleMode()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return v0
.end method

.method public isLastFragment()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLightStatusBar()Z
    .locals 7

    .line 1144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 1150
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    .line 1152
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 1153
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1154
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    :cond_2
    if-eqz v0, :cond_3

    .line 1157
    invoke-interface {v0, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1159
    invoke-static {v3, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 1161
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public isPaused()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    return v0
.end method

.method public isRemovingFromStack()Z
    .locals 1

    .line 1136
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->removingFromStack:Z

    return v0
.end method

.method public isStoryViewer(Landroid/view/View;)Z
    .locals 4

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1221
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1222
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 1223
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getWindowView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public movePreviewFragment(F)V
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->movePreviewFragment(F)V

    return-void
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 583
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/exteragram/messenger/icons/IconManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 564
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasShownSheet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeSheet()Z

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFullyVisible:Z

    .line 764
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFullyVisible:Z

    .line 719
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 720
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    .line 729
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fullyVisibleListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 731
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fullyVisibleListener:Ljava/lang/Runnable;

    .line 732
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 734
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    .line 735
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->checkSystemBarColors()V

    return-void
.end method

.method public onBeginSlide()V
    .locals 1

    .line 686
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 691
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 693
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    :cond_1
    return-void
.end method

.method public onBottomSheetCreated()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onFragmentClosed()V
    .locals 0

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 5

    .line 469
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 470
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cancelTasksForGuid(I)V

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 472
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 476
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->INSTANCE:Lcom/exteragram/messenger/icons/ui/picker/IconObserver;

    invoke-virtual {v1, p0}, Lcom/exteragram/messenger/icons/ui/picker/IconObserver;->removeSource(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 478
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    if-nez v1, :cond_2

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 482
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 483
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 484
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 485
    invoke-interface {v3, v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->setLastVisible(Z)V

    .line 486
    invoke-interface {v3, v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->dismiss(Z)V

    .line 487
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    return-void
.end method

.method public onInsetsInternal(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1393
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 1394
    iget p2, p1, Landroidx/core/graphics/Insets;->left:I

    iget v0, p1, Landroidx/core/graphics/Insets;->top:I

    iget v1, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->bottomInset:I

    invoke-virtual {p0, p2, v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onInsets(IIII)V

    .line 1395
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method protected onPanTransitionEnd()V
    .locals 0

    return-void
.end method

.method protected onPanTransitionStart()V
    .locals 0

    return-void
.end method

.method protected onPanTranslationUpdate(F)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    :cond_0
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 523
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 528
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 530
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->onPause()V

    .line 532
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_2
    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onRemoveFromParent()V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onResume()V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->onResume()V

    .line 512
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_1
    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    const/4 p1, 0x0

    .line 714
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inTransitionAnimation:Z

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    const/4 p2, 0x1

    .line 707
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inTransitionAnimation:Z

    if-eqz p1, :cond_0

    .line 709
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public prepareFragmentToSlide(ZZ)V
    .locals 0

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 625
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 1

    .line 629
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 8

    .line 633
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 1

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 617
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeSelfFromStack()V
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    return-void
.end method

.method public removeSelfFromStack(Z)V
    .locals 2

    .line 445
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 452
    :cond_1
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1316
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1317
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->updateSheetsVisibility()V

    return-void
.end method

.method public resetFragment()V
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    const/4 v0, 0x0

    .line 1183
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 1184
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    :cond_0
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected resumeDelayedFragmentAnimation()V
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->resumeDelayedFragmentAnimation()V

    :cond_0
    return-void
.end method

.method public saveKeyboardPositionBeforeTransition()V
    .locals 0

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 220
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return-void

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "trying to set current account when fragment UI already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFinishing(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 925
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentPanTranslationOffset(I)V

    :cond_0
    return-void
.end method

.method public setFragmentView(Landroid/view/View;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-void
.end method

.method public setHasOwnBackground(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    return-void
.end method

.method public setInBubbleMode(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return-void
.end method

.method public setInMenuMode(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inMenuMode:Z

    return-void
.end method

.method public setInPreviewMode(Z)V
    .locals 1

    .line 292
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 294
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_0
    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 2

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1245
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1246
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    if-eqz v1, :cond_0

    .line 1248
    invoke-interface {v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->setKeyboardHeightFromParent(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 4

    .line 1095
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSupportEdgeToEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1100
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    .line 1101
    invoke-virtual {v1, p1}, Lorg/telegram/ui/LaunchActivity;->setNavigationBarColor(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 1104
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarColor()I

    .line 1111
    :cond_2
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    const v2, 0x3f389375    # 0.721f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1112
    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Activity;Z)V

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_4

    .line 1115
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setNavigationBarColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected setParentActivityTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 652
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 344
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 345
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-void
.end method

.method public setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 4

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eq v0, p1, :cond_7

    .line 350
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 351
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInBubbleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    .line 352
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 357
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 359
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 362
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eq p1, v3, :cond_2

    .line 363
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 364
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    .line 367
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_6

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eq p1, v3, :cond_3

    move v0, v1

    .line 369
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    .line 370
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 373
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 375
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 380
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 383
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_7

    .line 384
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_7

    .line 386
    iput-object p0, p1, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_7
    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 542
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void

    .line 544
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    return-void
.end method

.method public setPreviewDelegate(Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

    return-void
.end method

.method public setPreviewOpenedProgress(F)V
    .locals 0

    return-void
.end method

.method public setPreviewReplaceProgress(F)V
    .locals 0

    return-void
.end method

.method public setRemovingFromStack(Z)V
    .locals 0

    .line 1140
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->removingFromStack:Z

    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTitleOverlayTextIfActionBarAttached(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setVisibleDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected shouldOverrideSlideTransition(ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    const/4 v0, 0x0

    .line 946
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    return-object p1
.end method

.method public showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 11

    .line 950
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 953
    new-array v9, v0, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 954
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda0;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    const/4 v10, 0x0

    invoke-static {v1, v10, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;ZLandroidx/core/util/Supplier;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    new-array v7, v0, [Lorg/telegram/ui/ActionBar/INavigationLayout;

    aput-object v1, v7, v10

    .line 955
    aget-object v1, v7, v10

    invoke-interface {v1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setIsSheet(Z)V

    .line 956
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity;->sheetFragmentsStack:Ljava/util/ArrayList;

    aget-object v2, v7, v10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-virtual {p1, v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 958
    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$1;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object v2, p0

    move-object v8, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/BaseFragment$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;[Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    aput-object v1, v9, v10

    if-eqz v6, :cond_1

    .line 1051
    iget-boolean p1, v6, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 1052
    aget-object p1, v9, v10

    iget-boolean p2, v6, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight(Z)V

    .line 1054
    :cond_1
    aget-object p1, v9, v10

    invoke-direct {v8, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentDialog(Landroid/app/Dialog;)V

    .line 1055
    aget-object p1, v9, v10

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOpenNoDelay(Z)V

    .line 1056
    aget-object p1, v9, v10

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v7
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 776
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 784
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isTransitionAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSwipeInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 787
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 788
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_2

    .line 789
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    invoke-interface {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->showDialog(Landroid/app/Dialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 797
    :cond_2
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_3

    .line 798
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 801
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 804
    :cond_3
    :goto_1
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    .line 805
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 806
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 818
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected updateSheetsVisibility()V
    .locals 5

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 747
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 748
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    .line 749
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFullyVisible:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-interface {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->setLastVisible(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public whenFullyVisible(Ljava/lang/Runnable;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fullyVisibleListener:Ljava/lang/Runnable;

    return-void
.end method
