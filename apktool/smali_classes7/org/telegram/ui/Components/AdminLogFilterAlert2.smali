.class public Lorg/telegram/ui/Components/AdminLogFilterAlert2;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;
    }
.end annotation


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private currentAdmins:Ljava/util/ArrayList;

.field private currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field private delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

.field private isMegagroup:Z

.field private sectionMembersExpanded:Z

.field private sectionMessagesExpanded:Z

.field private sectionSettingsExpanded:Z

.field private selectedAdmins:Landroidx/collection/LongSparseArray;


# direct methods
.method public static synthetic $r8$lambda$Lbg2Vnut8yTN1NLqjM7oAGM0z_4(Lorg/telegram/ui/Components/AdminLogFilterAlert2;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQF1lJepp3RgYN4PvegzwvvIAf0(Lorg/telegram/ui/Components/AdminLogFilterAlert2;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$getGroupClick$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZziXtFbX9DBALWSLAICKlbRqTk(Lorg/telegram/ui/Components/AdminLogFilterAlert2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;Z)V
    .locals 9

    .line 42
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 32
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;-><init>()V

    iput-object p1, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    const/4 p1, 0x0

    .line 166
    iput-boolean p1, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    .line 167
    iput-boolean p1, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    .line 168
    iput-boolean p1, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    const v1, 0x3eb33333    # 0.35f

    .line 43
    iput v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 44
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setSlidingActionBar()V

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowHandle(Z)V

    if-eqz p2, :cond_0

    .line 49
    iget-object v2, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    .line 50
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    .line 51
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    .line 52
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    .line 53
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    .line 54
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    .line 55
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    .line 56
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    .line 57
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    .line 58
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    .line 59
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    .line 60
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    .line 61
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    .line 62
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    .line 63
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    .line 64
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    .line 65
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    iput-boolean p2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object p2, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    .line 68
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    .line 69
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    .line 70
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    .line 71
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    .line 72
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    .line 73
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    .line 74
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    .line 75
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    .line 76
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    .line 77
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    .line 78
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    .line 79
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    .line 80
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    .line 81
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    .line 82
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    .line 83
    iput-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    :goto_0
    if-eqz p3, :cond_1

    .line 86
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    .line 88
    :cond_1
    iput-boolean p4, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    .line 89
    iget-object p2, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 91
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 92
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 93
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 94
    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p3, 0x15e

    .line 95
    invoke-virtual {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 96
    iget-object p3, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 97
    iget-object p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 101
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    invoke-direct {p2, p3, p4, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p2, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    .line 102
    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 103
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 104
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p4, v1, v2, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object p4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    new-instance p3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, p4, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 107
    sget p4, Lorg/telegram/messenger/R$string;->EventLogFilterApply:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 108
    new-instance p4, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p4, 0x30

    const/16 v1, 0x57

    const/4 v2, -0x1

    .line 134
    invoke-static {v2, p4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x57

    move v6, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object p2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 p4, 0x42880000    # 68.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, p3, p1, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private getGroupClick(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 197
    new-instance v0, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;I)V

    return-object v0
.end method

.method private getGroupCount(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 171
    const-string v2, "/3"

    if-eq p1, v1, :cond_0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    .line 189
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    add-int/2addr v1, v3

    .line 190
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v4, :cond_2

    :cond_1
    move v0, v1

    .line 182
    :cond_2
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    add-int/2addr v0, v1

    .line 183
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v1

    .line 174
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v4, :cond_7

    :cond_6
    move v4, v1

    goto :goto_2

    :cond_7
    move v4, v0

    :goto_2
    add-int/2addr v3, v4

    .line 175
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v4, :cond_8

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v4, :cond_9

    :cond_8
    move v0, v1

    :cond_9
    add-int/2addr v3, v0

    .line 176
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    add-int/2addr v3, v0

    .line 177
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_3

    :cond_a
    const/4 v0, 0x3

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getGroupClick$2(ILandroid/view/View;)V
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    goto :goto_0

    .line 204
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    goto :goto_0

    .line 201
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    .line 210
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 0

    .line 98
    iget-object p4, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p4, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;F)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    if-eqz p1, :cond_0

    .line 126
    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 128
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 129
    iput-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    .line 131
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;->didSelectRights(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 147
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AdminLogFilterAlert2;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 6

    .line 216
    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-nez p2, :cond_0

    goto/16 :goto_18

    .line 217
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByActions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionMembers:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionSubscribers:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    const/4 v4, 0x1

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-nez v3, :cond_4

    :cond_2
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    if-nez v3, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    :goto_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr v1, v4

    .line 223
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    if-eqz p2, :cond_e

    .line 225
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionAdmin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    if-nez v3, :cond_6

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v4

    :goto_4
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_9

    .line 227
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewRestrictions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    if-nez v3, :cond_8

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    if-nez v3, :cond_8

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    if-nez v3, :cond_8

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v0

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v4

    :goto_6
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_9
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewMembers:I

    goto :goto_7

    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterNewSubscribers:I

    :goto_7
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    if-nez v3, :cond_c

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    move v1, v0

    goto :goto_9

    :cond_c
    :goto_8
    move v1, v4

    :goto_9
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_d

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterLeavingMembers2:I

    goto :goto_a

    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterLeavingSubscribers2:I

    :goto_a
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_e

    .line 232
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterMembersRank:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_e
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_f

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionGroupSettings:I

    goto :goto_b

    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionChannelSettings:I

    :goto_b
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v3, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    if-nez v3, :cond_11

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    move v1, v0

    goto :goto_d

    :cond_11
    :goto_c
    move v1, v4

    :goto_d
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr v1, v4

    .line 239
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    if-eqz p2, :cond_15

    .line 241
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p2, :cond_12

    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterGroupInfo:I

    goto :goto_e

    :cond_12
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterChannelInfo:I

    :goto_e
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x9

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    if-nez v3, :cond_14

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    if-eqz v1, :cond_13

    goto :goto_f

    :cond_13
    move v1, v0

    goto :goto_10

    :cond_14
    :goto_f
    move v1, v4

    :goto_10
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterInvites:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xa

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterCalls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xb

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterSectionMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupCount(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-static {v3, p2, v1}, Lorg/telegram/ui/Components/UItem;->asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    if-nez v3, :cond_17

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    if-nez v3, :cond_17

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    if-eqz v1, :cond_16

    goto :goto_11

    :cond_16
    move v1, v0

    goto :goto_12

    :cond_17
    :goto_11
    move v1, v4

    :goto_12
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr v1, v4

    .line 247
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->getGroupClick(I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 245
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    if-eqz p2, :cond_18

    .line 249
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterDeletedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xd

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterEditedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xe

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterPinnedMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xf

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    const/4 p2, 0x0

    .line 253
    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByAdmins:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget p2, Lorg/telegram/messenger/R$string;->EventLogFilterByAdminsAll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x10

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_19

    move v1, v0

    goto :goto_13

    :cond_19
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    :goto_13
    iget-object v2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-nez v2, :cond_1a

    move v2, v0

    goto :goto_14

    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_14
    if-lt v1, v2, :cond_1b

    move v1, v4

    goto :goto_15

    :cond_1b
    move v1, v0

    :goto_15
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p2, :cond_1d

    move p2, v0

    .line 257
    :goto_16
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1d

    .line 258
    iget-object v1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 259
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    .line 260
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    rsub-int/lit8 v5, p2, -0x1

    .line 261
    invoke-static {v5, v3}, Lorg/telegram/ui/Components/UItem;->asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/UItem;->pad()Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz v5, :cond_1c

    invoke-virtual {v5, v1, v2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v4

    goto :goto_17

    :cond_1c
    move v1, v0

    :goto_17
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_1d
    :goto_18
    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 142
    sget v0, Lorg/telegram/messenger/R$string;->EventLog:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;F)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 268
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v1, 0x29

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v4, 0x23

    if-ne v0, v4, :cond_a

    :cond_1
    if-ne v0, v1, :cond_3

    .line 270
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42700000    # 60.0f

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_3

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_3
    move p3, v2

    .line 271
    :goto_1
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-nez p3, :cond_4

    .line 273
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 275
    :cond_4
    iget v1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 334
    :pswitch_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p3, :cond_5

    .line 335
    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    .line 337
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->clear()V

    .line 338
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p3, :cond_9

    .line 339
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_9

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 340
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 341
    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 342
    iget-object v7, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 331
    :pswitch_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    goto/16 :goto_3

    .line 328
    :pswitch_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    goto/16 :goto_3

    .line 325
    :pswitch_3
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    goto/16 :goto_3

    :pswitch_4
    if-eqz p3, :cond_6

    .line 319
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMessagesExpanded:Z

    goto/16 :goto_3

    .line 321
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->pinned:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->delete:Z

    goto/16 :goto_3

    .line 315
    :pswitch_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    goto/16 :goto_3

    .line 312
    :pswitch_6
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    goto/16 :goto_3

    .line 309
    :pswitch_7
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    goto/16 :goto_3

    :pswitch_8
    if-eqz p3, :cond_7

    .line 303
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionSettingsExpanded:Z

    goto/16 :goto_3

    .line 305
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->group_call:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invites:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->settings:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->info:Z

    goto :goto_3

    .line 299
    :pswitch_9
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    goto :goto_3

    .line 296
    :pswitch_a
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    goto :goto_3

    .line 293
    :pswitch_b
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    goto :goto_3

    .line 290
    :pswitch_c
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    goto :goto_3

    .line 287
    :pswitch_d
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    goto :goto_3

    :pswitch_e
    if-eqz p3, :cond_8

    .line 278
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    xor-int/2addr p3, v3

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->sectionMembersExpanded:Z

    goto :goto_3

    .line 280
    :cond_8
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v1

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->edit_rank:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->leave:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->join:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->invite:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->demote:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->promote:Z

    .line 281
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->isMegagroup:Z

    if-eqz p3, :cond_9

    .line 282
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->unkick:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->ban:Z

    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->kick:Z

    .line 347
    :cond_9
    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 349
    :cond_a
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-gez p1, :cond_e

    .line 350
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    neg-int p1, p1

    sub-int/2addr p1, v3

    if-ltz p1, :cond_e

    .line 352
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p1, p3, :cond_b

    goto :goto_5

    .line 353
    :cond_b
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 354
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 355
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 356
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p3, :cond_c

    .line 357
    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    .line 359
    :cond_c
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, v0, v1}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 361
    invoke-virtual {p2, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_4

    .line 363
    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 364
    invoke-virtual {p2, v3, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 366
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSmoothContainerViewLayout(F)V
    .locals 1

    .line 400
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onSmoothContainerViewLayout(F)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->delegate:Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;

    return-void
.end method

.method public setCurrentAdmins(Ljava/util/ArrayList;)V
    .locals 6

    .line 371
    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_0

    .line 373
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->currentAdmins:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 375
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    .line 376
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 377
    iget-object v5, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 381
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    return-void
.end method
