.class public Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;
.super Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "starGiftAttributeOriginalDetails"
.end annotation


# static fields
.field public static final constructor:I = -0x1f400d94


# instance fields
.field public date:I

.field public flags:I

.field public message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public sender_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4391
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 4416
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4418
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4420
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 4421
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->date:I

    .line 4422
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4423
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1f400d94

    .line 4402
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4403
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4404
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4405
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->sender_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4407
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->recipient_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 4408
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4409
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4410
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeOriginalDetails;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
