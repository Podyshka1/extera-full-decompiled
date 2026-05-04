.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;,
        Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    }
.end annotation


# instance fields
.field private additionalXOffset:I

.field private additionalYOffset:I

.field private allowCloseAnimation:Z

.field private animateClear:Z

.field private animationEnabled:Z

.field private centerTitleVisibleForPartialAlpha:Z

.field private clearButton:Landroid/widget/ImageView;

.field private clearButtonAnimator:Landroid/animation/AnimatorSet;

.field private currentSearchFilters:Ljava/util/ArrayList;

.field private delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

.field private dimMenu:F

.field private fixBackground:Z

.field private forceSmoothKeyboard:Z

.field protected iconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private iconViewResId:I

.field private ignoreOnTextChange:Z

.field private isSearchField:Z

.field private layoutInScreen:Z

.field private lazyList:Ljava/util/ArrayList;

.field private lazyMap:Ljava/util/HashMap;

.field protected listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

.field private location:[I

.field private longClickEnabled:Z

.field private measurePopup:Z

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field protected overrideMenuClick:Z

.field private parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private processedPopupClick:Z

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAdditionalButton:Landroid/view/View;

.field private searchContainer:Landroid/widget/FrameLayout;

.field searchContainerAnimator:Landroid/animation/AnimatorSet;

.field private searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchFieldCaption:Landroid/widget/TextView;

.field private searchFieldHint:Ljava/lang/CharSequence;

.field private searchFieldText:Ljava/lang/CharSequence;

.field private searchFilterLayout:Landroid/widget/LinearLayout;

.field private searchFilterViews:Ljava/util/ArrayList;

.field public searchItemPaddingStart:I

.field public searchRightMargin:I

.field private selectedFilterIndex:I

.field private selectedMenuView:Landroid/view/View;

.field private showMenuRunnable:Ljava/lang/Runnable;

.field private showSubMenuFrom:Landroid/view/View;

.field private showSubmenuByMove:Z

.field private subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

.field private subMenuOpenSide:I

.field protected textView:Landroid/widget/TextView;

.field private transitionOffset:F

.field private wrapSearchInScrollView:Z

.field private wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public static synthetic $r8$lambda$0CRrSTPpNmP-tEc6aMPWdUdxYCs(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSwipeBackItem$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1BkxEOe36yDJfE9T2OjuIxo9rbo(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$toggleSearch$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$AF-m9AAfpSfDBYG8X6IeCxufkOs(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$6(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHLMy2Ls29ESetmXEDhMdCPRyro(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$createPopupLayout$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpDgmQJODS9mYvTqYCFUzk_lFeM(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkCreateSearchField$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Es2sVPRRuxoN0TnD4M6o3kvHgFI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2QW95eE-5XQbG9e1-iuzlQZxKE(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kj8G-ZoN4-TcaNjCduNKuYOLQ5A(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$onFiltersChanged$14(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MCvP1dapGoOjoEU0luVYBHLQbOI(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Landroid/view/View;)V
    .locals 0

    .line 732
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method

.method public static synthetic $r8$lambda$UANx7-6TzgUXs4Py0TueS6uHw40(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhR1mwHNRCEWSFURtEbpmKx8CBw(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$addSubItem$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XAcQCFHs6rciCpbpPRNkICjfqHY(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkCreateSearchField$15(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XgSDqKzZKRMIsILsmQsi18V_Cao(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkClearButton$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qSSrOhOs91NYP_ouP-3SwUkPPg(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$createPopupLayout$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cBnZ4bmyKD3jK6XEVdXWFA3ks68(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$toggleSubMenu$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$dR8C58EUbTIXFRRe6XaorFvkN2k(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$checkClearButton$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6dz8kzrB5yS2MMSYM2DE_RsXzI(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$setOnMenuDismiss$12(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wbiPIW5qQEv_lErRx1tS3MW8CoY(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lambda$toggleSubMenu$10(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yDM-3GgM4yzCg-HSlJryJ8UO8x0(Lcom/exteragram/messenger/components/ActionRow$ActionItem;Landroid/view/View;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/exteragram/messenger/components/ActionRow$ActionItem;->action:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetallowCloseAnimation(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentSearchFilters(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->ignoreOnTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentMenu(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpopupWindow(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprocessedPopupClick(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchContainer(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedFilterIndex(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwrapSearchInScrollView(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwrappedSearchFrameLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclearButtonAnimator(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->ignoreOnTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprocessedPopupClick(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedFilterIndex(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckClearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkClearButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePopupLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasRemovableFilters(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monFiltersChanged(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 234
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 238
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 242
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 246
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    .line 207
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    .line 213
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    .line 214
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->measurePopup:Z

    .line 216
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 218
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 219
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 224
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->centerTitleVisibleForPartialAlpha:Z

    .line 247
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p3, :cond_1

    if-eqz p5, :cond_0

    const/4 p6, 0x5

    goto :goto_0

    :cond_0
    move p6, v0

    .line 249
    :goto_0
    invoke-static {p3, p6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p3, 0x2

    if-eqz p5, :cond_3

    .line 254
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/high16 p1, 0x41700000    # 15.0f

    .line 255
    invoke-virtual {p5, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/16 p5, 0x11

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/high16 p5, 0x40800000    # 4.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0, p5, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-eqz p4, :cond_2

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    const/4 p3, -0x2

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 265
    :cond_3
    new-instance p5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {p5, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 266
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 268
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_4

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p4, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    return-void
.end method

.method public static addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 2697
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p0

    return-object p0
.end method

.method public static addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 6

    .line 2701
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move v3, p0

    move v4, p1

    move v2, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2702
    invoke-virtual {v0, p4, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/high16 p0, 0x43440000    # 196.0f

    .line 2703
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2704
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2705
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2706
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 2707
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p1, -0x1

    .line 2709
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p1, 0x42400000    # 48.0f

    .line 2710
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2711
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static addText(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 95
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, p2, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 p1, 0x43480000    # 200.0f

    .line 101
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 p1, -0x1

    const/4 p2, -0x2

    .line 102
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method private checkClearButton()V
    .locals 17

    move-object/from16 v0, p0

    .line 1744
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 1745
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result v1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->ROTATION:Landroid/util/Property;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const-wide/16 v11, 0xb4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_1

    .line 1746
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->forceShowClear()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x3

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1747
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->showClearForCaption()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1748
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1749
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1750
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    .line 1751
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1753
    :cond_3
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    const/high16 v15, 0x42340000    # 45.0f

    if-eqz v1, :cond_4

    .line 1754
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 1755
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1756
    new-array v11, v5, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 1757
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda15;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1763
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/16 v16, 0x3

    new-array v2, v13, [F

    aput v14, v2, v6

    .line 1764
    invoke-static {v12, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v12, v13, [F

    aput v14, v12, v6

    .line 1765
    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v12, v13, [F

    aput v14, v12, v6

    .line 1766
    invoke-static {v10, v8, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v12, v13, [F

    aput v15, v12, v6

    .line 1767
    invoke-static {v10, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v9, v3, v13

    aput-object v8, v3, v5

    aput-object v7, v3, v16

    aput-object v11, v3, v4

    .line 1763
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1770
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1778
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1780
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    return-void

    .line 1782
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1783
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setRotation(F)V

    .line 1784
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setScaleX(F)V

    .line 1785
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setScaleY(F)V

    .line 1786
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1787
    iput-boolean v13, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    return-void

    .line 1791
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1792
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1793
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 1794
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1796
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1797
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    .line 1798
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 1799
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1800
    new-array v11, v5, [F

    fill-array-data v11, :array_1

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 1801
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda16;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1807
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v15, v13, [F

    aput v2, v15, v6

    .line 1808
    invoke-static {v12, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v15, v13, [F

    aput v2, v15, v6

    .line 1809
    invoke-static {v12, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v15, v13, [F

    aput v2, v15, v6

    .line 1810
    invoke-static {v12, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-array v12, v13, [F

    aput v14, v12, v6

    .line 1811
    invoke-static {v8, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v10, v3, v6

    aput-object v9, v3, v13

    aput-object v2, v3, v5

    aput-object v7, v3, v16

    aput-object v11, v3, v4

    .line 1807
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1814
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$15;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1820
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1822
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButtonAnimator:Landroid/animation/AnimatorSet;

    return-void

    .line 1824
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1825
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setRotation(F)V

    .line 1826
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1827
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1828
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 1829
    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 1831
    :cond_7
    iput-boolean v13, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkCreateSearchField()V
    .locals 15

    .line 1379
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    if-eqz v0, :cond_a

    .line 1380
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    .line 1475
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v0, 0x0

    .line 1476
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    .line 1477
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 1478
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    .line 1479
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    .line 1511
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    invoke-static {v5, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1512
    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1513
    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1514
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v10, 0x42400000    # 48.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    iget v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1517
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    add-int/lit8 v9, v5, 0x6

    iget v11, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchRightMargin:I

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1521
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    .line 1522
    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1525
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1529
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 1572
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollContainer(Z)V

    .line 1573
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1576
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1580
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 1582
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v4, 0xe000003

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    .line 1646
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1647
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1650
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1651
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    .line 1655
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v4, 0x42400000    # 48.0f

    const/4 v5, 0x0

    if-nez v0, :cond_7

    .line 1658
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x42100000    # 36.0f

    const/16 v9, 0x13

    const/4 v10, 0x0

    const/high16 v11, 0x40b00000    # 5.5f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    if-eqz v7, :cond_6

    move v13, v5

    goto :goto_4

    :cond_6
    move v13, v4

    :goto_4
    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, 0x42100000    # 36.0f

    const/16 v10, 0x10

    const/high16 v11, 0x40c00000    # 6.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v6, -0x2

    const/high16 v7, 0x42000000    # 32.0f

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 1662
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/high16 v12, 0x42400000    # 48.0f

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x42000000    # 32.0f

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    if-eqz v7, :cond_8

    move v13, v5

    goto :goto_5

    :cond_8
    move v13, v4

    :goto_5
    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, 0x42100000    # 36.0f

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1664
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/high16 v11, 0x42400000    # 48.0f

    const/4 v6, -0x2

    const/high16 v7, 0x42100000    # 36.0f

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/high16 v10, 0x40b00000    # 5.5f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1666
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1668
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$12;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$12;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    .line 1693
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1705
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1726
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    const/16 v2, 0x15

    const/16 v3, 0x30

    if-eqz v0, :cond_9

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrappedSearchFrameLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1729
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method private createPopupLayout()V
    .locals 5

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 492
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    .line 493
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 494
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    return-void
.end method

.method private findLazyItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 1

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2683
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 2170
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private hasRemovableFilters()Z
    .locals 3

    .line 1839
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1842
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1843
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private synthetic lambda$addSubItem$4(Landroid/view/View;)V
    .locals 2

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 548
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_3

    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSubItem$5(Landroid/view/View;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 588
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 589
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v1, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 594
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_3

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void

    .line 596
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_4

    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSubItem$6(ZLandroid/view/View;)V
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 671
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 674
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 675
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    .line 678
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_2

    .line 679
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void

    .line 680
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz p1, :cond_3

    .line 681
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$addSubItem$7(Landroid/view/View;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_1

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addSwipeBackItem$8(I)V
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkClearButton$17(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1758
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42000000    # 32.0f

    .line 1760
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkClearButton$18(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1802
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42000000    # 32.0f

    .line 1804
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkCreateSearchField$15(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 1603
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 1604
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1605
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_2

    .line 1606
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchPressed(Landroid/widget/EditText;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$checkCreateSearchField$16(Landroid/view/View;)V
    .locals 2

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1707
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1708
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasRemovableFilters()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1709
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    const/4 p1, 0x0

    .line 1710
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1715
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearSearchFilters()V

    goto :goto_1

    .line 1716
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->canClearCaption()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1717
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_5

    .line 1719
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onCaptionCleared()V

    .line 1722
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1723
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createPopupLayout$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createPopupLayout$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFiltersChanged$14(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;Landroid/view/View;)V
    .locals 1

    .line 1208
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1209
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-eq v0, p2, :cond_0

    .line 1210
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 1211
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void

    .line 1214
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz p2, :cond_2

    .line 1215
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->-$$Nest$fgetselectedForDelete(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 1216
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setSelectedForDelete(Z)V

    return-void

    .line 1218
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object p1

    .line 1219
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1220
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p2, :cond_2

    .line 1221
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onTextChanged(Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 2

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$setOnMenuDismiss$12(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 947
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleSearch$13()V
    .locals 1

    .line 1076
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$toggleSubMenu$10(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 899
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$toggleSubMenu$11()V
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onDismiss()V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;->onHideSubMenu()V

    :cond_0
    return-void
.end method

.method private layoutLazyItems()V
    .locals 2

    .line 2687
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2690
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2691
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    invoke-static {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$madd(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2693
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private onFiltersChanged()V
    .locals 14

    .line 1120
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1121
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1123
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1124
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1125
    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v5, 0x96

    .line 1126
    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 1127
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    .line 1156
    invoke-virtual {v7, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v5

    .line 1127
    invoke-virtual {v2, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    .line 1156
    invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1157
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 1158
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 1159
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v2, v4}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 1185
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1188
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    .line 1189
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1190
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->getFilter()Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1192
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1198
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1199
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 1201
    iget-object v6, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v6, :cond_3

    .line 1202
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    goto :goto_2

    .line 1204
    :cond_3
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v7, v8, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 1206
    :goto_2
    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1207
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v7, -0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1230
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    move v1, v3

    .line 1231
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1232
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-ne v1, v5, :cond_5

    move v5, v4

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->setExpanded(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1236
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    .line 1237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1240
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    .line 1241
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1242
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1254
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkClearButton()V

    return-void
.end method

.method private putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2668
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    .line 2671
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 2673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyMap:Ljava/util/HashMap;

    .line 2675
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyMap:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private updateOrShowPopup(ZZ)V
    .locals 8

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_2

    .line 1939
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    .line 1940
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalYOffset:I

    goto :goto_0

    .line 1942
    :goto_2
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->yOffset:I

    add-int v5, v0, v1

    if-eqz p1, :cond_2

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollToTop()V

    .line 1947
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubMenuFrom:Landroid/view/View;

    if-nez v0, :cond_3

    move-object v0, p0

    .line 1948
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/high16 v2, 0x41000000    # 8.0f

    if-eqz v1, :cond_8

    .line 1949
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1950
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 1952
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_4
    if-eqz p2, :cond_f

    .line 1955
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_5
    if-eqz p1, :cond_7

    .line 1959
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->forceSmoothKeyboard:Z

    if-eqz p1, :cond_6

    .line 1960
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v0, v1

    const/16 v1, 0x33

    invoke-virtual {p1, v3, v1, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 1962
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_7
    :goto_3
    if-eqz p2, :cond_f

    move v0, v2

    .line 1966
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_8
    move v0, v2

    .line 1970
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    if-nez v1, :cond_a

    .line 1971
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1972
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_9
    if-eqz p2, :cond_f

    .line 1977
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    if-eqz p1, :cond_b

    .line 1982
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v1, v2

    invoke-virtual {p1, p0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_b
    if-eqz p2, :cond_c

    .line 1985
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    return-void

    :cond_c
    move-object v3, p0

    goto :goto_4

    :cond_d
    move-object v3, p0

    if-eqz p1, :cond_e

    .line 1989
    iget-object p1, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_e
    if-eqz p2, :cond_f

    .line 1992
    iget-object v2, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    add-int/2addr p1, p2

    iget p2, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    add-int v4, p1, p2

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->update(Landroid/view/View;IIII)V

    :cond_f
    :goto_4
    return-void
.end method


# virtual methods
.method public addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;
    .locals 1

    const/4 v0, -0x1

    .line 2404
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    move-result-object v0

    return-object v0
.end method

.method public addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;
    .locals 4

    .line 2408
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 2409
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2413
    :cond_0
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2414
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method public addDivider(I)Landroid/view/View;
    .locals 2

    .line 740
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 742
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 743
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x43440000    # 196.0f

    .line 744
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 745
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 746
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 747
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 748
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 749
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 750
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 1106
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public addSubItem(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    .line 688
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    const/high16 v0, 0x43440000    # 196.0f

    .line 690
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 691
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 692
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 693
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 694
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 695
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 v0, -0x1

    .line 697
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x42400000    # 48.0f

    .line 698
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 699
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public addSubItem(ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 5

    .line 558
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 559
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 560
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 561
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_0

    const/16 v2, 0x10

    .line 563
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    .line 565
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    const/high16 v2, 0x41800000    # 16.0f

    .line 567
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v2, 0x43440000    # 196.0f

    .line 569
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 576
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    .line 577
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    const/4 p2, -0x1

    .line 579
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p2, 0x42400000    # 48.0f

    .line 580
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 581
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 8

    .line 650
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 6

    .line 654
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 656
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 657
    invoke-virtual {v0, p4, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x43440000    # 196.0f

    .line 658
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 661
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 662
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 663
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p2, -0x1

    .line 665
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p2, 0x42400000    # 48.0f

    .line 666
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 667
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 604
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v7, p4

    .line 608
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v6, p4

    .line 612
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    return-object p1
.end method

.method public addSubItem(ILandroid/view/View;II)V
    .locals 1

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 537
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 540
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 554
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public addSubItem(Landroid/view/View;II)V
    .locals 2

    .line 531
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public addSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;
    .locals 6

    .line 711
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 713
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 714
    invoke-virtual {v0, p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x43440000    # 196.0f

    .line 715
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 716
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 719
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    .line 720
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 p2, -0x1

    .line 722
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p2, 0x42400000    # 48.0f

    .line 723
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 724
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result p1

    .line 726
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;I)V

    iput-object p2, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 731
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda9;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    return-object v0
.end method

.method public checkHideMenuItem()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2029
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2030
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 2036
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2037
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public clearFocusOnSearchView()V
    .locals 1

    .line 2110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2111
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public clearSearchFilters()V
    .locals 2

    const/4 v0, 0x0

    .line 1110
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1111
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v1, :cond_0

    .line 1112
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    return-void
.end method

.method public clearSearchText()V
    .locals 2

    const/4 v0, 0x0

    .line 1882
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    .line 1883
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_0

    return-void

    .line 1886
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public closeSubMenu()V
    .locals 1

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->fixBackground:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public forceUpdatePopupPosition()V
    .locals 4

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1929
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    const/4 v0, 0x1

    .line 1930
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 1288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 1

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->createPopupLayout()V

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method public getSearchClearButton()Landroid/widget/ImageView;
    .locals 1

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSearchContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 2115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    .line 1352
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVisibleSubItemsCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2093
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2094
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2095
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hasSubItem(I)Z
    .locals 3

    .line 2014
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->findLazyItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2018
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2021
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hideSubItem(I)V
    .locals 2

    .line 1999
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->findLazyItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->setVisibility(I)V

    .line 2003
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2006
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2007
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2008
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 2009
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->measurePopup:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isSearchField()Z
    .locals 1

    .line 1878
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    return v0
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSearchFieldVisible2()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSubItemVisible(I)Z
    .locals 2

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2056
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2057
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public isSubMenuShowing()Z
    .locals 1

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleForCenterTitle()Z
    .locals 3

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    return v1

    .line 312
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->centerTitleVisibleForPartialAlpha:Z

    return v0
.end method

.method public lazilyAddColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 1

    .line 2653
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$smasColoredGap()Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object v0

    return-object v0
.end method

.method public lazilyAddSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2650
    invoke-static/range {p1 .. p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$smasSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    return-object p1
.end method

.method public lazilyAddSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 2644
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->lazilyAddSubItem(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    return-object p1
.end method

.method public lazilyAddSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2641
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$smasSwipeBackItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    return-object p1
.end method

.method public lazilyAddText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2661
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$smasText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    return-object p1
.end method

.method public lazilyAddView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;
    .locals 0

    .line 2657
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->-$$Nest$smasCustom(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->putLazyItem(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p1

    return-object p1
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 2124
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    .line 2126
    const-string v0, "android.widget.ImageButton"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void

    .line 2127
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2128
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1908
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1909
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1910
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 1912
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_1

    .line 1913
    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onLayout(IIII)V

    :cond_1
    return-void
.end method

.method public onSearchPressed()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchPressed(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->longClickEnabled:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 337
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 343
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 345
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_c

    .line 346
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 349
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 351
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return v3

    .line 354
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v1, v1, v4

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v5, v3

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 358
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 359
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->location:[I

    aget v6, v5, v4

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 360
    aget v5, v5, v3

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 361
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    move v2, v4

    .line 362
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    if-ge v2, v5, :cond_15

    .line 363
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 364
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 365
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 366
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_6

    :cond_5
    instance-of v6, v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v6, :cond_8

    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    if-eqz v6, :cond_8

    .line 367
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    float-to-int v7, v0

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_7

    .line 368
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 369
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_4

    .line 371
    :cond_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 372
    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    .line 373
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 374
    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    goto/16 :goto_4

    .line 376
    :cond_8
    instance-of v6, v5, Lcom/exteragram/messenger/components/ActionRow;

    if-eqz v6, :cond_b

    move-object v6, v5

    check-cast v6, Lcom/exteragram/messenger/components/ActionRow;

    .line 377
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    float-to-int v8, v0

    float-to-int v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 378
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v0, v7

    .line 379
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    .line 380
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    .line 383
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 384
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    move v8, v4

    .line 386
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 387
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 388
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 389
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->rect:Landroid/graphics/Rect;

    float-to-int v11, v7

    float-to-int v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 390
    invoke-virtual {v9, v3}, Landroid/view/View;->setPressed(Z)V

    .line 391
    invoke-virtual {v9, v3}, Landroid/view/View;->setSelected(Z)V

    .line 392
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    invoke-virtual {v9, v7, v10}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 393
    iput-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    goto :goto_2

    .line 395
    :cond_9
    invoke-virtual {v9, v4}, Landroid/view/View;->setPressed(Z)V

    .line 396
    invoke-virtual {v9, v4}, Landroid/view/View;->setSelected(Z)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 401
    :cond_a
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    move v6, v4

    .line 403
    :goto_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 404
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 405
    invoke-virtual {v7, v4}, Landroid/view/View;->setPressed(Z)V

    .line 406
    invoke-virtual {v7, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 413
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_14

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 415
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    .line 417
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    goto/16 :goto_6

    .line 418
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/exteragram/messenger/components/ActionRow$ActionItem;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/exteragram/messenger/components/ActionRow$ActionItem;

    .line 419
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    if-eqz v1, :cond_e

    .line 420
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 422
    :cond_e
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 424
    iget-boolean v1, v0, Lcom/exteragram/messenger/components/ActionRow$ActionItem;->enabled:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/exteragram/messenger/components/ActionRow$ActionItem;->action:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_f

    .line 425
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    .line 426
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/components/ActionRow$ActionItem;Landroid/view/View;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_15

    .line 429
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    goto :goto_6

    .line 432
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_11

    .line 433
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    goto :goto_5

    .line 434
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    if-eqz v0, :cond_12

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;->onItemClick(I)V

    .line 437
    :cond_12
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    goto :goto_6

    .line 439
    :cond_13
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    if-eqz v0, :cond_15

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    goto :goto_6

    .line 443
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 444
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 445
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedMenuView:Landroid/view/View;

    .line 448
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openSearch(Z)V
    .locals 1

    .line 954
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public redrawPopup(I)V
    .locals 1

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getBackgroundColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 759
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeAllSubItems()V
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->removeInnerViews()V

    return-void
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1091
    iget-boolean v0, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-nez v0, :cond_0

    return-void

    .line 1094
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1095
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 1096
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->selectedFilterIndex:I

    .line 1098
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onFiltersChanged()V

    .line 1099
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    return-void
.end method

.method public requestFocusOnSearchView()V
    .locals 1

    .line 2103
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2104
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1890
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    return-object p0
.end method

.method public setAdditionalXOffset(I)V
    .locals 0

    .line 1922
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalXOffset:I

    return-void
.end method

.method public setAdditionalYOffset(I)V
    .locals 0

    .line 1918
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->additionalYOffset:I

    return-void
.end method

.method public setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1895
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->allowCloseAnimation:Z

    return-object p0
.end method

.method public setAlpha(F)V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isVisibleForCenterTitle()Z

    move-result v0

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->centerTitleVisibleForPartialAlpha:Z

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->centerTitleVisibleForPartialAlpha:Z

    .line 290
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->centerTitle:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isVisibleForCenterTitle()Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 292
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    .line 293
    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 294
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 295
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->delegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;

    return-void
.end method

.method public setDimMenu(F)V
    .locals 0

    .line 936
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->dimMenu:F

    return-void
.end method

.method public setFitSubItems(Z)V
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    return-void
.end method

.method public setFixBackground(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->fixBackground:Z

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setForceSmoothKeyboard(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->forceSmoothKeyboard:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 1299
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconViewResId:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    return-void
.end method

.method public setIcon(IZ)V
    .locals 2

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconViewResId:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1307
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconViewResId:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    return-void

    .line 1309
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconViewResId:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v0, :cond_0

    return-void

    .line 1279
    :cond_0
    instance-of v1, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_1

    .line 1280
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    goto :goto_0

    .line 1282
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x0

    .line 1284
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconViewResId:I

    return-void
.end method

.method public setIconColor(I)V
    .locals 3

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz v0, :cond_0

    .line 465
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 471
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1362
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setIsSearchField(ZZ)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    return-object p0

    .line 1373
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchField:Z

    .line 1374
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->wrapSearchInScrollView:Z

    return-object p0
.end method

.method public setLayoutInScreen(Z)V
    .locals 0

    .line 480
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    return-void
.end method

.method public setLongClickEnabled(Z)V
    .locals 0

    .line 316
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->longClickEnabled:Z

    return-void
.end method

.method public setMenuXOffset(I)V
    .locals 0

    .line 818
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->xOffset:I

    return-void
.end method

.method public setMenuYOffset(I)V
    .locals 0

    .line 814
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->yOffset:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1740
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuDismiss(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 945
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setOverrideMenuClick(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1357
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->overrideMenuClick:Z

    return-object p0
.end method

.method public setPopupAnimationEnabled(Z)V
    .locals 1

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1901
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1903
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    return-void
.end method

.method public setPopupItemsColor(IZ)V
    .locals 5

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    goto :goto_2

    .line 768
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 769
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 770
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 771
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 772
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 773
    :cond_1
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    .line 775
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    goto :goto_1

    .line 777
    :cond_2
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setPopupItemsSelectorColor(I)V
    .locals 5

    .line 784
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 787
    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 788
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 789
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 790
    instance-of v4, v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v4, :cond_1

    .line 791
    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setSearchAdditionalButton(Landroid/view/View;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchAdditionalButton:Landroid/view/View;

    return-void
.end method

.method public setSearchFieldCaption(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1865
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1868
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchFieldHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1325
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldHint:Ljava/lang/CharSequence;

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1330
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchFieldText(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1334
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldText:Ljava/lang/CharSequence;

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFieldCaption:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animateClear:Z

    .line 1339
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1341
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSearchPaddingStart(I)V
    .locals 1

    .line 106
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchItemPaddingStart:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 110
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setShowSearchProgress(Z)V
    .locals 1

    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1855
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    return-void

    .line 1857
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    return-void
.end method

.method public setShowSubmenuByMove(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubmenuByMove:Z

    return-void
.end method

.method public setShowedFromBottom(Z)V
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    return-void
.end method

.method public setSubItemShown(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2086
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    return-void

    .line 2088
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void
.end method

.method public setSubMenuDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    return-void
.end method

.method public setSubMenuOpenSide(I)V
    .locals 0

    .line 476
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuOpenSide:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1317
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTransitionOffset(F)V
    .locals 0

    .line 2165
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->transitionOffset:F

    const/4 p1, 0x0

    .line 2166
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 277
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->transitionOffset:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setupPopupRadialSelectors(I)V
    .locals 1

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setupRadialSelectors(I)V

    :cond_0
    return-void
.end method

.method public showSubItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2061
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(IZ)V

    return-void
.end method

.method public showSubItem(IZ)V
    .locals 3

    .line 2068
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->findLazyItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2070
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$Item;->setVisibility(I)V

    .line 2072
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez p2, :cond_1

    goto :goto_0

    .line 2075
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2076
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 2077
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2078
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x96

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2079
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 2080
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->measurePopup:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toggleSearch(Z)Z
    .locals 14

    .line 976
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onPreToggleSearch()V

    .line 980
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->canToggleSearch()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 983
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->getCustomToggleTransition()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 986
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return v2

    .line 990
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 991
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 992
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 993
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v5, :cond_3

    .line 994
    check-cast v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 996
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1001
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v5, 0x96

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v3, :cond_b

    .line 1002
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1003
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_5

    .line 1004
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1005
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1007
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    .line 1008
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v4, [F

    aput v11, v12, v1

    aput v8, v12, v2

    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v11, v2, [Landroid/animation/Animator;

    aput-object v10, v11, v1

    invoke-virtual {v3, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v3, v1

    .line 1009
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 1010
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1011
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    new-array v13, v4, [F

    aput v12, v13, v1

    aput v7, v13, v2

    invoke-static {v11, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v12, v2, [Landroid/animation/Animator;

    aput-object v11, v12, v1

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1013
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1014
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1027
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_8

    move v0, v1

    .line 1030
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1031
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-boolean v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->removable:Z

    if-eqz v2, :cond_7

    .line 1032
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1038
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_9

    .line 1039
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchCollapse()V

    :cond_9
    if-eqz p1, :cond_a

    .line 1042
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1044
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1045
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v1

    .line 1048
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1050
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_c

    .line 1051
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1052
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1054
    :cond_c
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    .line 1055
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v4, [F

    aput v11, v12, v1

    aput v7, v12, v2

    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v10, v2, [Landroid/animation/Animator;

    aput-object v7, v10, v1

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v3, v1

    .line 1056
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 1057
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    new-array v12, v4, [F

    aput v11, v12, v1

    aput v8, v12, v2

    invoke-static {v10, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v11, v2, [Landroid/animation/Animator;

    aput-object v10, v11, v1

    invoke-virtual {v7, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1059
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1060
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/16 v0, 0x8

    .line 1070
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->clearSearchFilters()V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    if-eqz p1, :cond_e

    .line 1075
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1082
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1083
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->listener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz p1, :cond_f

    .line 1084
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;->onSearchExpand()V

    :cond_f
    return v2

    :cond_10
    :goto_4
    return v1
.end method

.method public toggleSubMenu()V
    .locals 1

    const/4 v0, 0x0

    .line 940
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public toggleSubMenu(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutLazyItems()V

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->parentMenu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 828
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 829
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 830
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showMenuRunnable:Ljava/lang/Runnable;

    .line 832
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 837
    :cond_4
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubMenuFrom:Landroid/view/View;

    .line 839
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->subMenuDelegate:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;

    if-eqz p2, :cond_5

    .line 840
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;->onShowSubMenu()V

    .line 842
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 843
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v0, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_b

    .line 848
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;Landroid/view/View;)V

    .line 860
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 861
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 863
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 864
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-boolean v5, v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v5, :cond_7

    const-wide/16 v5, 0xa5

    goto :goto_0

    :cond_7
    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 865
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 866
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 868
    :cond_8
    instance-of v4, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v4, :cond_9

    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    .line 869
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 870
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getBackgroundColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 871
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, -0x1

    .line 873
    invoke-static {v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0xa

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setTopView(Landroid/view/View;)V

    goto :goto_1

    .line 879
    :cond_b
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setTopView(Landroid/view/View;)V

    .line 881
    :goto_1
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {p1, p2, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 882
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 883
    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    .line 885
    :cond_c
    sget v2, Lorg/telegram/messenger/R$style;->PopupAnimation:I

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 887
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->animationEnabled:Z

    if-nez p1, :cond_d

    .line 888
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 890
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 891
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 892
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->layoutInScreen:Z

    if-eqz p1, :cond_e

    .line 893
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setLayoutInScreen(Z)V

    .line 895
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 897
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 898
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 913
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    const/high16 v2, -0x80000000

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/view/View;->measure(II)V

    if-eqz v1, :cond_f

    .line 914
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 916
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-lez v2, :cond_f

    .line 917
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 920
    :cond_f
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->measurePopup:Z

    .line 922
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->processedPopupClick:Z

    .line 923
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 924
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_10

    move p1, v3

    goto :goto_3

    :cond_10
    move p1, v4

    :goto_3
    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateOrShowPopup(ZZ)V

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->updateRadialSelectors()V

    .line 926
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 927
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground(Z)V

    .line 929
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    .line 930
    iget p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->dimMenu:F

    cmpl-float p2, p1, v0

    if-lez p2, :cond_12

    .line 931
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind(F)V

    :cond_12
    :goto_4
    return-void
.end method

.method public updateColor()V
    .locals 3

    .line 2136
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2137
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2138
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    if-eqz v2, :cond_0

    .line 2139
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->updateColors()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2143
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_3

    .line 2144
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_2

    .line 2146
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2150
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_4

    .line 2151
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2153
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2154
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    :cond_4
    return-void
.end method
