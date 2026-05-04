.class public Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateNewEncryptedMessage"
.end annotation


# instance fields
.field public message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

.field public qts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33289
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 33296
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    .line 33297
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->qts:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x12bcbd9a

    .line 33301
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33302
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->message:Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 33303
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;->qts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
