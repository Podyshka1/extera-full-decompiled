.class Lorg/telegram/ui/PeerColorActivity$Page$4;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$this$0:Lorg/telegram/ui/PeerColorActivity;

.field final synthetic val$type:I


# direct methods
.method public static synthetic $r8$lambda$0ZMbueDzZJMmZC9KCWZj2ZtNgTM(Lorg/telegram/ui/PeerColorActivity$Page$4;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$4;->lambda$onCreateViewHolder$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4penw0vaZiCEPOTNkY81onnHm-Y(Lorg/telegram/ui/PeerColorActivity$Page$4;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$4;->lambda$onBindViewHolder$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AX2MbdS2pksx4-MTsw_A9ukH1OY(Lorg/telegram/ui/PeerColorActivity$Page$4;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$4;->lambda$onBindViewHolder$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nnpak0_LGsP_GVXNf9Cj0AJBRI4(Lorg/telegram/ui/PeerColorActivity$Page$4;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$4;->lambda$onBindViewHolder$1(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
    .locals 0

    .line 324
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$this$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$context:Landroid/content/Context;

    iput p4, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetviewPager(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    rsub-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Ljava/lang/Boolean;)V
    .locals 0

    .line 530
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->update()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Ljava/lang/Integer;)V
    .locals 5

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetindex2gift(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    .line 524
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p1

    if-nez p1, :cond_1

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->cancel()V

    .line 527
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1, v2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)V

    goto :goto_1

    .line 529
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->gift_id:J

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 530
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    iget-object v1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$900(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    new-instance v4, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;-><init>(IJLorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;)V

    .line 531
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    .line 533
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->update()V

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetviewPager(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    .line 535
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->update()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Ljava/lang/Integer;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedColor(Lorg/telegram/ui/PeerColorActivity$Page;I)V

    .line 374
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)V

    .line 375
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;)V

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputselectedResaleGift(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$mupdateMessages(Lorg/telegram/ui/PeerColorActivity$Page;)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateButton(Z)V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetsetReplyIconCell(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetsetReplyIconCell(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 383
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetprofilePreview(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v0, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz v0, :cond_1

    .line 384
    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetprofilePreview(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedColor(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    const/4 v2, 0x2

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->info2Row:I

    if-eq p1, v1, :cond_b

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    return v3

    .line 598
    :cond_1
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 601
    :cond_2
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x5

    return p1

    .line 604
    :cond_3
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x6

    return p1

    .line 607
    :cond_4
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsTabsRow:I

    if-ne p1, v1, :cond_5

    const/16 p1, 0xa

    return p1

    .line 610
    :cond_5
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEmptyRow:I

    if-ne p1, v1, :cond_6

    const/16 p1, 0xb

    return p1

    .line 613
    :cond_6
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ne p1, v1, :cond_7

    const/4 p1, 0x7

    return p1

    .line 616
    :cond_7
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    if-lt p1, v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    if-ge p1, v1, :cond_9

    .line 617
    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p1

    if-nez p1, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_8
    const/16 p1, 0xc

    return p1

    .line 623
    :cond_9
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    if-lt p1, v1, :cond_a

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    if-ge p1, v0, :cond_a

    const/16 p1, 0x9

    return p1

    .line 626
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page$4;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_b

    const/4 p1, 0x4

    return p1

    :cond_b
    :goto_0
    return v2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 432
    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 486
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, p1, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p2, v0

    .line 488
    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_9

    :cond_0
    if-ltz p2, :cond_16

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto/16 :goto_9

    .line 490
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 491
    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Z

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_4

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSelected(ZZ)V

    return-void

    .line 548
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$Page$EmptyView;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page$EmptyView;->updateColors()V

    return-void

    .line 499
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    .line 500
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 501
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetindex2gift(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 502
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$800(Lorg/telegram/ui/PeerColorActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Stars/StarsController;->sortedGifts:Ljava/util/ArrayList;

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Gift2TabMine:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v3, v0

    .line 505
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 506
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 507
    iget v5, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    if-eqz v5, :cond_5

    if-ne v5, v1, :cond_7

    iget-boolean v5, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->peer_color_available:Z

    if-eqz v5, :cond_7

    :cond_5
    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->availability_resale:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    .line 508
    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v5}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v5

    if-ne v5, v4, :cond_6

    .line 509
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 511
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v5}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetindex2gift(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v6}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 513
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 514
    new-instance v7, Landroid/text/SpannableStringBuilder;

    const-string v8, "x "

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 515
    new-instance v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 516
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, v8, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/16 v5, 0x21

    .line 517
    invoke-virtual {v7, v8, v2, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 518
    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 519
    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 522
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgettabs(Lorg/telegram/ui/PeerColorActivity$Page;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;)V

    invoke-virtual {p1, v2, p2, v3, v0}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->set(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)V

    .line 537
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 538
    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->updateColors()V

    return-void

    .line 473
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v3, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p2, v3

    if-ltz p2, :cond_16

    .line 475
    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_9

    goto/16 :goto_9

    .line 476
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 477
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->set(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    .line 478
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p2, v3, v5

    if-eqz p2, :cond_c

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    iget-wide v5, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p2, v3, v5

    if-nez p2, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :cond_c
    :goto_2
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    .line 483
    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$GiftCell;->card:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 466
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ne p2, v0, :cond_d

    .line 468
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileCollectibleHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 470
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 457
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 458
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 460
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ne p2, v1, :cond_16

    .line 462
    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_e

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileColorReset:I

    goto :goto_3

    :cond_e
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileColorReset:I

    :goto_3
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 545
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->updateColors()V

    return-void

    .line 434
    :pswitch_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 435
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    if-ne p2, v2, :cond_13

    .line 438
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    if-ne p2, v1, :cond_10

    .line 439
    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget p2, Lorg/telegram/messenger/R$string;->ChannelColorHint:I

    goto :goto_4

    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->UserColorHint:I

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 441
    :cond_10
    iget-object p2, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result p2

    if-eqz p2, :cond_11

    sget p2, Lorg/telegram/messenger/R$string;->ChannelProfileHint:I

    goto :goto_5

    :cond_11
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileHint2:I

    :goto_5
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 443
    :goto_6
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;I)V

    invoke-static {p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ltz v0, :cond_12

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_7

    :cond_12
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_7
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 447
    :cond_13
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    if-ne p2, v1, :cond_15

    .line 448
    const-string p2, ""

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 449
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 450
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsHeaderRow:I

    if-ltz v0, :cond_14

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_8

    :cond_14
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_8
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 451
    :cond_15
    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsInfoRow:I

    if-ne p2, v0, :cond_16

    .line 452
    sget p2, Lorg/telegram/messenger/R$string;->UserProfileCollectibleInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    :goto_9
    return-void

    .line 541
    :pswitch_9
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 542
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->updateColors()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 365
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    .line 354
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$200(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$300(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_2

    .line 424
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$EmptyView;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page$EmptyView;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 420
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$700(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    goto/16 :goto_2

    .line 358
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    .line 359
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/16 p2, 0x23

    .line 360
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto/16 :goto_2

    .line 350
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->access$100(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lorg/telegram/ui/PeerColorActivity$GiftCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 345
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 346
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 403
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 404
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 390
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$1;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4$1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;Landroid/content/Context;)V

    goto :goto_2

    .line 408
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$2;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page$4$2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;Landroid/content/Context;)V

    .line 417
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 398
    :pswitch_a
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputsetReplyIconCell(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V

    .line 399
    invoke-virtual {v0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    :goto_1
    move-object p1, v0

    goto :goto_2

    .line 369
    :pswitch_b
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->val$type:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v3, v3, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$500(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v4, v4, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity;->access$600(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fputpeerColorPicker(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V

    .line 370
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 371
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedColor(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    .line 372
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$Page$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page$4;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 427
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 555
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 556
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 557
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/PeerColorActivity$GiftCell;

    .line 558
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v4, v1, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p1, v4

    if-ltz p1, :cond_a

    .line 559
    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto/16 :goto_2

    .line 560
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v1, v1, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    .line 561
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->set(ILorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PeerColorActivity$GiftCell;->setSelected(ZZ)V

    return-void

    .line 567
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    .line 568
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 569
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    sub-int/2addr p1, v1

    .line 570
    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p1, :cond_a

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_6

    goto :goto_2

    .line 572
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 573
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZZ)Z

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedEmojiCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide v6, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_9

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$4;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedPeerCollectible(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_peerColorCollectible;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PeerColor;->collectible_id:J

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long p1, v0, v5

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :cond_9
    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setSelected(ZZ)V

    :cond_a
    :goto_2
    return-void
.end method
