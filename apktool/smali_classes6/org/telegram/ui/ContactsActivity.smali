.class public Lorg/telegram/ui/ContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lme/vkryl/android/animator/FactorAnimator$Target;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;
.implements Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;
    }
.end annotation


# instance fields
.field private final ADDITIONAL_LIST_HEIGHT_DP:I

.field private actionModeCloseView:Landroid/widget/ImageView;

.field private additionFloatingButtonOffset:I

.field private additionNavigationBarHeight:I

.field private additionalFloatingTranslation:F

.field private allowBots:Z

.field private allowSelf:Z

.field private allowUsernameSearch:Z

.field private final animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

.field private askAboutContacts:Z

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private channelId:J

.field private chatId:J

.field private checkPermission:Z

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private createSecretChat:Z

.field private creatingChat:Z

.field private delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

.field private destroyAfterSelect:Z

.field private disableSections:Z

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private floatingButtonVisibleByScroll:Z

.field public hasMainTabs:Z

.field private headerShadowView:Lorg/telegram/ui/HeaderShadowView;

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private iBlur3Invalidated:Z

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private ignoreUsers:Landroidx/collection/LongSparseArray;

.field private imeInsetAnimatedHeight:I

.field private initialSearchString:Ljava/lang/String;

.field private lastIsEmpty:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

.field private mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

.field private navigationBarHeight:I

.field private needFinishFragment:Z

.field private needForwardCount:Z

.field private needPhonebook:Z

.field private onlyUsers:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private permissionRequestTime:J

.field public phonebookRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private resetDelegate:Z

.field private returnAsResult:Z

.field scheduled:Z

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private searchField:Lorg/telegram/ui/Components/FragmentSearchField;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

.field private searchQuery:Ljava/lang/String;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private final selectedContacts:Landroidx/collection/LongSparseArray;

.field private selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private sortByName:Z

.field sortContactsRunnable:Ljava/lang/Runnable;

.field private sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$5tg-Skt40gG1lGkoQaEth-qZWZw(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$showItemOptions$16(Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BF0NfsEeOKN7NtOPc9sH0L8i8RI(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JKMMNZVbhnScE5UBvbHjndBG4o0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 338
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$K2BXzwbskWm3G5CJpLv2R7JGyhI(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$KDhYSmylBGemapyKIwGE0Fkg3xM(Lorg/telegram/ui/ContactsActivity;ILandroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$6(ILandroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8nP2YjOEjQZvHFeoyfcJhXnR-Q(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$PWelELtJfhhoz0KTNKChWG3RTXE(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$showItemOptions$17(Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNdpKz_fOXdhyoz9WHw-8yWIIJo(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SKM9hcjcYOv0C2T1dUFezTE1TnA(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$askForPermissons$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TU6iJXh5kpJIZwwqiWJ_WdZUkRc(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXk57Rtq5qgMLLjMPYDRNhSVdkM(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$11(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WpJEgVzgAgmXhx9eDfQFfj1dRkI(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mh1k7NOStFCyTJ4WijImlA-pI0(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method public static synthetic $r8$lambda$hfbGnUoBMY_WMbxVvvibYPPlmYM(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6GalSEx282k5KZoowilW0kBrY4(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$getThemeDescriptions$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$jDLyVIJr9z0ErWIuZKUFNUYfIsQ(Lorg/telegram/ui/ContactsActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->lambda$onBecomeFullyVisible$13(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mu63MqzroJbiOxbXfWinYfrvdC8(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactsActivity;->lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$phR3lbdMVIHeu-codY8QAn8SO1g(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$performSelectedContactsDelete$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qxl6pCycibn89My4yJlxl__aocc(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$xQ5nBuNqyXlEL4HmIW890h2fv-Q(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContactsActivity;->lambda$createView$7(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetadditionFloatingButtonOffset(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->additionFloatingButtonOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSearchHasQuery(Lorg/telegram/ui/ContactsActivity;)Lme/vkryl/android/animator/BoolAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingButton(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderShadowView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/HeaderShadowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/ContactsActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistViewAdapter(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/ContactsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetneedPhonebook(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchField(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/FragmentSearchField;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchListViewAdapter(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Adapters/SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchWas(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsortByName(Lorg/telegram/ui/ContactsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsortItem(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadditionalFloatingTranslation(Lorg/telegram/ui/ContactsActivity;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->additionalFloatingTranslation:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfloatingButtonVisibleByScroll(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonVisibleByScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3Invalidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchQuery(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsortByName(Lorg/telegram/ui/ContactsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_emptyView(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_emptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_floatingButtonPosition(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_floatingButtonPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_floatingButtonVisible(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_floatingButtonVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_listViewPadding(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_listViewPadding()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_searchButton(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_searchFieldHint(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchFieldHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_searchFieldY(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchFieldY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_sortItem(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_sortItem()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideActionMode(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformSelectedContactsDelete(Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->performSelectedContactsDelete()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 10

    .line 210
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 123
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lorg/telegram/ui/ContactsActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    .line 129
    new-instance v3, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v7, 0x15e

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v3, v5, Lorg/telegram/ui/ContactsActivity;->animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 133
    new-instance v4, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v5, 0x2

    const-wide/16 v8, 0x15e

    move-object v7, v6

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    move-object v5, v6

    iput-object v4, v5, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    .line 136
    iput v0, v5, Lorg/telegram/ui/ContactsActivity;->phonebookRow:I

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->floatingButtonVisibleByScroll:Z

    .line 164
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 165
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 166
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 167
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 168
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    const/4 v2, 0x0

    .line 171
    iput-object v2, v5, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 173
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 180
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    .line 184
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v3, v5, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    .line 195
    iput-boolean v0, v5, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 1415
    new-instance v0, Lorg/telegram/ui/ContactsActivity$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactsActivity$9;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    iput-object v0, v5, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    .line 1713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3Positions:Ljava/util/ArrayList;

    .line 1714
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 1715
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 1716
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lt p1, v1, :cond_1

    .line 213
    new-instance p1, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object p1, v5, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 214
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 215
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void

    .line 217
    :cond_1
    iput-object v2, v5, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 218
    iput-object v2, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 219
    iput-object v2, v5, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private askForPermissons(Z)V
    .locals 4

    .line 1309
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1310
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v1, :cond_2

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1313
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_1

    .line 1314
    new-instance p1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1323
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1326
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    .line 1327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1331
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 1333
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1335
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blur3_InvalidateBlur()V
    .locals 9

    .line 1721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 1725
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 1726
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1728
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    sub-int/2addr v3, v4

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42600000    # 56.0f

    .line 1729
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v3, v4

    .line 1731
    iget-object v5, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    neg-int v6, v1

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-float v1, v8

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v6, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1732
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1733
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v3, 0x40000

    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3Positions:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private checkUi_emptyView()V
    .locals 3

    .line 1627
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_0

    .line 1628
    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->additionNavigationBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->imeInsetAnimatedHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    :cond_0
    return-void
.end method

.method private checkUi_floatingButtonPosition()V
    .locals 3

    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz v0, :cond_0

    .line 1688
    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->additionFloatingButtonOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->additionalFloatingTranslation:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private checkUi_floatingButtonVisible()V
    .locals 5

    .line 1693
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v3, :cond_1

    .line 1694
    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonVisibleByScroll:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 1696
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    if-eqz v0, :cond_4

    .line 1697
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonVisibleByScroll:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->searching:Z

    if-nez v0, :cond_3

    move v1, v2

    .line 1698
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    invoke-interface {v0, v1}, Lorg/telegram/ui/MainTabsActivityController;->setTabsVisible(Z)V

    :cond_4
    return-void
.end method

.method private checkUi_listViewPadding()V
    .locals 4

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ContactsActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    add-int/lit8 v1, v1, 0x2c

    int-to-float v1, v1

    .line 1635
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ContactsActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v2, v2

    .line 1637
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/ContactsActivity;->additionNavigationBarHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 1633
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private checkUi_searchButton()V
    .locals 3

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1681
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v2}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 1683
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    return-void
.end method

.method private checkUi_searchFieldHint()V
    .locals 3

    .line 1644
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1646
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->lastIsEmpty:Z

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 1647
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->SearchPeopleByUsername:I

    goto :goto_2

    :cond_3
    sget v2, Lorg/telegram/messenger/R$string;->SearchContacts:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v1, v1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_4

    sget v2, Lorg/telegram/messenger/R$string;->SearchPeopleByUsername:I

    goto :goto_3

    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->SearchContacts:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1649
    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->lastIsEmpty:Z

    return-void
.end method

.method private checkUi_searchFieldY()V
    .locals 6

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 1655
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1656
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1657
    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    .line 1660
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v4, v4, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmptyWithMainTabs:Z

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    int-to-float v2, v2

    sub-float/2addr v3, v2

    add-float/2addr v0, v3

    goto :goto_2

    :cond_1
    if-lez v4, :cond_2

    const/high16 v0, 0x42500000    # 52.0f

    .line 1664
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1668
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v4}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1669
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-lez v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v2, v1, v3}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method private checkUi_sortItem()V
    .locals 3

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1674
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    mul-float/2addr v0, v1

    .line 1676
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    return-void
.end method

.method private didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 1129
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1133
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p2, :cond_3

    .line 1134
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz p2, :cond_1

    .line 1136
    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->BotCantJoinGroups:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1138
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 1142
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_3

    .line 1143
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v1, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1144
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1146
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAdminAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1147
    sget p2, Lorg/telegram/messenger/R$string;->AddBotAsAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1148
    sget p2, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1, p3}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1154
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1156
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->CantAddBotAsAdmin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1157
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1159
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1163
    :cond_3
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1165
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p3, v3}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1167
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    if-eqz v1, :cond_4

    .line 1168
    sget v1, Lorg/telegram/messenger/R$string;->AddToTheGroupForwardCount:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p3, v5, v4

    aput-object v1, v5, v2

    const-string p3, "%s\n\n%s"

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1169
    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 1170
    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1171
    const-string v4, "50"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/16 v4, 0x11

    .line 1173
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1174
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v3, 0x6

    .line 1175
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1176
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    new-instance v3, Lorg/telegram/ui/ContactsActivity$8;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ContactsActivity$8;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1212
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 1214
    :goto_1
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1216
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, p1, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1217
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1218
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v1, :cond_9

    .line 1220
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_6

    .line 1222
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_5

    .line 1223
    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_5
    const/high16 p2, 0x41c00000    # 24.0f

    .line 1225
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 p2, 0x42100000    # 36.0f

    .line 1226
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1227
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    :cond_6
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    return-void

    .line 1232
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p2, :cond_8

    .line 1233
    invoke-interface {p2, p1, p3, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    .line 1234
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    if-eqz p1, :cond_8

    .line 1235
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 1238
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    if-eqz p1, :cond_9

    .line 1239
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_9
    :goto_2
    return-void
.end method

.method private hideActionMode()V
    .locals 8

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1082
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 1084
    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1085
    instance-of v5, v4, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v5, :cond_0

    .line 1086
    check-cast v4, Lorg/telegram/ui/Cells/UserCell;

    .line 1087
    iget-object v5, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1088
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto :goto_1

    .line 1090
    :cond_0
    instance-of v5, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v5, :cond_1

    .line 1091
    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1092
    iget-object v5, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1093
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    return-void
.end method

.method private synthetic lambda$askForPermissons$14(I)V
    .locals 4

    .line 1315
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "askAboutContacts2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsPermissionBadgeCheck:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1317
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1321
    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->showItemOptions()V

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 0

    .line 557
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 2

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 778
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-string v0, "sms"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 779
    const-string p1, "sms_body"

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 782
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(ILandroid/view/View;IFF)V
    .locals 5

    .line 594
    iget-object p4, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    const-string v0, "user_id"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p4, p5, :cond_b

    .line 595
    iget-boolean p1, p5, Lorg/telegram/ui/Adapters/SearchAdapter;->includeSearch:Z

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 599
    :cond_1
    invoke-virtual {p5, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 601
    iget-object p4, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p4}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    instance-of p4, p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p4, :cond_2

    .line 602
    check-cast p2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 603
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_23

    .line 604
    invoke-direct {p0, p2}, Lorg/telegram/ui/ContactsActivity;->showOrUpdateActionMode(Ljava/lang/Object;)V

    return-void

    .line 610
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_8

    .line 611
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 612
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapter;->isGlobalSearch(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 613
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 614
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 616
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p2, v1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 618
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_5

    .line 619
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_4

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    goto/16 :goto_2

    .line 622
    :cond_4
    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void

    .line 624
    :cond_5
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_7

    .line 625
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-nez p2, :cond_6

    goto/16 :goto_2

    .line 628
    :cond_6
    iput-boolean v2, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 629
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 631
    :cond_7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 632
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 633
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 634
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 638
    :cond_8
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 639
    check-cast p1, Ljava/lang/String;

    .line 640
    const-string p2, "section"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 641
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 642
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 645
    :cond_9
    new-instance p2, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 646
    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/NewContactBottomSheet;->setInitialPhoneNumber(Ljava/lang/String;Z)Lorg/telegram/ui/NewContactBottomSheet;

    .line 647
    invoke-virtual {p2}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    return-void

    .line 649
    :cond_a
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_23

    .line 650
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 651
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p3, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p2, p3, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactInviteDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean p5, p4, Lorg/telegram/ui/Adapters/ContactsAdapter;->includeSearch:Z

    if-eqz p5, :cond_d

    if-nez p3, :cond_c

    goto/16 :goto_2

    :cond_c
    add-int/lit8 p3, p3, -0x1

    .line 658
    :cond_d
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p4

    .line 659
    iget-object p5, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p5

    if-ltz p5, :cond_23

    if-gez p4, :cond_e

    goto/16 :goto_2

    .line 672
    :cond_e
    instance-of v4, p2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/ContactsEmptyView;

    if-eqz v4, :cond_f

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz p1, :cond_23

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 679
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    instance-of v4, p2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_10

    .line 680
    check-cast p2, Lorg/telegram/ui/Cells/UserCell;

    .line 681
    invoke-direct {p0, p2}, Lorg/telegram/ui/ContactsActivity;->showOrUpdateActionMode(Ljava/lang/Object;)V

    return-void

    .line 696
    :cond_10
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    if-eqz p2, :cond_11

    if-eqz p1, :cond_1c

    :cond_11
    if-nez p4, :cond_1c

    .line 697
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    if-eqz p2, :cond_14

    if-nez p5, :cond_13

    .line 699
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 700
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 703
    :cond_12
    new-instance p1, Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/InviteContactsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_13
    if-ne p5, v2, :cond_23

    .line 705
    new-instance p1, Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p1}, Lorg/telegram/ui/CallLogActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_14
    if-eqz p1, :cond_17

    if-nez p5, :cond_23

    .line 709
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 710
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 713
    :cond_15
    new-instance p1, Lorg/telegram/ui/GroupInviteActivity;

    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-eqz p4, :cond_16

    goto :goto_0

    :cond_16
    iget-wide p2, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    :goto_0
    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/GroupInviteActivity;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_17
    if-nez p5, :cond_19

    .line 717
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 718
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 721
    :cond_18
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 722
    new-instance p2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    :cond_19
    if-ne p5, v2, :cond_23

    .line 724
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 725
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 728
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 729
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const-string p3, "channel_intro"

    if-nez p2, :cond_1b

    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 730
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 731
    const-string p2, "step"

    invoke-virtual {p1, p2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 732
    new-instance p2, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 734
    :cond_1b
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-direct {p2, v3}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 735
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 740
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    .line 741
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p2

    .line 742
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    .line 744
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_20

    .line 745
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 746
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz p2, :cond_1e

    .line 747
    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1d

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, p3, p4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_1d

    goto/16 :goto_2

    .line 750
    :cond_1d
    invoke-direct {p0, p1, v2, v1}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void

    .line 752
    :cond_1e
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p2, :cond_1f

    .line 753
    iput-boolean v2, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    .line 754
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 756
    :cond_1f
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 757
    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 758
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 759
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 763
    :cond_20
    instance-of p2, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p2, :cond_23

    .line 764
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 766
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_21

    .line 767
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_21
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_23

    .line 769
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_22

    goto :goto_2

    .line 772
    :cond_22
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    sget p3, Lorg/telegram/messenger/R$string;->InviteUser:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 774
    sget p3, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 776
    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ContactsActivity;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 785
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 786
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_23
    :goto_2
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;I)Z
    .locals 3

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 793
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 794
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result p2

    .line 795
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 796
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    if-ltz p2, :cond_1

    if-gez v0, :cond_2

    :cond_1
    return v2

    .line 867
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v1, :cond_3

    .line 868
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 869
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showOrUpdateActionMode(Ljava/lang/Object;)V

    return v0

    :cond_3
    if-nez p2, :cond_5

    .line 873
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez p2, :cond_5

    instance-of p2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz p2, :cond_5

    .line 874
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 875
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p2, :cond_4

    .line 876
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->showOrUpdateActionMode(Ljava/lang/Object;)V

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 1

    .line 962
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 963
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 966
    :cond_0
    new-instance p1, Lorg/telegram/ui/NewContactBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/NewContactBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/telegram/ui/NewContactBottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$didSelectResult$11(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1149
    iget-object p3, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    if-eqz p3, :cond_0

    .line 1150
    invoke-interface {p3, p1, p2, p0}, Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;->didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    const/4 p1, 0x0

    .line 1151
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    :cond_0
    return-void
.end method

.method private synthetic lambda$didSelectResult$12(Lorg/telegram/tgnet/TLRPC$User;Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1216
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/ContactsActivity;->didSelectResult(Lorg/telegram/tgnet/TLRPC$User;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$15()V
    .locals 5

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 1461
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1463
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1464
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v4, :cond_0

    .line 1465
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_1

    .line 1466
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v4, :cond_1

    .line 1467
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1471
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1472
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1475
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_4

    .line 1476
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateColors()V

    .line 1478
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_5

    .line 1479
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onBecomeFullyVisible$13(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1280
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-nez p1, :cond_1

    return-void

    .line 1284
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    return-void
.end method

.method private synthetic lambda$performSelectedContactsDelete$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 1111
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    .line 1112
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 1114
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1}, Lorg/telegram/messenger/ContactsController;->deleteContactsUndoable(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 1120
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    return-void
.end method

.method private synthetic lambda$showItemOptions$16(Lorg/telegram/ui/ContactsActivity;)V
    .locals 2

    .line 1761
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/UserConfig;->setShowContactsTab(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$showItemOptions$17(Lorg/telegram/ui/ContactsActivity;)V
    .locals 2

    .line 1762
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/UserConfig;->setShowContactsTab(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1609
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    .line 1611
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_listViewPadding()V

    .line 1612
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_floatingButtonPosition()V

    .line 1613
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_emptyView()V

    .line 1615
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private performSelectedContactsDelete()V
    .locals 4

    .line 1102
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1103
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1104
    sget v1, Lorg/telegram/messenger/R$string;->DeleteContactTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1105
    sget v1, Lorg/telegram/messenger/R$string;->DeleteContactSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DeleteContactsTitle"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1108
    sget v1, Lorg/telegram/messenger/R$string;->DeleteContactsSubtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1110
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1122
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1123
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1125
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->redPositive()V

    return-void
.end method

.method private scheduleSort()V
    .locals 3

    .line 1424
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->scheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1425
    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->scheduled:Z

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1427
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->sortContactsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private showItemOptions()V
    .locals 6

    .line 1758
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 1759
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/16 v2, 0x8

    .line 1760
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1761
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    sget v4, Lorg/telegram/messenger/R$string;->HideContactsTab:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 1762
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/UserConfig;->showContactsTab:Z

    xor-int/lit8 v2, v2, 0x1

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_add_tab_24:I

    sget v4, Lorg/telegram/messenger/R$string;->ShowContactsTab:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    .line 1763
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1764
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private showOrUpdateActionMode(Ljava/lang/Object;)V
    .locals 2

    .line 1055
    instance-of v0, p1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v0, :cond_0

    .line 1056
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ContactsActivity;->addOrRemoveSelectedContact(Lorg/telegram/ui/Cells/UserCell;)Z

    move-result p1

    goto :goto_0

    .line 1057
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v0, :cond_4

    .line 1058
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ContactsActivity;->addOrRemoveSelectedContact(Lorg/telegram/ui/Cells/ProfileSearchCell;)Z

    move-result p1

    .line 1064
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1065
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1066
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1071
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1072
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 1074
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    :cond_2
    const/4 v1, 0x0

    .line 1077
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    :cond_4
    return-void
.end method

.method private updateVisibleRows(I)V
    .locals 4

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1433
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1435
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1436
    instance-of v3, v2, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_0

    .line 1437
    check-cast v2, Lorg/telegram/ui/Cells/UserCell;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOrRemoveSelectedContact(Lorg/telegram/ui/Cells/ProfileSearchCell;)Z
    .locals 5

    .line 1039
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v0

    .line 1040
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 1041
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1042
    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1045
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1046
    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    return v4

    :cond_1
    :goto_0
    return v3
.end method

.method public addOrRemoveSelectedContact(Lorg/telegram/ui/Cells/UserCell;)Z
    .locals 5

    .line 1025
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v0

    .line 1026
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    .line 1027
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1028
    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 1030
    iget-object v2, p0, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1031
    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    return v4

    :cond_1
    :goto_0
    return v3
.end method

.method public canParentTabsSlide(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 1014
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    .line 1015
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setUseContainerForTitles()V

    .line 1016
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitlesContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1018
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    .line 1019
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1020
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 296
    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    iput v0, v1, Lorg/telegram/ui/ContactsActivity;->additionNavigationBarHeight:I

    .line 297
    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    iput v0, v1, Lorg/telegram/ui/ContactsActivity;->additionFloatingButtonOffset:I

    .line 298
    iput-boolean v14, v1, Lorg/telegram/ui/ContactsActivity;->searching:Z

    .line 299
    iput-boolean v14, v1, Lorg/telegram/ui/ContactsActivity;->searchWas:Z

    .line 301
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 302
    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    if-eqz v0, :cond_4

    .line 303
    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->SelectContact:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 306
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v3, v1, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    goto :goto_2

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->NewMessageTitle:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 309
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    :goto_3
    new-instance v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 313
    iget-boolean v3, v1, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-nez v3, :cond_5

    .line 314
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_5
    new-instance v0, Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/FragmentSearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    .line 318
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentSearchField;->setSectionBackground()V

    .line 319
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 320
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 323
    iget-boolean v4, v1, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v4, :cond_6

    .line 324
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    .line 325
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 326
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v5, v15}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 328
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->actionModeCloseView:Landroid/widget/ImageView;

    const/16 v5, 0x10

    const/16 v6, 0x36

    invoke-static {v6, v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :cond_6
    new-instance v4, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v5, 0x12

    .line 334
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 335
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 336
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 337
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-boolean v6, v1, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v6, :cond_7

    :goto_4
    move v9, v5

    goto :goto_5

    :cond_7
    const/16 v5, 0x48

    goto :goto_4

    :goto_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->selectedContactsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v5, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v0, v7, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 341
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ContactsActivity$1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ContactsActivity$1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 369
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 371
    sget v4, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v0, v14, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/ContactsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 372
    sget v5, Lorg/telegram/messenger/R$string;->SearchContacts:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v4, v4, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/messenger/utils/SearchTextWatcher;

    new-instance v6, Lorg/telegram/ui/ContactsActivity$2;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ContactsActivity$2;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-direct {v5, v4, v6}, Lorg/telegram/messenger/utils/SearchTextWatcher;-><init>(Landroid/widget/EditText;Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 423
    iget-boolean v4, v1, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    const/4 v5, -0x1

    if-nez v4, :cond_9

    iget-boolean v4, v1, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v4, :cond_9

    .line 424
    iget-boolean v4, v1, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v4, :cond_8

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_contacts_time:I

    goto :goto_6

    :cond_8
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_contacts_name:I

    :goto_6
    invoke-virtual {v0, v15, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 425
    sget v6, Lorg/telegram/messenger/R$string;->AccDescrContactSorting:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 428
    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_9
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object v2, v0

    .line 433
    new-instance v0, Lorg/telegram/ui/ContactsActivity$3;

    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    move v6, v5

    iget-object v5, v1, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    move v7, v6

    iget-boolean v6, v1, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    iget-boolean v9, v1, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    iget-boolean v10, v1, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move v8, v7

    const/4 v7, 0x0

    move v11, v8

    const/4 v8, 0x0

    move/from16 v16, v11

    const/4 v11, 0x1

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v13}, Lorg/telegram/ui/ContactsActivity$3;-><init>(Lorg/telegram/ui/ContactsActivity;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZZZZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    .line 441
    invoke-virtual {v0, v15}, Lorg/telegram/ui/Adapters/SearchAdapter;->setUseUserCell(Z)V

    .line 442
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    iput-boolean v14, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->includeSearch:Z

    .line 444
    iget-wide v2, v1, Lorg/telegram/ui/ContactsActivity;->chatId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v9, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_a

    .line 445
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v1, Lorg/telegram/ui/ContactsActivity;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 446
    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    :goto_7
    move v8, v0

    goto :goto_8

    .line 447
    :cond_a
    iget-wide v6, v1, Lorg/telegram/ui/ContactsActivity;->channelId:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_c

    .line 448
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v1, Lorg/telegram/ui/ContactsActivity;->channelId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 449
    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v9

    goto :goto_7

    :cond_b
    move v0, v14

    goto :goto_7

    :cond_c
    move v8, v14

    .line 453
    :goto_8
    new-instance v0, Lorg/telegram/ui/ContactsActivity$4;

    iget-boolean v4, v1, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    iget-boolean v5, v1, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    iget-object v6, v1, Lorg/telegram/ui/ContactsActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    iget-object v7, v1, Lorg/telegram/ui/ContactsActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ContactsActivity$4;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IZLandroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;I)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    .line 478
    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->sortItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_d

    iget-boolean v3, v1, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-eqz v3, :cond_e

    move v9, v15

    goto :goto_9

    :cond_d
    move v9, v14

    :cond_e
    :goto_9
    invoke-virtual {v0, v9, v14}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 479
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iget-boolean v3, v1, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setDisableSections(Z)V

    .line 480
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    iput-boolean v14, v0, Lorg/telegram/ui/Adapters/ContactsAdapter;->includeSearch:Z

    .line 482
    new-instance v0, Lorg/telegram/ui/ContactsActivity$5;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ContactsActivity$5;-><init>(Lorg/telegram/ui/ContactsActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 555
    new-instance v3, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v3, v4, v0, v5}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v3, v1, Lorg/telegram/ui/ContactsActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 556
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 559
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Z)V

    .line 560
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 562
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1d

    .line 563
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 564
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 566
    new-instance v3, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v3, v2, v0, v15}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v3, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 567
    invoke-virtual {v3, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 568
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 569
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v15, v14}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 570
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/high16 v22, 0x41400000    # 12.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x77

    const/high16 v20, 0x41400000    # 12.0f

    const/high16 v21, 0x42800000    # 64.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 575
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    const-wide/16 v3, 0x96

    .line 576
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 577
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 578
    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 579
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 580
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 581
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 582
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v2, v15, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v1, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 583
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 584
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 585
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v1, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 586
    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 587
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, v1, Lorg/telegram/ui/ContactsActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    neg-int v5, v4

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v22, 0x0

    move/from16 v23, v4

    move/from16 v21, v5

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    const/high16 v22, 0x40c00000    # 6.0f

    const/16 v23, 0x0

    const/high16 v18, 0x42500000    # 52.0f

    const/16 v19, 0x30

    const/high16 v20, 0x40c00000    # 6.0f

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 592
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v15, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 593
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v8}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContactsActivity;I)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 791
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 882
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ContactsActivity$6;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 958
    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v0, :cond_f

    .line 959
    new-instance v0, Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 960
    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v3, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v3, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon:I

    const/16 v4, 0x2c

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimation(II)V

    .line 970
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v3, v3, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    sub-int/2addr v3, v15

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 971
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v3, Lorg/telegram/messenger/R$string;->CreateNewContact:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 974
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 975
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 976
    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    .line 979
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 981
    new-instance v0, Lorg/telegram/ui/HeaderShadowView;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/HeaderShadowView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    iput-object v0, v1, Lorg/telegram/ui/ContactsActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    .line 982
    invoke-virtual {v0, v14, v14}, Lorg/telegram/ui/HeaderShadowView;->setShadowVisible(ZZ)V

    .line 983
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/ContactsActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    const/4 v3, 0x5

    const/16 v4, 0x30

    const/4 v6, -0x1

    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v1, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 986
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v1, Lorg/telegram/ui/ContactsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 989
    iget-object v0, v1, Lorg/telegram/ui/ContactsActivity;->animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, v15, v14}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    .line 991
    invoke-direct {v1}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchFieldHint()V

    .line 993
    new-instance v0, Lorg/telegram/ui/ContactsActivity$7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ContactsActivity$7;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 1005
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_11

    .line 1006
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getRootAnimatedInsetsListener()Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;->subscribeToWindowInsetsAnimation(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;)V

    .line 1008
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1009
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1381
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_1

    .line 1383
    iget-boolean p2, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 1384
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setSortType(IZ)V

    .line 1386
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 1388
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContactsActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/SearchAdapter;

    if-ne p1, p2, :cond_7

    .line 1389
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->searchDialogs(Ljava/lang/String;)V

    return-void

    .line 1391
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_5

    .line 1392
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1393
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p2, p1

    if-nez p2, :cond_3

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_4

    .line 1394
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->updateVisibleRows(I)V

    .line 1396
    :cond_4
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz p1, :cond_7

    .line 1397
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->scheduleSort()V

    return-void

    .line 1399
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    if-ne p1, p2, :cond_6

    .line 1400
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-eqz p1, :cond_7

    .line 1401
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1402
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1403
    const-string p3, "enc_id"

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1404
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1405
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    .line 1407
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, p2, :cond_7

    .line 1408
    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->creatingChat:Z

    if-nez p1, :cond_7

    .line 1409
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    :cond_7
    return-void
.end method

.method public getAnimatedInsetsTargetView()Landroid/view/View;
    .locals 1

    .line 1598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getGlassSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 1

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object v0
.end method

.method protected getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 33

    move-object/from16 v0, p0

    .line 1457
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    new-instance v8, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    .line 1483
    iget-boolean v2, v0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-nez v2, :cond_0

    .line 1484
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_0
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    const/4 v3, 0x0

    aput-object v2, v12, v3

    const-string v18, "textView"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v13, v3

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v12, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v11, Lorg/telegram/ui/Cells/UserCell;

    aput-object v11, v3, v4

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v23

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v21, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move/from16 v27, v32

    invoke-direct/range {v19 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v11, v5, v4

    const-string v4, "statusColor"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    move-object v9, v8

    const/4 v8, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v11, v5, v4

    const-string v4, "statusOnlineColor"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v11, v3, v4

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v23, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v26, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCell;

    aput-object v5, v3, v4

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v2, v3

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v5, v9, v2

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v10

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v5, v10, v2

    const-string v2, "imageView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz v2, :cond_1

    .line 1520
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v4, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v5, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ContactsActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v6, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v7, v2, v3

    const/4 v11, 0x0

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_1
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v3, v9, v2

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v3, v10, v2

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v3, v11, v2

    const/4 v2, 0x1

    new-array v13, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v2, v13, v4

    const/4 v14, 0x0

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    const/4 v10, 0x0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v14, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v2, v14, v4

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v3, v13, v2

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/4 v12, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v3, v14, v2

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    const/4 v13, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v3, v15, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/graphics/Paint;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v2, v6, v4

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    const/4 v4, 0x2

    aput-object v2, v6, v4

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v3, v3, v7

    new-array v5, v5, [Landroid/graphics/Paint;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v3, v5, v6

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    aput-object v3, v5, v4

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimatedInsetsChanged(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 1603
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/ContactsActivity;->imeInsetAnimatedHeight:I

    .line 1604
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_emptyView()V

    return-void
.end method

.method public synthetic onAnimatedInsetsFinished()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener$-CC;->$default$onAnimatedInsetsFinished(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;)V

    return-void
.end method

.method public synthetic onAnimatedInsetsStarted()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener$-CC;->$default$onAnimatedInsetsStarted(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1247
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->hideActionMode()V

    :cond_0
    return v1

    .line 1249
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchHasQuery:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1251
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    :cond_2
    return v1

    .line 1255
    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyVisible()V
    .locals 3

    .line 1270
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1271
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    if-eqz v0, :cond_1

    .line 1272
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1274
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 1275
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    new-instance v1, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ContactsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContactsActivity;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createContactsPermissionDialog(Landroid/app/Activity;Lorg/telegram/messenger/MessagesStorage$IntCallback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1288
    invoke-direct {p0, v0}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_1
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1

    .line 1301
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1303
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactsActivity;->askForPermissons(Z)V

    :cond_0
    return-void
.end method

.method public onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1545
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchButton()V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 1562
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_searchButton()V

    .line 1563
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_sortItem()V

    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 8

    .line 229
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 230
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 231
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 232
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 233
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 234
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->checkPermission:Z

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 236
    const-string v3, "onlyUsers"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->onlyUsers:Z

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "destroyAfterSelect"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->destroyAfterSelect:Z

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "returnAsResult"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "createSecretChat"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "selectAlertString"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->selectAlertString:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowUsernameSearch"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowUsernameSearch:Z

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needForwardCount"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needForwardCount:Z

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowBots"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowBots:Z

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "allowSelf"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->allowSelf:Z

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "channelId"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/ContactsActivity;->channelId:J

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needFinishFragment"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needFinishFragment:Z

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "chat_id"

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ContactsActivity;->chatId:J

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "disableSections"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->disableSections:Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "resetDelegate"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->resetDelegate:Z

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "needPhonebook"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "hasMainTabs"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    goto :goto_0

    .line 253
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/ContactsActivity;->needPhonebook:Z

    .line 256
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->createSecretChat:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->returnAsResult:Z

    if-nez v0, :cond_1

    .line 257
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->sortContactsByName:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->sortByName:Z

    .line 260
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe(Z)V

    .line 263
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput v0, p0, Lorg/telegram/ui/ContactsActivity;->additionNavigationBarHeight:I

    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_3
    iput v2, p0, Lorg/telegram/ui/ContactsActivity;->additionFloatingButtonOffset:I

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 271
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 272
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 273
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 274
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 275
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 281
    iput-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 283
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1620
    iput p4, p0, Lorg/telegram/ui/ContactsActivity;->navigationBarHeight:I

    .line 1621
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_listViewPadding()V

    .line 1622
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_floatingButtonPosition()V

    .line 1623
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_emptyView()V

    return-void
.end method

.method public onParentScrollToTop()V
    .locals 4

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 1748
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1750
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, v3, v3, v3, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    .line 1754
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->animatorSearchFieldVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0, v2, v2}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1373
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 1342
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 1343
    array-length v1, p3

    if-gt v1, v0, :cond_0

    goto :goto_1

    .line 1346
    :cond_0
    const-string v1, "android.permission.READ_CONTACTS"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1347
    aget p2, p3, v0

    if-nez p2, :cond_1

    .line 1348
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    return-void

    .line 1350
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iput-boolean p1, p0, Lorg/telegram/ui/ContactsActivity;->askAboutContacts:Z

    .line 1351
    const-string p3, "askAboutContacts"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "askAboutContacts2"

    .line 1352
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1353
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/ContactsActivity;->permissionRequestTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 1356
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    const-string p2, "package"

    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1358
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1359
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1361
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1260
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lorg/telegram/ui/ContactsActivity;->floatingButtonVisibleByScroll:Z

    .line 1262
    invoke-direct {p0}, Lorg/telegram/ui/ContactsActivity;->checkUi_floatingButtonVisible()V

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V
    .locals 0

    .line 1444
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->delegate:Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;

    return-void
.end method

.method public setInitialSearchString(Ljava/lang/String;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->initialSearchString:Ljava/lang/String;

    return-void
.end method

.method public setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    return-void
.end method
