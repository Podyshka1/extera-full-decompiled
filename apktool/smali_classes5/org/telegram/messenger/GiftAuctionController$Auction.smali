.class public Lorg/telegram/messenger/GiftAuctionController$Auction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/GiftAuctionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;
    }
.end annotation


# instance fields
.field private approximatedMyPlace:I

.field public auctionState:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;

.field public auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

.field public auctionStateFinished:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionStateFinished;

.field public auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

.field public final currentAccount:I

.field public gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public final giftAuctionSlug:Ljava/lang/String;

.field public final giftDocumentId:J

.field public final giftId:J

.field public previewAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mapplyAuctionState(Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GiftAuctionController$Auction;->applyAuctionState(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mapplyGift(Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GiftAuctionController$Auction;->applyGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mapplyUserState(Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/GiftAuctionController$Auction;->applyUserState(Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetVersion(Lorg/telegram/messenger/GiftAuctionController$Auction;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getVersion()I

    move-result p0

    return p0
.end method

.method private constructor <init>(ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;)V
    .locals 2

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->currentAccount:I

    .line 572
    iput-object p2, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    .line 573
    iput-object p3, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionState:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;

    .line 574
    iput-object p4, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    .line 575
    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->giftId:J

    .line 576
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->giftDocumentId:J

    .line 577
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction_slug:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->giftAuctionSlug:Ljava/lang/String;

    .line 579
    invoke-direct {p0, p3}, Lorg/telegram/messenger/GiftAuctionController$Auction;->applyAuctionState(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;)Z

    return-void
.end method

.method synthetic constructor <init>(ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;Lorg/telegram/messenger/GiftAuctionController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/GiftAuctionController$Auction;-><init>(ILorg/telegram/tgnet/tl/TL_stars$StarGift;Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;)V

    return-void
.end method

.method private applyAuctionState(Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;)Z
    .locals 4

    .line 703
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 704
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    .line 705
    invoke-direct {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getVersion()I

    move-result v2

    .line 706
    iget v3, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->version:I

    if-le v3, v2, :cond_1

    .line 707
    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionState:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;

    .line 708
    iput-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    .line 709
    invoke-direct {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->onUpdateUserOrAuctionState()V

    return v1

    .line 712
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionStateFinished;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionState:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;

    .line 715
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionStateFinished;

    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateFinished:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionStateFinished;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private applyGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;)Z
    .locals 0

    .line 698
    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    const/4 p1, 0x1

    return p1
.end method

.method private applyUserState(Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;)Z
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    .line 724
    invoke-direct {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->onUpdateUserOrAuctionState()V

    const/4 p1, 0x1

    return p1
.end method

.method private approximateMyPlace()I
    .locals 6

    .line 735
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 739
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 740
    iget v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 741
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 742
    iget-object v4, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_amount:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->returned:Z

    if-nez v4, :cond_3

    .line 750
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_date:I

    invoke-virtual {p0, v2, v3, v0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->approximatePlaceFromStars(JI)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method private getVersion()I
    .locals 1

    .line 691
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->version:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onUpdateUserOrAuctionState()V
    .locals 1

    .line 729
    invoke-direct {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->approximateMyPlace()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->approximatedMyPlace:I

    return-void
.end method


# virtual methods
.method public approximateBidAmountFromPlace(I)J
    .locals 5

    .line 649
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;

    .line 654
    iget v4, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->pos:I

    if-gt p1, v4, :cond_1

    .line 655
    iget-wide v0, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->amount:J

    return-wide v0

    .line 658
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getMinimumBid()J

    move-result-wide v0

    return-wide v0

    .line 650
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getMinimumBid()J

    move-result-wide v0

    return-wide v0
.end method

.method public approximatePlaceFromStars(J)I
    .locals 1

    .line 662
    iget v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->approximatePlaceFromStars(JI)I

    move-result p1

    return p1
.end method

.method public approximatePlaceFromStars(JI)I
    .locals 7

    .line 666
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 671
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;

    .line 672
    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->amount:J

    cmp-long v6, p1, v4

    if-gtz v6, :cond_2

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    iget v4, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->date:I

    if-gt p3, v4, :cond_1

    goto :goto_1

    .line 676
    :cond_1
    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->pos:I

    goto :goto_0

    .line 673
    :cond_2
    :goto_1
    iget p1, v2, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->pos:I

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public getApproximatedMyPlace()I
    .locals 1

    .line 645
    iget v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->approximatedMyPlace:I

    return v0
.end method

.method public getBidStatus()Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;
    .locals 4

    .line 591
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    iget-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->returned:Z

    if-eqz v1, :cond_0

    .line 592
    sget-object v0, Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;->RETURNED:Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;

    return-object v0

    .line 593
    :cond_0
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_amount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 594
    sget-object v0, Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;->NO_BID:Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;

    return-object v0

    .line 595
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getApproximatedMyPlace()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->gifts_per_round:I

    if-gt v0, v1, :cond_2

    .line 596
    sget-object v0, Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;->WINNING:Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;

    return-object v0

    .line 598
    :cond_2
    sget-object v0, Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;->OUTBID:Lorg/telegram/messenger/GiftAuctionController$Auction$BidStatus;

    return-object v0
.end method

.method public getCurrentMyBid()J
    .locals 2

    .line 630
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_amount:J

    return-wide v0
.end method

.method public getCurrentTopBid()J
    .locals 2

    .line 634
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;->amount:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaximumBid()J
    .locals 4

    .line 641
    invoke-virtual {p0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->getCurrentTopBid()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xc350

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumBid()J
    .locals 6

    .line 619
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateActive:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->min_bid_amount:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 620
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->min_bid_amount:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 621
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionUserState:Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->min_bid_amount:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    return-wide v3

    :cond_1
    if-eqz v0, :cond_2

    .line 624
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->min_bid_amount:J

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public isFinished()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->auctionStateFinished:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionStateFinished;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUpcoming()Z
    .locals 1

    .line 583
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/GiftAuctionController$Auction;->isUpcoming(I)Z

    move-result v0

    return v0
.end method

.method public isUpcoming(I)Z
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/telegram/messenger/GiftAuctionController$Auction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->auction_start_date:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
