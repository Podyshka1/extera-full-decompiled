.class public Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;
.super Lorg/telegram/tgnet/TLRPC$EmojiStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_emojiStatus"
.end annotation


# instance fields
.field public document_id:J

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53568
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 53575
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    .line 53576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 53577
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53578
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1800f976

    .line 53583
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53584
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53585
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53586
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53587
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
