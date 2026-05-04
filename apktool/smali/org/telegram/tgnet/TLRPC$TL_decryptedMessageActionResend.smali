.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_decryptedMessageActionResend"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35253
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 35257
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    .line 35258
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x511110b0

    .line 35262
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35263
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35264
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
