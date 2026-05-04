.class public Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails_layer197;
.super Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "starGiftAttributeOriginalDetails_layer197"
.end annotation


# static fields
.field public static final constructor:I = -0x3fd3b0b5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4427
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    .line 4446
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4448
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4449
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4451
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4452
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 4453
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->date:I

    .line 4454
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4455
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x3fd3b0b5

    .line 4432
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4433
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4434
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4435
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4437
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 4438
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4439
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4440
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
