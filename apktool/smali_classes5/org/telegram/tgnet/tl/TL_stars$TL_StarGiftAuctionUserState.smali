.class public Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_StarGiftAuctionUserState"
.end annotation


# static fields
.field public static final constructor:I = 0x2eeed1c4


# instance fields
.field public acquired_count:I

.field public bid_amount:J

.field public bid_date:I

.field public flags:I

.field public min_bid_amount:J

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public returned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6385
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;
    .locals 2

    const v0, 0x2eeed1c4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6397
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;-><init>()V

    .line 6398
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 6417
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->flags:I

    const/4 v1, 0x2

    .line 6418
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->returned:Z

    .line 6419
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6420
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_amount:J

    .line 6421
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_date:I

    .line 6422
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->min_bid_amount:J

    .line 6423
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6425
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->acquired_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, 0x2eeed1c4

    .line 6403
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6404
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->flags:I

    const/4 v1, 0x2

    iget-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->returned:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->flags:I

    .line 6405
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6406
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6407
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6408
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->bid_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6409
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->min_bid_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6410
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 6412
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionUserState;->acquired_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
