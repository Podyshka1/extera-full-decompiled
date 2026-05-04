.class public Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;
.super Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_starGiftAuctionState"
.end annotation


# static fields
.field public static final constructor:I = 0x771a4e66


# instance fields
.field public bid_levels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$TL_AuctionBidLevel;",
            ">;"
        }
    .end annotation
.end field

.field public current_round:I

.field public end_date:I

.field public gifts_left:I

.field public last_gift_num:I

.field public min_bid_amount:J

.field public next_round_at:I

.field public rounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionRound;",
            ">;"
        }
    .end annotation
.end field

.field public start_date:I

.field public top_bidders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public total_rounds:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6220
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAuctionState;-><init>()V

    .line 6227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    .line 6228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    .line 6234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->rounds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 6255
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->version:I

    .line 6256
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->start_date:I

    .line 6257
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->end_date:I

    .line 6258
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->min_bid_amount:J

    .line 6259
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    .line 6260
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    .line 6261
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->next_round_at:I

    .line 6262
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->last_gift_num:I

    .line 6263
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->gifts_left:I

    .line 6264
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->current_round:I

    .line 6265
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->total_rounds:I

    .line 6266
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->rounds:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x771a4e66

    .line 6238
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6239
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->version:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6240
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->start_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6241
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->end_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6242
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->min_bid_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6243
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->bid_levels:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 6244
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->top_bidders:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 6245
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->next_round_at:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6246
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->last_gift_num:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6247
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->gifts_left:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6248
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->current_round:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6249
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->total_rounds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6250
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAuctionState;->rounds:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
