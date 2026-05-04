.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$BackdropItem;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem;,
        Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;
    }
.end annotation


# instance fields
.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private clearFiltersButton:Landroid/widget/TextView;

.field private clearFiltersContainer:Landroid/widget/FrameLayout;

.field private clearFiltersShown:Z

.field private closeParentSheet:Ljava/lang/Runnable;

.field private final dialogId:J

.field private emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

.field private emptyViewVisible:Z

.field private filterScrollView:Landroid/widget/HorizontalScrollView;

.field private filtersContainer:Landroid/widget/LinearLayout;

.field private filtersDivider:Landroid/view/View;

.field private filtersShown:Z

.field private fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private final gift_id:J

.field private final gift_name:Ljava/lang/String;

.field private final list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

.field private sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;


# direct methods
.method public static synthetic $r8$lambda$2QN-nC_OV2wpmy-gsmjKt3v9CsQ(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$3eKtENRuUq9YR5XPHutyurw6Qv8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7DCcK85I6Hntyab4dPXd-IgkBfM(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$22(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7aZWW2UVpejqgLFG347I07rV2YQ(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9GtQOFDBIjcgNhbR7Gw3R5FuLTo(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateList(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRkLIqnDrdQLhKe8vB-kxohoS_Q(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C09_c7YVxiKRrszzKEIfCgDXw9E(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$D9-3_wbZHqkNCsXvE1ZB-9VZJVY(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 415
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$GvHyiNBw6wtdNlRyhMxJ01JQN3c(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$9([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$II7lIfSvcgo3c-T8jOVOQ4gtBWA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$JxYHKVfgefC0p_n3YZMnUqvYJJA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$12(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNq6mdBwE2aaaLdO01YV1HXBCm4(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$NQlPkUlEljSkrZKEfp50VUI5zu8(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$21([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCV5rghSbYIts99h52BK83EfslM(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGAa-QUph54DckH7hyFpNTPVxZM(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$0(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUEHmKnhYYysuI9AnHIU5e4m__s(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$fTkxs7Kms69GHH6zj6Q_kpBs9e0(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$24(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHQOsPM4gSSrxmymtyNQocrDqN4(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$14(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gkH7WOSvZM3kddY6jq6b4vw8h0o(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJ0WQWOrcOGUFg3NoK16utP0fkY(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 301
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$kBxCrDDai-jfjFOrWPZxCWeHwpY(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDon2d2UT_Espi6txPBus908cxg(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$20(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kHnGPUa-d0k57fW94xErh_hyhsw(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$onItemClick$25(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpB95Wkl3iUfZjOTvXM5lXKkzfk(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$mFLjA-X5swCH14CSvdaKUwo78Qw(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$15([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTem4oAGyoFLTjFYO6SIMKzqEaA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$8(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nemQeooMUZ_ruvNbR38u-9UEBAk(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfLnq2qlp91P2Up9MkfpkkUHNxU(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$op3RCSVKqs3YRy3XWqqI4kb-ZoA(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p3F86Dx7sSj0D3Tr8JUplYoVlQY(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->lambda$createView$17()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterScrollView(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfiltersDivider(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfiltersShown(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misLoadingVisible(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(JLjava/lang/String;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 636
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    .line 675
    iput-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    .line 100
    iput-wide p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->dialogId:J

    .line 101
    iput-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    .line 102
    iput-wide p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_id:J

    .line 103
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 104
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-direct {p1, p2, p4, p5, p3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;-><init>(IJLorg/telegram/messenger/Utilities$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    .line 105
    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    .line 726
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 727
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-boolean v0, p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p2, p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->endReached:Z

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, -0x1

    const/16 v0, 0x22

    .line 730
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x2

    .line 731
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x3

    .line 732
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, -0x4

    .line 735
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x5

    .line 736
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x6

    .line 737
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x7

    .line 739
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x8

    .line 740
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0x9

    .line 741
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xa

    .line 743
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xb

    .line 744
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xc

    .line 745
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xd

    .line 747
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xe

    .line 748
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p2, -0xf

    .line 749
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-boolean p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateEmptyView(Z)V

    return-void
.end method

.method private isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 777
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 778
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/view/View;)V
    .locals 2

    .line 182
    iget-wide p1, p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    .line 329
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 330
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 331
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 333
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 334
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :cond_0
    :goto_0
    if-ge p6, p5, :cond_3

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p6, p6, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 335
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v0, p2

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 345
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 346
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$11()V
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/content/Context;Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 293
    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v1, v0, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 298
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    .line 300
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 306
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 307
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$5;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1, v10, v11}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 358
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 359
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 361
    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x18

    const/high16 v13, 0x41c00000    # 24.0f

    const/16 v14, 0x13

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v16, 0x0

    .line 363
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v3, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 365
    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v4, 0x8c001

    .line 366
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 367
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 368
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 369
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v4, 0x41980000    # 19.0f

    .line 370
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 371
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 372
    sget v4, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 373
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v4, 0x0

    .line 374
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v17, 0x41000000    # 8.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, 0x422c0000    # 43.0f

    .line 375
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$6;

    invoke-direct {v4, v1, v10, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    const/16 v4, 0x2c

    .line 388
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 389
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 391
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 392
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v9, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 398
    :cond_3
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 399
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$createView$14(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)I
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 426
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$15([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 429
    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 432
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    iget v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 433
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 434
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributesCounter:Ljava/util/HashMap;

    iget v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$BackdropItem$Factory;->asBackdrop(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 438
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 439
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersBackdropEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$16(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    .line 442
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 443
    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    .line 444
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 446
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 447
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x0

    :cond_0
    :goto_0
    if-ge p5, p4, :cond_3

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    add-int/lit8 p5, p5, 0x1

    check-cast p6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 448
    iget p6, p6, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->backdrop_id:I

    if-eq p6, p2, :cond_0

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v0, p6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 456
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 458
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 459
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$17()V
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/content/Context;Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 406
    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v1, v0, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 411
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    .line 413
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 419
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 420
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 421
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 428
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$7;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1, v10, v11}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$7;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    .line 469
    iget-object v2, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 471
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 472
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 473
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 474
    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x18

    const/high16 v13, 0x41c00000    # 24.0f

    const/16 v14, 0x13

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v16, 0x0

    .line 476
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    new-instance v3, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 478
    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v4, 0x8c001

    .line 479
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 480
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 481
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 482
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v4, 0x41980000    # 19.0f

    .line 483
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 484
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 485
    sget v4, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 486
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v4, 0x0

    .line 487
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v17, 0x41000000    # 8.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, 0x422c0000    # 43.0f

    .line 488
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$8;

    invoke-direct {v4, v1, v10, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 500
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    const/16 v4, 0x2c

    .line 501
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 502
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 504
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 505
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v9, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 511
    :cond_3
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 512
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    .line 255
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$20(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)I
    .locals 3

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 539
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$21([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 542
    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 544
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 545
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 547
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributesCounter:Ljava/util/HashMap;

    iget-object v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 548
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$PatternItem$Factory;->asPattern(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 551
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 552
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSymbolEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/UItem;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3

    .line 555
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 556
    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 557
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 559
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 560
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p6, 0x0

    :cond_0
    :goto_0
    if-ge p6, p5, :cond_3

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p6, p6, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 561
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v0, p2

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    :cond_1
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p4, p4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 571
    :cond_3
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    .line 572
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$23()V
    .locals 1

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->reload()V

    return-void
.end method

.method private synthetic lambda$createView$24(Landroid/content/Context;Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 519
    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v1, v0, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 522
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v2, -0x3f000000    # -8.0f

    .line 524
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->needsFocus()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    .line 526
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 532
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    .line 533
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 534
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 541
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$9;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1, v10, v11}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1, v9}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$9;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    .line 582
    iget-object v2, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 584
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 585
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 586
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 587
    sget v4, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x18

    const/high16 v13, 0x41c00000    # 24.0f

    const/16 v14, 0x13

    const/high16 v15, 0x41200000    # 10.0f

    const/16 v16, 0x0

    .line 589
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    new-instance v3, Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 591
    invoke-virtual {v3, v8, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    const v4, 0x8c001

    .line 592
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 593
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 594
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 595
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v4, 0x41980000    # 19.0f

    .line 596
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 597
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 598
    sget v4, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersSearch:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 599
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v4, 0x0

    .line 600
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v17, 0x41000000    # 8.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, 0x422c0000    # 43.0f

    .line 601
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$10;

    invoke-direct {v4, v1, v10, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$10;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;[Ljava/lang/String;Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 613
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    const/4 v3, -0x1

    const/16 v4, 0x2c

    .line 614
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 615
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 617
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v2, v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 618
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->SelectAll:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v9, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 624
    :cond_3
    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    .line 625
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$5()V
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 3

    .line 272
    iget-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-nez p1, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_value:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 274
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_date:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 277
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_sort_number:I

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    iget v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->buttonStringResId:I

    .line 280
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 v0, -0x3f000000    # -8.0f

    .line 285
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)I
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 313
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private synthetic lambda$createView$9([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 10

    const/4 p4, 0x0

    .line 316
    aget-object p1, p1, p4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->translitSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    .line 318
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p4

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 319
    iget-object v5, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v5, v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    iget-object v6, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 321
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v7, v7, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributesCounter:Ljava/util/HashMap;

    iget-object v8, v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    move v7, p4

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-static {v4, v7, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ModelItem$Factory;->asModel(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;ILjava/lang/String;)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    move v6, p4

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 325
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 326
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersModelEmpty:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$EmptyView$Factory;->asEmptyView(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$onItemClick$25(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 8

    .line 792
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 794
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->updateList(Z)V

    .line 795
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 796
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    .line 797
    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->BoughtResoldGiftText:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v6, p1

    const/16 p1, 0x2c

    invoke-static {v6, v7, p1}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 798
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 799
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    .line 802
    invoke-virtual {p1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object p2

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, v3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 803
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 806
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    return-void

    .line 808
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 809
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 810
    const-string v2, "user_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 812
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 814
    :goto_1
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$13;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/os/Bundle;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSheet()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 833
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 834
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 836
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 839
    :cond_3
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 842
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->closeParentSheet:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 843
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 786
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz p2, :cond_0

    .line 787
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 789
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 790
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0, p2, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    .line 791
    new-instance p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnBoughtGift(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Stars/StarGiftSheet;

    .line 847
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private setClearFiltersShown(ZZ)V
    .locals 2

    .line 677
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 678
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersShown:Z

    const/high16 v0, 0x42440000    # 49.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 680
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 682
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1a4

    .line 683
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 684
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 686
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v1, p1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private setFiltersShown(ZZ)V
    .locals 7

    .line 638
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 639
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersShown:Z

    const/high16 v0, 0x421c0000    # 39.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 641
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    move v2, v4

    goto :goto_0

    .line 643
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    .line 644
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 645
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v5, 0x1a4

    .line 646
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$11;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V

    .line 647
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 655
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    move v2, v4

    goto :goto_2

    .line 657
    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 658
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 659
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 660
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 661
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    goto :goto_3

    .line 662
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float v4, p1

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 663
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 664
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 665
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 667
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_5
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 669
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v4

    :goto_6
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 670
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    if-eqz p1, :cond_9

    move v1, v4

    goto :goto_7

    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_7
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 671
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float v4, p1

    :goto_8
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 4

    .line 756
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 757
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 760
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v2, 0x3f733333    # 0.95f

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 761
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 762
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 763
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x140

    .line 764
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$12;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Z)V

    .line 765
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 773
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateList(Z)V
    .locals 4

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 692
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setFiltersShown(ZZ)V

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-eqz p1, :cond_1

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 700
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_3

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    if-gtz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ResaleNoCount:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result v0

    const-string v3, "Gift2ResaleCount"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 704
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_4

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    .line 707
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_7

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->modelAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "Gift2ResaleFilterModels"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterModel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 711
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_a

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->backdropAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "Gift2ResaleFilterBackdrops"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    :goto_3
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterBackdrop:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 715
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-eqz p1, :cond_d

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    if-lez p1, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->patternAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_b

    goto :goto_5

    :cond_b
    const-string v3, "Gift2ResaleFilterSymbols"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    sget p1, Lorg/telegram/messenger/R$string;->Gift2ResaleFilterSymbol:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 719
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    .line 722
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-boolean v0, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->loading:Z

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getTotalCount()I

    move-result p1

    if-lez p1, :cond_11

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedModelAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedBackdropAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->notSelectedPatternAttributes:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setClearFiltersShown(ZZ)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 133
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 135
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 136
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 138
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 146
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->gift_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 148
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 149
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 150
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 151
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 152
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 154
    new-instance v10, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$2;

    invoke-direct {v10, v1, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    .line 172
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 173
    invoke-static {v8, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 174
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v3, 0x3d23d70a    # 0.04f

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    .line 172
    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v11

    .line 176
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iput-object v10, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 179
    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;

    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2, v3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 180
    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 181
    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v17, 0x40800000    # 4.0f

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x55

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$3;

    new-instance v3, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    new-instance v4, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    new-instance v5, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$3;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 193
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 194
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V

    .line 195
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 208
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42ca0000    # 101.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v7, v2, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 210
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const v17, 0x40ea8f5c    # 7.33f

    const/high16 v18, -0x3dcc0000    # -45.0f

    const/4 v12, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x77

    const v15, 0x40ea8f5c    # 7.33f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2, v3}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    .line 219
    iput-boolean v7, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyViewVisible:Z

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 221
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 222
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 223
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->emptyView:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$LargeEmptyView;

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41300000    # 11.0f

    .line 227
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v7, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    .line 231
    invoke-virtual {v0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 232
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 233
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 235
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filterScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, -0x1

    const/16 v4, 0x2f

    const/16 v5, 0x37

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    .line 238
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 239
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 240
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersDivider:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v11

    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v11, v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x31

    const/16 v12, 0x57

    .line 243
    invoke-static {v3, v2, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    .line 246
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "x"

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v2, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_clearcache:I

    invoke-direct {v2, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v0, v2, v7, v9, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 248
    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v9, Lorg/telegram/messenger/R$string;->Gift2ResaleFiltersClear:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const v12, 0x3dcccccd    # 0.1f

    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v2

    invoke-static {v7, v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersButton:Landroid/widget/TextView;

    const/16 v8, 0x77

    invoke-static {v3, v3, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 263
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->clearFiltersContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v8

    invoke-static {v11, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-direct {v1, v7, v7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setClearFiltersShown(ZZ)V

    .line 268
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 269
    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->list:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    invoke-virtual {v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->getSorting()Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V

    .line 270
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->sortButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 290
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeModel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->modelButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 403
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeBackdrop:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->backdropButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v6, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    .line 516
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AttributeSymbol:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->setValue(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->filtersContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    const/16 v17, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->patternButton:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;

    new-instance v2, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1, v6}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    new-instance v0, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    .line 629
    invoke-static {v3, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-direct {v1, v7, v7}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->setFiltersShown(ZZ)V

    return-object v10
.end method

.method public isLightStatusBar()Z
    .locals 6

    .line 1080
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

    .line 1083
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1084
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1085
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 1087
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public setCloseParentSheet(Ljava/lang/Runnable;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->closeParentSheet:Ljava/lang/Runnable;

    return-object p0
.end method
