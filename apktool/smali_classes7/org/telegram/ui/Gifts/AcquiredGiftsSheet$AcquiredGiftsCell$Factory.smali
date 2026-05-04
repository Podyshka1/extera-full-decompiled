.class Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static as(Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;Lorg/telegram/messenger/GiftAuctionController$Auction;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 188
    const-class v0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 189
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 190
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 191
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 182
    check-cast p1, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p3, Lorg/telegram/messenger/GiftAuctionController$Auction;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->-$$Nest$mbind(Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 165
    invoke-virtual/range {p0 .. p5}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;
    .locals 0

    .line 170
    new-instance p2, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;

    invoke-direct {p2, p1, p5, p3}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/4 p1, -0x1

    const/high16 p3, -0x40000000    # -2.0f

    .line 171
    invoke-static {p1, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
