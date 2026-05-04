.class Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/AcquiredGiftsSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcquiredGiftsCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$Factory;
    }
.end annotation


# instance fields
.field private final currentAccount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$2ZwwojGXji8m_bkuai2mnK5s-7k(Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->lambda$bind$0(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbind(Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->bind(Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 130
    iput p3, p0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->currentAccount:I

    .line 131
    iput-object p2, p0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 p1, 0x41900000    # 18.0f

    .line 133
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 p3, 0x41100000    # 9.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private bind(Lorg/telegram/messenger/GiftAuctionController$Auction;Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;Landroid/view/View$OnClickListener;)V
    .locals 9

    .line 137
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p1, Lorg/telegram/messenger/GiftAuctionController$Auction;->giftDocumentId:J

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    .line 141
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    .line 142
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    .line 140
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 v1, 0x20

    .line 144
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 146
    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->gift_num:I

    .line 147
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AuctionsAcquiredRound2:I

    iget-object p1, p1, Lorg/telegram/messenger/GiftAuctionController$Auction;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v5, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->round:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const/4 p1, 0x1

    aput-object v1, v6, p1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    new-instance v1, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2b50\ufe0f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->bid_amount:J

    const/16 v6, 0x2c

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f400000    # 0.75f

    .line 152
    invoke-static {v2, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    sget v2, Lorg/telegram/messenger/R$string;->Gift2AuctionsAcquiredTop:I

    iget v4, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->pos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, p1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v3, Lorg/telegram/ui/Components/TableView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/TableView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 157
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/TableView;->addFullRow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/TableView$TableRowFullContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TableView$TableRowFullContent;->setFilled(Z)V

    .line 158
    sget p1, Lorg/telegram/messenger/R$string;->Gift2AuctionsAcquiredRecipient:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;->currentAccount:I

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    new-instance v8, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, p3}, Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/AcquiredGiftsSheet$AcquiredGiftsCell;Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/TableView;->addRowUser(Ljava/lang/CharSequence;IJLjava/lang/Runnable;)Landroid/widget/TableRow;

    .line 159
    sget p1, Lorg/telegram/messenger/R$string;->Gift2AuctionsAcquiredDate:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->date:I

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Components/TableView;->addRowDateTime(Ljava/lang/CharSequence;I)Landroid/widget/TableRow;

    .line 160
    sget p1, Lorg/telegram/messenger/R$string;->Gift2AuctionsAcquiredAcceptedBid:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v3, p1, v1, v2, p2}, Lorg/telegram/ui/Components/TableView;->addRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Landroid/widget/TableRow;

    const/4 p1, -0x1

    const/high16 p2, -0x40000000    # -2.0f

    .line 162
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$bind$0(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 158
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
