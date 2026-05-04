.class public Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field private final currentAccount:I

.field private emptyView1:Landroid/widget/FrameLayout;

.field private emptyView1Button:Landroid/widget/TextView;

.field private emptyView1Layout:Landroid/widget/LinearLayout;

.field private emptyView1Title:Landroid/widget/TextView;

.field private emptyView2:Landroid/widget/FrameLayout;

.field private emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private emptyView2Layout:Landroid/widget/LinearLayout;

.field private emptyView2Subtitle:Landroid/widget/TextView;

.field private emptyView2Title:Landroid/widget/TextView;

.field private hasTabs:Z

.field public iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field public isCollection:Z

.field public list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field private final reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private reordering:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private visibleHeight:I


# direct methods
.method public static synthetic $r8$lambda$1znETsFgfGmNMdKts_dCznPfSNY(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$2fawzvId6Z3MobYgG1gyHUudQqg(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 837
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4BKIWhrnVJc8pF61m5XQj5n9mFw(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$20(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5K04S4qBktclC3QIS2HDQBeFVVE(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;ZLorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$10(ZLorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bqu9rNGugJHg3wwWM6c84NDNVYw(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$updateEmptyView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ijd-ImJbnHdtlS_dfKcob_qbo0g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$22(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MhzbdqMW90OKrDTuebGODWmSzXY(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$16(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OVedPBn65yDBaUqPwZ2qQnaLUWY(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemClick$5(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PwLSUVw96umYpGP6GekH6Qrw8Fo(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$17(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U9Vhj3NG1oGp1BAr5gCh56D1Ebs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$18(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VR72YYxj6_9aX1v_H_ML7ek-OJI(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 741
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->closeSwipeback()V

    return-void
.end method

.method public static synthetic $r8$lambda$WJYhHrXj1RsH-uKouPTl8m2kf-g(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$7(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ypp0IUpfhe8swVFcajevjqLVJs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$21(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSfYhAhPvlsyyZslCxGuXO9Bp7Y(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$13(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fYFEyvwAF3TdbCBvLBQ4-9ii-ZQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 576
    check-cast p0, Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hveDSgW10PchZb4jQeCA0UMql38(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$k_o9eMF5D3sBicZiWbiQKbDZB3I(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$12(Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$opQ1jUHON6afGJsjllfGQ8C2mHM(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$9(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWv_mISsJJsqdJQyA3oS4Ucl638(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemClick$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$rvoqsG1zxEtK-xr7O6rqyQT9Og4(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$sAh20Rizn-aETvfCJNaLnAP9_QQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$updateEmptyView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzCrtTWl-euqZt97jxzK3U8bU3A(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$fillItems$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wkNf8HwGIwW-QpJnlVIQQwYTfDk(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->lambda$onItemLongPress$8(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgethasTabs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->hasTabs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparent(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Gifts/ProfileGiftsContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$misLoadingVisible(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isLoadingVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetReordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setReordering(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 390
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->visibleHeight:I

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 215
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    .line 216
    iput p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    move-object/from16 v9, p3

    .line 217
    iput-object v9, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 219
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    new-instance v8, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v12, p1

    move v3, p2

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 226
    iget-object v2, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    const/16 v2, 0x9

    .line 227
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorType(I)V

    .line 228
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/high16 v2, 0x41100000    # 9.0f

    .line 229
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetexternalPaddingTop(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v6, 0x42ac0000    # 86.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 231
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v2, -0x1

    const/16 v4, 0x77

    .line 232
    invoke-static {v2, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$2;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 242
    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$3;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    .line 264
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 265
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 266
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    .line 267
    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 268
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 270
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reorder:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 366
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 367
    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->updateEmptyView()V

    return-void
.end method

.method private isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 551
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 552
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

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

.method private synthetic lambda$fillItems$3(I)V
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSpanCount(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemClick$4()V
    .locals 1

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Long;)V
    .locals 7

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 708
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    .line 710
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 711
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    .line 712
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftText:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->num:I

    int-to-long v5, p2

    const/16 p2, 0x2c

    invoke-static {v5, v6, p2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, p1, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 713
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 714
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 717
    invoke-virtual {p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    sget v2, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BoughtResoldGiftToText:I

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(IJ)Ljava/lang/String;

    move-result-object p3

    new-array v4, p1, [Ljava/lang/Object;

    aput-object p3, v4, v1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, v2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 718
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 719
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 721
    :goto_0
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_1

    .line 722
    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getFireworksOverlay()Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onItemLongPress$10(ZLorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 4

    const/4 p5, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget v2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p1, v2, p3, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->addGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object v2, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 817
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AddedToCollection:I

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 818
    invoke-static {p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, p5

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 816
    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 822
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p1, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget v2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {p1, v2, p3}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->removeGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    .line 823
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    iget-object v2, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 825
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2RemovedFromCollection:I

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 826
    invoke-static {p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, p5

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 824
    invoke-virtual {p1, v2, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 828
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 830
    :goto_0
    invoke-virtual {p4}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$12(Landroid/view/View;Z)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 857
    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 859
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onItemLongPress$13(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V
    .locals 11

    .line 844
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 845
    iput-boolean v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    .line 846
    invoke-virtual {p2, p1, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    .line 848
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    .line 850
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    .line 851
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-virtual {v0, p2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 854
    :cond_0
    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    xor-int/lit8 v0, p2, 0x1

    .line 855
    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v3, p1, v0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 856
    new-instance v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v6

    iget-object v9, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v10, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda25;

    invoke-direct {v10, p0, p3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/view/View;Z)V

    move-object v8, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$UnpinSheet;-><init>(Landroid/content/Context;JLorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback0Return;)V

    .line 860
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_pin:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2PinnedTitle:I

    .line 864
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Gift2PinnedSubtitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 865
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 867
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2Unpinned:I

    .line 868
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 871
    :goto_0
    check-cast p3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$14()V
    .locals 1

    const/4 v0, 0x1

    .line 875
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setReordering(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$15()V
    .locals 1

    const/4 v0, 0x1

    .line 879
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setReordering(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$16(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 7

    .line 893
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$7;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$7;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 899
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    const/4 v0, 0x0

    .line 900
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarGiftSheet;->toggleWear(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$17(Ljava/lang/String;)V
    .locals 1

    .line 904
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 v0, 0x0

    .line 906
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 907
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemLongPress$18(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 7

    .line 910
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$8;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$8;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 916
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 917
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->onSharePressed(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$19()V
    .locals 1

    const/4 v0, 0x1

    .line 921
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setReordering(Z)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$20(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V
    .locals 3

    .line 926
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPinned(ZZ)V

    .line 928
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v2, p1, v0, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    .line 931
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    .line 932
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    invoke-virtual {p2, p1, v1, v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    .line 933
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateGiftsUnsaved(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    .line 935
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    .line 937
    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean p1, p2, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    .line 938
    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onItemLongPress$21(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V
    .locals 7

    .line 946
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$9;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$9;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 952
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 953
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->openTransfer()V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$22(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 6

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v1, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->removeGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    .line 959
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 960
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    .line 962
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p2, p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v1, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->findById(I)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 964
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 966
    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Gift2RemovedFromCollection:I

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 967
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 965
    invoke-virtual {v1, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 969
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemLongPress$7(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;)V
    .locals 6

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->addGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$mfillTabs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Z)V

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgettabsView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v3, v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ProfileActivity;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    .line 775
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsShown(Z)V

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 779
    invoke-virtual {v1}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Gift2AddedToCollection:I

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 780
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->getGiftName(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 778
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleMultiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemLongPress$8(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Ljava/lang/String;)V
    .locals 2

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->createCollection(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$onItemLongPress$9(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Landroid/view/View;)V
    .locals 0

    .line 766
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda24;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$mopenEnterNameAlert(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$updateEmptyView$0(Landroid/view/View;)V
    .locals 0

    .line 498
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz p1, :cond_0

    .line 499
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->resetFilters()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateEmptyView$1(Landroid/view/View;)V
    .locals 0

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->addGifts()V

    return-void
.end method

.method private setReordering(Z)V
    .locals 4

    .line 559
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    .line 561
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->isReordering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updatedReordering(Z)V

    const/4 v0, 0x0

    move v1, v0

    .line 562
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 563
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 564
    instance-of v3, v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v3, :cond_1

    .line 565
    check-cast v2, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz v1, :cond_3

    .line 569
    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateWithoutNotify()V

    :cond_3
    if-eqz p1, :cond_4

    .line 572
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 573
    instance-of v1, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz v1, :cond_4

    .line 574
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ProfileActivity;->scrollToSharedMedia(Z)V

    .line 575
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateEmptyView()V
    .locals 13

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/high16 v2, 0x41600000    # 14.0f

    const/16 v3, 0x11

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_2

    .line 470
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    .line 471
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    .line 472
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    .line 473
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 474
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    .line 476
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    .line 478
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    .line 479
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 483
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v3, Lorg/telegram/messenger/R$raw;->utyan_empty:I

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string/jumbo v7, "utyan_empty"

    invoke-direct {v1, v3, v7, v6, v4}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v6, 0x78

    const/16 v7, 0x78

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    .line 487
    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->ProfileGiftsNotFoundTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v10, 0xc

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    .line 494
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ProfileGiftsNotFoundButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    const/16 v1, 0x77

    const/4 v2, -0x1

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    return-void

    .line 510
    :cond_2
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    .line 511
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    .line 512
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    .line 513
    iput-object v6, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    .line 515
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    .line 517
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    .line 518
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 522
    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2CollectionEmptyTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    .line 529
    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Gift2CollectionEmptyText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 535
    sget v1, Lorg/telegram/messenger/R$string;->Gift2CollectionEmptyButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v9, 0xc

    const/16 v3, 0xc8

    const/16 v4, 0x2c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x13

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x77

    const/4 v6, 0x0

    const/high16 v7, -0x3ec00000    # -12.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public bind(ZLorg/telegram/ui/Stars/StarsController$GiftsList;)V
    .locals 1

    .line 376
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    .line 377
    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz p2, :cond_0

    .line 379
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_0
    const/4 p1, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    .line 385
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 441
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    .line 442
    aget-object p2, p3, p1

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->update(Z)V

    .line 446
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_2
    :goto_0
    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 11

    .line 624
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-nez p2, :cond_0

    goto/16 :goto_8

    .line 626
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->hasFilters()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean v0, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-eqz v0, :cond_1

    iget-boolean p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez p2, :cond_1

    goto/16 :goto_8

    .line 628
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v0, 0x3

    if-eqz p2, :cond_3

    iget p2, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->totalCount:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v0

    :goto_1
    const/4 v1, 0x1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 629
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 631
    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->gifts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v0

    move v6, v3

    :cond_4
    :goto_2
    if-ge v6, v4, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 632
    iget-boolean v8, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    .line 633
    invoke-static {v3, v7, v1, v3, v8}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->asStarGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZZ)Lorg/telegram/ui/Components/UItem;

    move-result-object v8

    iget-boolean v9, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v10, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v10}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v10

    if-ne v9, v10, :cond_5

    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v7, :cond_6

    :cond_5
    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v3

    .line 634
    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/UItem;->setReordering(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v7

    .line 632
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_4

    move v5, v0

    goto :goto_2

    .line 641
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-boolean v4, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->loading:Z

    if-nez v4, :cond_8

    iget-boolean v2, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->endReached:Z

    if-nez v2, :cond_a

    :cond_8
    move v2, v3

    :goto_4
    if-gtz v5, :cond_9

    move v4, v0

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    if-ge v2, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x22

    .line 643
    invoke-static {v2, v4}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 647
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/high16 v2, 0x42a40000    # 82.0f

    if-ne v0, v1, :cond_c

    const/high16 v0, 0x41a00000    # 20.0f

    .line 648
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v0

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    .line 650
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    sget v0, Lorg/telegram/messenger/R$string;->ProfileGiftsInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/16 v5, 0x11

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$TextFactory;->asText(IIFLjava/lang/CharSequence;ZI)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 653
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 654
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_d
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 658
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->hasTabs:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x42280000    # 42.0f

    goto :goto_7

    :cond_e
    const/high16 v0, 0x41400000    # 12.0f

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 661
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->getSpanCount()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 662
    new-instance p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 669
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    if-eqz p1, :cond_11

    .line 670
    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda23;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_8
    return-void
.end method

.method public getTabsHeight()F
    .locals 5

    const/4 v0, 0x0

    .line 603
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 604
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 605
    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 606
    instance-of v4, v1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 608
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    if-nez v3, :cond_1

    .line 612
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isReordering()Z
    .locals 1

    .line 620
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 421
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 425
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 431
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 435
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 6

    .line 676
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 677
    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p2, :cond_6

    .line 678
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 679
    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    if-eqz p2, :cond_5

    .line 680
    iget-boolean p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz p2, :cond_1

    goto/16 :goto_0

    .line 681
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-nez p2, :cond_2

    goto/16 :goto_0

    .line 684
    :cond_2
    iget-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    xor-int/lit8 p3, p2, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_3

    .line 685
    iget-boolean p5, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz p5, :cond_3

    .line 686
    iput-boolean p4, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    .line 688
    new-instance p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;

    invoke-direct {p5}, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;-><init>()V

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->getInput(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    move-result-object v0

    iput-object v0, p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->stargift:Lorg/telegram/tgnet/tl/TL_stars$InputSavedStarGift;

    .line 690
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    iput-boolean v0, p5, Lorg/telegram/tgnet/tl/TL_stars$saveStarGift;->unsave:Z

    .line 691
    iget v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-virtual {v0, p5, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 693
    :cond_3
    iget-object p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v0, 0x1

    invoke-virtual {p5, p1, p3, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->togglePinned(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 694
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    iget p5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    .line 695
    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget p5, p5, Lorg/telegram/messenger/MessagesController;->stargiftsPinnedToTopLimit:I

    const-string v0, "GiftsPinLimit"

    invoke-static {v0, p5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p5}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    if-nez p2, :cond_6

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    .line 702
    :cond_5
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarGiftSheet;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    .line 703
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnGiftUpdatedListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    .line 706
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->setOnBoughtGift(Lorg/telegram/messenger/Utilities$Callback2;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    .line 725
    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Stars/StarGiftSheet;->set(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Stars/StarsController$IGiftsList;)Lorg/telegram/ui/Stars/StarGiftSheet;

    move-result-object p1

    .line 726
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet;->show()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onItemLongPress(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 732
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    .line 733
    :cond_0
    instance-of v0, v6, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v0, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v2, :cond_1a

    .line 734
    move-object v8, v6

    check-cast v8, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 735
    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    .line 736
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetfragment(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v9, 0x1

    invoke-static {v0, v6, v9}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v5

    .line 737
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object v5, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->currentMenu:Lorg/telegram/ui/Components/ItemOptions;

    .line 738
    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 739
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v10

    .line 740
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    sget v2, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda6;

    invoke-direct {v3, v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v10, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 743
    invoke-virtual {v10}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 745
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$5;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$5;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Landroid/content/Context;)V

    .line 754
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 756
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, -0x1

    const/4 v13, -0x2

    .line 757
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    .line 759
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v9

    iget v2, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->stargiftsCollectionsLimit:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v2

    const v14, 0x3df5c28f    # 0.12f

    const/high16 v15, 0x41900000    # 18.0f

    if-ge v0, v2, :cond_2

    .line 760
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v7, v7, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 761
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v7, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 762
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    move/from16 p1, v15

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v9, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v0, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 763
    iget-object v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 764
    sget v2, Lorg/telegram/messenger/R$string;->Gift2NewCollection:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_folder_add:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 765
    new-instance v2, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, v5, v4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    invoke-static {v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move/from16 p1, v15

    .line 788
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getCollections()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v0, v7

    :goto_1
    if-ge v0, v15, :cond_4

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v16, v0, 0x1

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;

    .line 789
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget v2, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->collection_id:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->getListById(I)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    .line 790
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->contains(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result v2

    .line 791
    new-instance v17, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v21, 0x0

    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, v17

    .line 792
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 793
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v0, v12, v7, v13, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 794
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    iget-object v13, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    iget-object v14, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v0, v13, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 795
    iget-object v7, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v12, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const v12, 0x3df5c28f    # 0.12f

    invoke-static {v7, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 796
    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_3

    .line 797
    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$6;

    iget v13, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v14, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v12, 0x3

    invoke-direct {v7, v1, v12, v13, v14}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$6;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;IILorg/telegram/tgnet/TLRPC$Document;)V

    .line 807
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addViewListening(Landroid/view/View;)V

    .line 808
    iget-object v12, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    :goto_2
    move-object v7, v0

    goto :goto_3

    .line 810
    :cond_3
    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;->title:Ljava/lang/String;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_folders:I

    invoke-virtual {v0, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 812
    :goto_3
    new-instance v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda12;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;ZLorg/telegram/tgnet/tl/TL_stars$TL_starGiftCollection;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, -0x2

    const/4 v2, -0x1

    .line 833
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v13, v0

    move v12, v2

    move/from16 v0, v16

    const/4 v7, 0x0

    const v14, 0x3df5c28f    # 0.12f

    goto/16 :goto_1

    .line 836
    :cond_4
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addfolder:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2AddToCollection:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda13;

    invoke-direct {v3, v5, v10}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v5, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 839
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 841
    :cond_5
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v0, :cond_11

    .line 842
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canReorder()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-nez v0, :cond_9

    iget-boolean v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-nez v0, :cond_9

    .line 843
    :cond_6
    iget-boolean v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz v0, :cond_7

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_4

    :cond_7
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_4
    if-eqz v0, :cond_8

    sget v0, Lorg/telegram/messenger/R$string;->Gift2Unpin:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->Gift2Pin:I

    goto :goto_5

    :goto_6
    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1, v4, v8, v6}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/view/View;)V

    invoke-virtual {v5, v2, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 874
    iget-boolean v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    sget v2, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2Reorder:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda15;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-virtual {v5, v0, v2, v3, v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_7

    .line 877
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canReorder()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz v0, :cond_a

    .line 878
    sget v0, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Reorder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-virtual {v5, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 883
    :cond_a
    :goto_7
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 885
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/nft/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->slug:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 890
    :goto_8
    iget v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v6, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 891
    iget v3, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v3, v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->isWorn(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 892
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_takeoff:I

    goto :goto_9

    :cond_c
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_wear:I

    :goto_9
    if-eqz v2, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Unwear:I

    goto :goto_a

    :cond_d
    sget v2, Lorg/telegram/messenger/R$string;->Gift2Wear:I

    :goto_a
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda17;

    invoke-direct {v6, v1, v4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {v5, v3, v2, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_e
    if-eqz v0, :cond_f

    const/4 v2, 0x1

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    .line 903
    :goto_b
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    sget v6, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda18;

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    .line 909
    :goto_c
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v3, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda19;

    invoke-direct {v6, v1, v4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {v5, v0, v2, v3, v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_d

    .line 919
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->canReorder()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz v0, :cond_12

    .line 920
    sget v0, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2Reorder:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)V

    invoke-virtual {v5, v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 924
    :cond_12
    :goto_d
    iget v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    iget-object v2, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet;->isMineWithActions(IJ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 925
    iget-boolean v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->unsaved:Z

    if-eqz v0, :cond_13

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    goto :goto_e

    :cond_13
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_hide_gift:I

    :goto_e
    if-eqz v0, :cond_14

    sget v0, Lorg/telegram/messenger/R$string;->Gift2ShowGift:I

    goto :goto_f

    :cond_14
    sget v0, Lorg/telegram/messenger/R$string;->Gift2HideGift:I

    :goto_f
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v4, v8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)V

    invoke-virtual {v5, v2, v0, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 941
    :cond_15
    iget-object v0, v4, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    instance-of v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v2, :cond_17

    .line 942
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 943
    iget v2, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    .line 944
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    .line 945
    :goto_10
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_transfer:I

    sget v3, Lorg/telegram/messenger/R$string;->Gift2TransferOption:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda9;

    invoke-direct {v6, v1, v4}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)V

    invoke-virtual {v5, v0, v2, v3, v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 956
    :cond_17
    iget-object v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->isMine()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, v1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz v0, :cond_18

    .line 957
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_removefolder:I

    sget v2, Lorg/telegram/messenger/R$string;->Gift2RemoveFromCollection:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, v4, v5}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v0, v2, v4, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v13, 0x0

    .line 971
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_11

    :cond_18
    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 973
    :goto_11
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_19

    return v13

    :cond_19
    const/4 v0, 0x5

    .line 976
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 977
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ItemOptions;->setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 978
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->allowMoveScrim()Lorg/telegram/ui/Components/ItemOptions;

    .line 979
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0x42000000    # 32.0f

    .line 980
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v0, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v5, v2, v0}, Lorg/telegram/ui/Components/ItemOptions;->animateToSize(II)Lorg/telegram/ui/Components/ItemOptions;

    .line 981
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->hideScrimUnder()Lorg/telegram/ui/Components/ItemOptions;

    const/4 v4, 0x1

    .line 982
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ItemOptions;->forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;

    .line 983
    invoke-virtual {v5}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    .line 984
    iget-object v0, v8, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->startAnimation(Z)V

    return v4

    :cond_1a
    move/from16 v17, v7

    return v17
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 415
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 416
    iget p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->visibleHeight:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setVisibleHeight(I)V

    return-void
.end method

.method public resetReordering()V
    .locals 1

    .line 583
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->reordering:Z

    if-nez v0, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_1

    .line 585
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sendPinnedOrder()V

    :cond_1
    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->setReordering(Z)V

    return-void
.end method

.method public setHasTabs(Z)V
    .locals 2

    .line 592
    iget-boolean v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->hasTabs:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 593
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->hasTabs:Z

    .line 594
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-nez p1, :cond_1

    .line 597
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 599
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->updateTabsY()V

    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 5

    .line 392
    iput p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->visibleHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x43160000    # 150.0f

    .line 393
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->ilerp(FFF)F

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 394
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 398
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->visibleHeight:I

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 403
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 408
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->visibleHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 204
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    .line 205
    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    if-nez v0, :cond_1

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView1Button:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 997
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Subtitle:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 998
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->emptyView2Button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    return-void
.end method
