.class public Lorg/telegram/ui/GroupCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateActivity$SpansContainer;,
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;,
        Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;,
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;,
        Lorg/telegram/ui/GroupCreateActivity$Letter;,
        Lorg/telegram/ui/GroupCreateActivity$Comparator;
    }
.end annotation


# instance fields
.field private final ADDITIONAL_LIST_HEIGHT_DP:I

.field private actionBarBackgroundView:Landroid/view/View;

.field private adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

.field private final addToGroup:Z

.field private final allSpans:Ljava/util/ArrayList;

.field private final allowMiniApps:Z

.field private final allowPremium:Z

.field private final animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private final animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

.field private buttonsContainer:Landroid/widget/FrameLayout;

.field private final channelId:J

.field private final chatAddType:I

.field private final chatId:J

.field private final chatType:I

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private customTitle:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

.field private delegate2:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

.field private doneButtonVisible:Z

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private fieldY:I

.field private floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private final forImport:Z

.field private headerShadowView:Lorg/telegram/ui/HeaderShadowView;

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private iBlur3Invalidated:Z

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionBottomBar:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private ignoreScrollEvent:Z

.field private ignoreUsers:Landroidx/collection/LongSparseArray;

.field private imeInsetAnimatedHeight:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private final initialIds:Ljava/util/HashSet;

.field private initialMiniApps:Z

.field private initialPremium:Z

.field private final isAlwaysShare:Z

.field private final isCall:Z

.field private final isNeverShare:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final maxCount:I

.field maxSize:I

.field private navigationBarHeight:I

.field private scrollView:Landroid/widget/ScrollView;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private searchField:Lorg/telegram/ui/Components/FragmentSearchField;

.field private searchWas:Z

.field private searching:Z

.field private final selectedContacts:Landroidx/collection/LongSparseArray;

.field private selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private sharedLinkBottomSheet:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

.field private shiftDp:I

.field private showDiscardConfirm:Z

.field private spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

.field private final tmpClipRect:Landroid/graphics/Rect;

.field private toSelectIds:Ljava/util/ArrayList;

.field private toSelectMiniApps:Z

.field private toSelectPremium:Z


# direct methods
.method public static synthetic $r8$lambda$0_gYlnn6E61UbIcTa0e3rs1Acqs(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$2qPw1Kerzx5Gs-STdtKY-kmEfCc(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$2(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5wdy-jrdAGG59If3igpB2XBh83s(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->lambda$getThemeDescriptions$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$70RpEkbvpIavIudvQ6z50ktBaoM(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8IOrxFyBkfvwI896YBZUDvC-m3s(Lorg/telegram/ui/GroupCreateActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9bKDFwCAJ4pBJ41kKJLUZ0ISFcI(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$3(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BN58Os9IFjZuZelW8kEY-FrTllA(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gn4NdfQ-fpEgleDrmfBZ1Kfj-1M(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->lambda$showPremiumBlockedToast$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$RSrnDFX0YbyBe9E_cGkck2PP6pg(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UAtxiZsfWO5oYcY7GicX5jANl48(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity;->lambda$checkDiscard$13(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3m_S-lcemlI_GjWTTbS89tZiCc(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCreateActivity;->lambda$checkDiscard$12(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$clTU04d38fERnHTweJv-1g0OWbI(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-IXkOX9x5AeOx8EU9L5J3nt5E8(Lorg/telegram/ui/GroupCreateActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$showItemsAnimated$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l6LXkjLGwy46TX6IxgoLyukTs6A(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$checkVisibleRows$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lsz0_juynetEgUr-m7iZcUwwYA0(Lorg/telegram/ui/GroupCreateActivity;[Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateActivity;->lambda$onDonePressed$15([Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZn4qaevwU3qaA5WQjupy2Z1SDE(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$pa9Bra2aViS_qAWJDydPupWcNkY(Lorg/telegram/ui/GroupCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPN1Bpn2YRceGgWn5L3Up0AxOk0([Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 1294
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBarBackgroundView(Lorg/telegram/ui/GroupCreateActivity;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBarBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddToGroup(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallSpans(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallowMiniApps(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->allowMiniApps:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetallowPremium(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->allowPremium:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSelectorContainerHeight(Lorg/telegram/ui/GroupCreateActivity;)Lme/vkryl/android/animator/FactorAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelId(Lorg/telegram/ui/GroupCreateActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetchatId(Lorg/telegram/ui/GroupCreateActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfieldY(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderShadowView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/HeaderShadowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3Invalidated(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Invalidated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreUsers(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisAlwaysShare(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisCall(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisNeverShare(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollView(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchField(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/FragmentSearchField;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedMiniApps(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPremium(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspansContainer(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputfieldY(Lorg/telegram/ui/GroupCreateActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/GroupCreateActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Invalidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/GroupCreateActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/GroupCreateActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedMiniApps(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedPremium(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDiscard(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->checkDiscard(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckUi_bottomButtons(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_bottomButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_floatingButton(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_floatingButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_headerShadowY(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_headerShadowY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_listClip(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listClip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_listViewPadding(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listViewPadding()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_searchFieldY(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_searchFieldY()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckVisibleRows(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseSearch(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->closeSearch()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawBlurRect(Lorg/telegram/ui/GroupCreateActivity;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCreateActivity;->drawBlurRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDonePressed(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowItemsAnimated(Lorg/telegram/ui/GroupCreateActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->showItemsAnimated(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonsVisibility(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateButtonsVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEditTextHint(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateEditTextHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHint(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 11

    .line 473
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    const/16 v3, 0x30

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v3, p0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    .line 111
    new-instance v4, Lme/vkryl/android/animator/FactorAnimator;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x15e

    const/4 v5, 0x3

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lme/vkryl/android/animator/FactorAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v4, v6, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    .line 113
    new-instance v5, Lme/vkryl/android/animator/BoolAnimator;

    const/4 v6, 0x4

    const-wide/16 v9, 0x15e

    move-object v8, v7

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    move-object v6, v7

    iput-object v5, v6, Lorg/telegram/ui/GroupCreateActivity;->animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

    .line 154
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 186
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->initialIds:Ljava/util/HashSet;

    const/4 v3, -0x4

    .line 1038
    iput v3, v6, Lorg/telegram/ui/GroupCreateActivity;->shiftDp:I

    .line 2115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->tmpClipRect:Landroid/graphics/Rect;

    .line 2142
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Positions:Ljava/util/ArrayList;

    .line 2143
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v6, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 2144
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v6, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionBottomBar:Landroid/graphics/RectF;

    .line 2146
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v3, "chatType"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v6, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 475
    const-string v4, "forImport"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v6, Lorg/telegram/ui/GroupCreateActivity;->forImport:Z

    .line 476
    const-string v4, "isAlwaysShare"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v6, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    .line 477
    const-string v5, "isNeverShare"

    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v6, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    .line 478
    const-string v7, "isCall"

    invoke-virtual {p1, v7, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    .line 479
    const-string v8, "addToGroup"

    invoke-virtual {p1, v8, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v6, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    .line 480
    const-string v9, "chatAddType"

    invoke-virtual {p1, v9, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v6, Lorg/telegram/ui/GroupCreateActivity;->chatAddType:I

    .line 481
    const-string v9, "allowPremium"

    invoke-virtual {p1, v9, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v6, Lorg/telegram/ui/GroupCreateActivity;->allowPremium:Z

    .line 482
    const-string v9, "allowMiniapps"

    invoke-virtual {p1, v9, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v6, Lorg/telegram/ui/GroupCreateActivity;->allowMiniApps:Z

    .line 483
    const-string v9, "chatId"

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    .line 484
    const-string v9, "channelId"

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    .line 488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v6, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    goto :goto_3

    .line 490
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    if-nez v3, :cond_3

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    goto :goto_1

    :cond_3
    iget p1, p1, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    :goto_1
    iput p1, v6, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    goto :goto_3

    .line 486
    :cond_4
    :goto_2
    iput v1, v6, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    :goto_3
    const/4 p1, 0x0

    if-lt v0, v2, :cond_5

    .line 494
    new-instance v0, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 495
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, v6, Lorg/telegram/ui/GroupCreateActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void

    .line 497
    :cond_5
    iput-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 498
    iput-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method private blur3_InvalidateBlur()V
    .locals 6

    .line 2151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 2155
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2156
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    add-int/2addr v0, v2

    .line 2158
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2159
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionBottomBar:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2162
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3PositionBottomBar:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2165
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Positions:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v2}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private checkDiscard(Z)Z
    .locals 6

    .line 1204
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->showDiscardConfirm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1206
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1207
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1208
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1210
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->initialPremium:Z

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->initialMiniApps:Z

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->initialIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v1

    :goto_4
    if-nez v3, :cond_7

    .line 1212
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 1213
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->initialIds:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v3, v1

    :cond_7
    if-eqz v3, :cond_9

    if-eqz p1, :cond_8

    .line 1221
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1222
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1223
    sget v0, Lorg/telegram/messenger/R$string;->PrivacySettingsChangedAlert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1224
    sget v0, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1225
    sget v0, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1226
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method private checkUi_bottomButtons()V
    .locals 4

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2103
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v0

    .line 2104
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2105
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2106
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private checkUi_floatingButton()V
    .locals 3

    .line 2110
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz v0, :cond_0

    .line 2111
    iget v1, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    iget v2, p0, Lorg/telegram/ui/GroupCreateActivity;->imeInsetAnimatedHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method private checkUi_headerShadowY()V
    .locals 3

    .line 2095
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {v2}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private checkUi_listClip()V
    .locals 6

    .line 2117
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->hasActiveEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    .line 2122
    :cond_0
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2124
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->tmpClipRect:Landroid/graphics/Rect;

    iget v2, p0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    add-int/lit8 v2, v2, 0x30

    int-to-float v2, v2

    .line 2126
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2127
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 2128
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2129
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->tmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private checkUi_listViewPadding()V
    .locals 6

    .line 2080
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2082
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v3, p0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    add-int/lit8 v3, v3, 0x30

    int-to-float v3, v3

    .line 2084
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {v4}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v4, v4

    .line 2086
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 2082
    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v2, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private checkUi_searchFieldY()V
    .locals 2

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorSelectorContainerHeight:Lme/vkryl/android/animator/FactorAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/FactorAnimator;->getFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private checkVisibleRows()V
    .locals 11

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_c

    .line 1132
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1133
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    .line 1134
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1135
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 1137
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    .line 1138
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_3

    .line 1139
    :cond_0
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_1

    .line 1140
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v9, v9

    goto :goto_3

    .line 1141
    :cond_1
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v9, "premium"

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1142
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1143
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto/16 :goto_7

    :cond_3
    if-eqz v6, :cond_5

    .line 1145
    const-string v6, "miniapps"

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1146
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1147
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto :goto_7

    :cond_5
    move-wide v9, v7

    :goto_3
    cmp-long v4, v9, v7

    if-eqz v4, :cond_b

    .line 1153
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v9, v10}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_6

    .line 1154
    invoke-virtual {v3, v5, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1155
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto :goto_7

    .line 1157
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v9, v10}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_7

    move v4, v5

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_4
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1158
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    goto :goto_7

    .line 1161
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/Cells/GraySectionCell;

    if-eqz v4, :cond_b

    .line 1162
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 1163
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v6}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetfirstSectionRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I

    move-result v6

    if-ne v4, v6, :cond_b

    .line 1164
    check-cast v3, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1165
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const-string v4, ""

    goto :goto_6

    :cond_a
    :goto_5
    sget v4, Lorg/telegram/messenger/R$string;->DeselectAll:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)V

    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private closeSearch()V
    .locals 3

    const/4 v0, 0x0

    .line 1351
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 1352
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 1353
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 1354
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 1356
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1357
    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupCreateActivity;->showItemsAnimated(I)V

    return-void
.end method

.method private drawBlurRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 7

    .line 1013
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;->draw(Landroid/graphics/Canvas;FFFF)V

    .line 1019
    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    const/16 v0, 0xb2

    .line 1020
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1021
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1022
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getSelectedUsers()Ljava/util/HashSet;
    .locals 4

    .line 1234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1235
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1236
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$checkDiscard$12(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    .line 1224
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed(Z)Z

    return-void
.end method

.method private synthetic lambda$checkDiscard$13(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$checkVisibleRows$11(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1168
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeAllSpans(Z)V

    .line 1169
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    .line 1170
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateEditTextHint()V

    .line 1171
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 688
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 690
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 694
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 849
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate2:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

    invoke-interface {p2, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;->needAddBot(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/Context;Landroid/view/View;I)V
    .locals 11

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetcreateCallLinkRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 770
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/ui/CallLogActivity;->createCallLink(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-nez p3, :cond_2

    .line 771
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {p3}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetinviteViaLink(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-static {p3}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetsearching(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 772
    new-instance v3, Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

    iget-object v7, p0, Lorg/telegram/ui/GroupCreateActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    iget-wide p2, p0, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v6, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/Components/PermanentLinkBottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$ChatFull;JZ)V

    iput-object v3, v6, Lorg/telegram/ui/GroupCreateActivity;->sharedLinkBottomSheet:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

    .line 773
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    move-object v6, p0

    .line 774
    instance-of p1, p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz p1, :cond_14

    .line 775
    check-cast p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 776
    iget-boolean p1, p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentPremium:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 777
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez p1, :cond_3

    .line 778
    new-instance p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p2, p2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "premium"

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 779
    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 780
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 782
    :cond_3
    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 783
    iput-object p3, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 785
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void

    .line 788
    :cond_4
    iget-boolean p1, p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;->currentMiniapps:Z

    if-eqz p1, :cond_6

    .line 789
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez p1, :cond_5

    .line 790
    new-instance p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p2, p2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "miniapps"

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 791
    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 792
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 794
    :cond_5
    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 795
    iput-object p3, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 797
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void

    .line 800
    :cond_6
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object p1

    .line 802
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_7

    .line 803
    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_4

    .line 804
    :cond_7
    instance-of v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_14

    .line 805
    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    .line 809
    :goto_4
    iget-object v7, v6, Lorg/telegram/ui/GroupCreateActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_8

    invoke-virtual {v7, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_8

    goto/16 :goto_a

    .line 812
    :cond_8
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isBlocked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 813
    invoke-direct {p0, p2, v4, v5}, Lorg/telegram/ui/GroupCreateActivity;->showPremiumBlockedToast(Landroid/view/View;J)V

    return-void

    .line 816
    :cond_9
    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz p2, :cond_a

    .line 818
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    goto/16 :goto_7

    .line 820
    :cond_a
    iget p2, v6, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    if-eqz p2, :cond_b

    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    iget v4, v6, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    if-ne p2, v4, :cond_b

    goto/16 :goto_a

    .line 823
    :cond_b
    iget p2, v6, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-nez p2, :cond_c

    iget-object p2, v6, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2}, Landroidx/collection/LongSparseArray;->size()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    if-ne p2, v4, :cond_c

    .line 824
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 825
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 826
    sget p2, Lorg/telegram/messenger/R$string;->SoftUserLimitAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 827
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 828
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_c
    if-eqz v3, :cond_10

    .line 832
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 833
    iget-boolean v3, v6, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_f

    .line 834
    iget-wide v3, v6, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_d

    iget-boolean v5, p2, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v5, :cond_d

    .line 836
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
    move-exception v0

    move-object p1, v0

    .line 838
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_d
    cmp-long v1, v3, v1

    if-eqz v1, :cond_f

    .line 843
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, v6, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 844
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 846
    sget p1, Lorg/telegram/messenger/R$string;->AddBotAdminAlert:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 847
    sget p1, Lorg/telegram/messenger/R$string;->AddBotAsAdmin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 848
    sget p1, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 854
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5

    .line 856
    :cond_e
    sget p1, Lorg/telegram/messenger/R$string;->CantAddBotAsAdmin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 857
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 859
    :goto_5
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 863
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_6

    .line 864
    :cond_10
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_11

    .line 865
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 866
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v2, v6, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 868
    :cond_11
    :goto_6
    new-instance p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v0, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 869
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 870
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 873
    iget-boolean p1, v6, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    if-nez p1, :cond_13

    iget-boolean p1, v6, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    if-eqz p1, :cond_12

    goto :goto_8

    .line 876
    :cond_12
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    goto :goto_9

    .line 874
    :cond_13
    :goto_8
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 878
    :goto_9
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_14

    .line 879
    iget-object p1, v6, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_a
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 920
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed(Z)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 1

    .line 958
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->getSelectedUsers()Ljava/util/HashSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/GroupCreateActivity;->onCallUsersSelected(Ljava/util/HashSet;Z)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 1

    .line 968
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->getSelectedUsers()Ljava/util/HashSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/GroupCreateActivity;->onCallUsersSelected(Ljava/util/HashSet;Z)V

    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 0

    .line 997
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listClip()V

    .line 998
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method private synthetic lambda$createView$8()V
    .locals 2

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$16()V
    .locals 5

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1942
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1944
    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1945
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_0

    .line 1946
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1950
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    if-eqz v0, :cond_2

    .line 1951
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentSearchField;->updateColors()V

    .line 1953
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz v0, :cond_3

    .line 1954
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentFloatingButton;->updateColors()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onDonePressed$15([Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1298
    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x64

    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/GroupCreateActivity;->onAddToGroupDone(I)V

    return-void
.end method

.method private synthetic lambda$showItemsAnimated$10(I)V
    .locals 8

    .line 1079
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1080
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1081
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1082
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ge v5, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1085
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1086
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 1087
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1088
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v5, v5

    .line 1089
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v5, 0xc8

    .line 1090
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    .line 1091
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$showPremiumBlockedToast$9()V
    .locals 2

    .line 1050
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v1, "noncontacts"

    invoke-direct {v0, v1}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private onAddToGroupDone(I)V
    .locals 5

    .line 1179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1180
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1182
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate2:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

    if-eqz v1, :cond_1

    .line 1185
    invoke-interface {v1, v0, p1}, Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;->didSelectUsers(Ljava/util/ArrayList;I)V

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 2068
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->navigationBarHeight:I

    .line 2069
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 2070
    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 2073
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listViewPadding()V

    .line 2074
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_floatingButton()V

    .line 2076
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private onDonePressed(Z)Z
    .locals 10

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_e

    .line 1249
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz p1, :cond_e

    .line 1250
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 1253
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1254
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "AddManyMembersAlertTitle"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    .line 1256
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1257
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 1258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 1262
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1263
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :cond_3
    const-string v7, "**"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1267
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v6, p0, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 1268
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    const/4 v7, 0x5

    const-string v8, ""

    if-le v6, v7, :cond_8

    .line 1269
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-nez v5, :cond_6

    move-object v6, v8

    goto :goto_3

    :cond_6
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_3
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "AddManyMembersAlertNamesText"

    invoke-static {v6, v4, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1271
    invoke-static {v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v6

    if-ltz v6, :cond_7

    .line 1273
    new-instance v7, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v6, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1275
    :cond_7
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5

    .line 1277
    :cond_8
    sget v6, Lorg/telegram/messenger/R$string;->AddMembersAlertNamesText:I

    if-nez v5, :cond_9

    move-object v7, v8

    goto :goto_4

    :cond_9
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object v7, v1, v3

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1279
    :goto_5
    new-array v1, v3, [Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 1280
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1281
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1282
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1283
    new-instance v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v6, v3, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v5, v1, v2

    .line 1284
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    aget-object v5, v1, v2

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMultiline(Z)V

    .line 1286
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 1287
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 1288
    aget-object v6, v1, v2

    sget v7, Lorg/telegram/messenger/R$string;->AddOneMemberForwardMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v6, v5, v8, v3, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 1290
    :cond_a
    aget-object v5, v1, v2

    sget v6, Lorg/telegram/messenger/R$string;->AddMembersForwardMessages:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v3, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 1292
    :goto_6
    aget-object v5, v1, v2

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41800000    # 16.0f

    if-eqz v6, :cond_b

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_7

    :cond_b
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_7
    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_c

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_8

    :cond_c
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    :goto_8
    invoke-virtual {v5, v6, v2, v7, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1293
    aget-object v5, v1, v2

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    aget-object v2, v1, v2

    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda15;

    invoke-direct {v5, v1}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda15;-><init>([Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1298
    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/GroupCreateActivity;[Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1299
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1300
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_e

    .line 1302
    :cond_e
    iget p1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne p1, v1, :cond_11

    .line 1303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1304
    :goto_9
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_10

    .line 1305
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1307
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1310
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    invoke-virtual {v1, v4, v5, p1, v0}, Lorg/telegram/messenger/MessagesController;->addUsersToChannel(JLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1311
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1312
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1313
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1314
    const-string v0, "just_created_chat"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1315
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_e

    .line 1317
    :cond_11
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-nez p1, :cond_12

    return v2

    .line 1320
    :cond_12
    iget-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz p1, :cond_13

    .line 1321
    invoke-direct {p0, v2}, Lorg/telegram/ui/GroupCreateActivity;->onAddToGroupDone(I)V

    goto/16 :goto_e

    .line 1323
    :cond_13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 1324
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1325
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1327
    :cond_14
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v0, :cond_15

    goto :goto_c

    .line 1333
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [J

    :goto_b
    if-ge v2, v1, :cond_16

    .line 1337
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1339
    :cond_16
    const-string p1, "result"

    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1340
    const-string p1, "chatType"

    iget v1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    const-string p1, "forImport"

    iget-boolean v1, p0, Lorg/telegram/ui/GroupCreateActivity;->forImport:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1342
    new-instance p1, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_e

    .line 1328
    :cond_17
    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    if-eqz v0, :cond_1a

    .line 1329
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_d

    :cond_18
    move v1, v2

    :goto_d
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v4, :cond_19

    move v2, v3

    :cond_19
    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;->didSelectUsers(ZZLjava/util/ArrayList;)V

    .line 1331
    :cond_1a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_e
    return v3
.end method

.method private showItemsAnimated(I)V
    .locals 2

    .line 1075
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/GroupCreateActivity;I)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->doOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showPremiumBlockedToast(Landroid/view/View;J)V
    .locals 3

    .line 1040
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 1041
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    .line 1044
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1043
    :cond_0
    const-string p1, ""

    .line 1047
    :goto_0
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1048
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_1

    .line 1050
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->UserBlockedNonPremium:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p3

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->UserBlockedNonPremiumButton:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {p2, v1, p1, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1052
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private updateButtonsVisibility()V
    .locals 3

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 1034
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1035
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->animatorCallButtonsVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v2, v0, v1}, Lme/vkryl/android/animator/BoolAnimator;->setValue(ZZ)V

    return-void
.end method

.method private updateEditTextHint()V
    .locals 3

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    iget v1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1060
    sget v1, Lorg/telegram/messenger/R$string;->AddMutual:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1062
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetnoContactsStubRow(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1064
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1066
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    if-eqz v0, :cond_4

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->NewCallSearch:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1069
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->SendMessageTo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1065
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->SearchForPeopleAndGroups:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1063
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->SearchForPeople:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHint()V
    .locals 8

    .line 1361
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-nez v0, :cond_2

    .line 1362
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    const-string v4, "Members"

    if-ne v0, v1, :cond_0

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->MembersCountZero:I

    iget v6, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    iget-boolean v7, p0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    add-int/2addr v6, v7

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1368
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const-string v4, "MembersCountSelected"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1369
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v6, v7, v2

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1373
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz v0, :cond_4

    .line 1374
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 1376
    iput-boolean v3, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    return-void

    .line 1377
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1378
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 1379
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    const/4 v0, 0x1

    .line 1192
    invoke-direct {p0, v0}, Lorg/telegram/ui/GroupCreateActivity;->checkDiscard(Z)Z

    move-result v0

    return v0
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 1027
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    .line 1028
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 539
    iput-boolean v2, v0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 540
    iput-boolean v2, v0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 541
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 542
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v3, 0x0

    .line 543
    iput-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 544
    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 545
    iput-boolean v4, v0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    goto :goto_0

    .line 547
    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    .line 550
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 551
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 552
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 553
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->customTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 554
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->customTitle:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 555
    :cond_1
    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v3, v5, :cond_2

    .line 556
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ChannelAddSubscribers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 557
    :cond_2
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    if-eqz v6, :cond_3

    .line 558
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->NewCall:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 559
    :cond_3
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz v6, :cond_5

    .line 560
    iget-wide v6, v0, Lorg/telegram/ui/GroupCreateActivity;->channelId:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    .line 561
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->ChannelAddSubscribers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 563
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->GroupAddMembers:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 565
    :cond_5
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-eqz v6, :cond_8

    .line 566
    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity;->chatAddType:I

    if-ne v3, v5, :cond_6

    .line 567
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->FilterAlwaysShow:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-ne v3, v4, :cond_7

    .line 569
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->AlwaysAllow:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 571
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->AlwaysShareWithTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 573
    :cond_8
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v6, :cond_b

    .line 574
    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity;->chatAddType:I

    if-ne v3, v5, :cond_9

    .line 575
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->FilterNeverShow:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    if-ne v3, v4, :cond_a

    .line 577
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->NeverAllow:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 579
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->NeverShareWithTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 582
    :cond_b
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->NewGroup:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_c
    sget v3, Lorg/telegram/messenger/R$string;->NewBroadcastList:I

    goto :goto_1

    :goto_2
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateActivity$1;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 598
    new-instance v3, Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v6}, Lorg/telegram/ui/Components/FragmentSearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    .line 600
    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$2;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 656
    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/high16 v6, 0x20000

    .line 657
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 659
    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$3;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$3;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    .line 683
    invoke-virtual {v6, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 685
    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    .line 686
    iget-object v7, v0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    const/high16 v8, -0x40000000    # -2.0f

    const/4 v9, -0x1

    invoke-static {v9, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    invoke-direct {v0}, Lorg/telegram/ui/GroupCreateActivity;->updateEditTextHint()V

    .line 694
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v6, v6, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 695
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v6, v6, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/GroupCreateActivity$4;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 714
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    iget-object v6, v6, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/GroupCreateActivity$5;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 743
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->toSelectIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_d

    .line 744
    iget-boolean v7, v0, Lorg/telegram/ui/GroupCreateActivity;->toSelectPremium:Z

    iget-boolean v8, v0, Lorg/telegram/ui/GroupCreateActivity;->toSelectMiniApps:Z

    invoke-virtual {v0, v6, v7, v8}, Lorg/telegram/ui/GroupCreateActivity;->select(Ljava/util/ArrayList;ZZ)V

    .line 747
    :cond_d
    new-instance v6, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    .line 748
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 749
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 751
    new-instance v7, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v7, v1, v6, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v7, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 752
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 753
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v6, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 754
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v7, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 758
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, v1, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 759
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 760
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 761
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 762
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 763
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v0, Lorg/telegram/ui/GroupCreateActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 764
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 765
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 766
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_e

    move v5, v4

    :cond_e
    invoke-virtual {v6, v5}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 767
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v6, v0, Lorg/telegram/ui/GroupCreateActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    neg-int v7, v6

    int-to-float v14, v7

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/16 v12, 0x77

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 883
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateActivity$6;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 907
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 909
    new-instance v5, Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v1, v6}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 910
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-nez v6, :cond_10

    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v6, :cond_10

    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->addToGroup:Z

    if-eqz v6, :cond_f

    goto :goto_4

    .line 913
    :cond_f
    new-instance v5, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v5, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    const/16 v6, 0xb4

    .line 914
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setArrowRotation(I)V

    .line 915
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v6, v6, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 911
    :cond_10
    :goto_4
    iget-object v5, v5, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 917
    :goto_5
    iget-boolean v5, v0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    if-nez v5, :cond_11

    .line 918
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    invoke-virtual {v5, v6, v2}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setButtonVisible(ZZ)V

    .line 922
    iget-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v6, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    iget-boolean v5, v0, Lorg/telegram/ui/GroupCreateActivity;->isCall:Z

    if-eqz v5, :cond_12

    .line 925
    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$7;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$7;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    .line 941
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 942
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 943
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v11, v7, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/16 v12, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 947
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 948
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    const/4 v7, -0x2

    const/16 v8, 0x57

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v1, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 951
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 952
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 953
    const-string/jumbo v11, "x  "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 954
    new-instance v12, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->profile_phone:I

    invoke-direct {v12, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v13, 0x21

    invoke-virtual {v10, v12, v2, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 955
    sget v12, Lorg/telegram/messenger/R$string;->GroupCallCreateVoice:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 956
    invoke-virtual {v6, v10, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x30

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x77

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 957
    invoke-static/range {v14 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    new-instance v10, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    new-instance v6, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v1, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 961
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 962
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 963
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 964
    new-instance v11, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->profile_video:I

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v10, v11, v2, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 965
    sget v4, Lorg/telegram/messenger/R$string;->GroupCallCreateVideo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 966
    invoke-virtual {v6, v10, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x77

    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 967
    invoke-static/range {v11 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    iget-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->buttonsContainer:Landroid/widget/FrameLayout;

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    invoke-direct {v0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_bottomButtons()V

    .line 974
    :cond_12
    invoke-direct {v0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 976
    new-instance v4, Lorg/telegram/ui/GroupCreateActivity$8;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/GroupCreateActivity$8;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->actionBarBackgroundView:Landroid/view/View;

    const/16 v5, 0x30

    .line 990
    invoke-static {v9, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 992
    iget-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->searchField:Lorg/telegram/ui/Components/FragmentSearchField;

    const/high16 v15, 0x41300000    # 11.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x42200000    # 40.0f

    const/16 v12, 0x30

    const/high16 v13, 0x41300000    # 11.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    iget-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 995
    new-instance v4, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/EmojiView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-direct {v4, v6, v3, v7}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 996
    iget-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 1001
    new-instance v4, Lorg/telegram/ui/HeaderShadowView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-direct {v4, v1, v6}, Lorg/telegram/ui/HeaderShadowView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    iput-object v4, v0, Lorg/telegram/ui/GroupCreateActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    .line 1002
    invoke-virtual {v4, v2, v2}, Lorg/telegram/ui/HeaderShadowView;->setShadowVisible(ZZ)V

    .line 1003
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    const/4 v2, 0x5

    invoke-static {v9, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    sget-object v1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_13

    .line 1006
    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getRootAnimatedInsetsListener()Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider;->subscribeToWindowInsetsAnimation(Lorg/telegram/ui/Components/inset/WindowAnimatedInsetsProvider$Listener;)V

    .line 1008
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 1009
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1099
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_0

    .line 1100
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    if-eqz p1, :cond_4

    .line 1101
    invoke-virtual {p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    return-void

    .line 1103
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_3

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1105
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1106
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 1107
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    :cond_1
    :goto_0
    if-ge p1, p3, :cond_4

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1110
    instance-of v1, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v1, :cond_2

    .line 1111
    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1116
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, p2, :cond_4

    .line 1117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_4
    return-void
.end method

.method public drawEdgeNavigationBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnimatedInsetsTargetView()Landroid/view/View;
    .locals 1

    .line 2057
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34

    move-object/from16 v0, p0

    .line 1938
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1940
    new-instance v8, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0}, Lorg/telegram/ui/GroupCreateActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 1958
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1964
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v12, v17

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1976
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v24, 0x0

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const/16 v23, 0x0

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v4, v17

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    const-string v6, "drawable"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionShadow:I

    const/16 v20, 0x0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v26, v31

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    new-instance v23, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v6, v4, v17

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v20, v4, v5

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    const-string/jumbo v5, "statusTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v20, v4, v7

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v26, v16

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 1990
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    move v4, v3

    const/4 v3, 0x0

    move v5, v4

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v10, v6

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v25, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v4, v3, v17

    const/16 v32, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1999
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v17

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v17

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2001
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const/16 v23, 0x0

    move-object/from16 v19, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2004
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v10, v2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    iget-object v2, v0, Lorg/telegram/ui/GroupCreateActivity;->sharedLinkBottomSheet:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

    if-eqz v2, :cond_0

    .line 2007
    invoke-virtual {v2}, Lorg/telegram/ui/Components/PermanentLinkBottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimatedInsetsChanged(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 2062
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->imeInsetAnimatedHeight:I

    .line 2063
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_floatingButton()V

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
    .locals 1

    .line 1197
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCreateActivity;->checkDiscard(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1200
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method protected onCallUsersSelected(Ljava/util/HashSet;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 522
    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 523
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 526
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 527
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 532
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 533
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    return-void
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 2023
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 2025
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listViewPadding()V

    .line 2026
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_searchFieldY()V

    .line 2027
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listClip()V

    .line 2028
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_headerShadowY()V

    .line 2029
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBarBackgroundView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2031
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 2032
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    invoke-virtual {p3}, Lorg/telegram/ui/HeaderShadowView;->isShadowVisible()Z

    move-result p3

    if-nez p3, :cond_1

    .line 2033
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, 0x0

    sub-int/2addr p1, p2

    invoke-virtual {p3, p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 2036
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_bottomButtons()V

    .line 2037
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkUi_listClip()V

    :cond_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 504
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 505
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 506
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 508
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->loadGlobalTTl()V

    .line 509
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 514
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 515
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public select(Ljava/util/ArrayList;ZZ)V
    .locals 5

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->initialIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->initialIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 195
    iput-boolean p2, p0, Lorg/telegram/ui/GroupCreateActivity;->initialPremium:Z

    .line 196
    iput-boolean p3, p0, Lorg/telegram/ui/GroupCreateActivity;->initialMiniApps:Z

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    if-nez v0, :cond_0

    .line 198
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->toSelectIds:Ljava/util/ArrayList;

    .line 199
    iput-boolean p2, p0, Lorg/telegram/ui/GroupCreateActivity;->toSelectPremium:Z

    .line 200
    iput-boolean p3, p0, Lorg/telegram/ui/GroupCreateActivity;->toSelectMiniApps:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 203
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v2, :cond_1

    .line 204
    new-instance p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "premium"

    invoke-direct {p2, v0, v2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz p2, :cond_2

    .line 208
    invoke-virtual {v0, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 209
    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedPremium:Lorg/telegram/ui/Components/GroupCreateSpan;

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 211
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez p2, :cond_3

    .line 212
    new-instance p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "miniApps"

    invoke-direct {p2, p3, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 213
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 214
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 215
    iget-object p2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz p2, :cond_4

    .line 216
    iget-object p3, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 217
    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedMiniApps:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 219
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_7

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_5

    .line 222
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    goto :goto_3

    .line 224
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_6

    goto :goto_2

    .line 227
    :cond_6
    new-instance v1, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 229
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 231
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->endAnimation()V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    return-void
.end method

.method public setDelegate2(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate2:Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;

    return-void
.end method

.method public setIgnoreUsers(Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreUsers:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method

.method public setShowDiscardConfirm(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->showDiscardConfirm:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->customTitle:Ljava/lang/String;

    return-void
.end method
