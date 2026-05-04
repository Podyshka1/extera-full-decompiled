.class public Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_StarGiftAuctionAcquiredGift"
.end annotation


# static fields
.field public static final constructor:I = 0x42b00348


# instance fields
.field public bid_amount:J

.field public date:I

.field public flags:I

.field public gift_num:I

.field public message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public name_hidden:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pos:I

.field public round:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6429
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;
    .locals 2

    const v0, 0x42b00348

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6480
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;-><init>()V

    .line 6481
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 6464
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    const/4 v1, 0x1

    .line 6465
    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->name_hidden:Z

    .line 6466
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 6467
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->date:I

    .line 6468
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->bid_amount:J

    .line 6469
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->round:I

    .line 6470
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->pos:I

    .line 6471
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6472
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 6474
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6475
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->gift_num:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 4

    const v0, 0x42b00348

    .line 6444
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6446
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->name_hidden:Z

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    .line 6447
    iget-object v1, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    .line 6448
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6449
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 6450
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6451
    iget-wide v2, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->bid_amount:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 6452
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->round:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6453
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->pos:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 6454
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6455
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 6457
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6458
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$TL_StarGiftAuctionAcquiredGift;->gift_num:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    return-void
.end method
