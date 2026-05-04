.class public Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_readEncryptedHistory"
.end annotation


# instance fields
.field public max_date:I

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57285
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57292
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x7f4b690a

    .line 57296
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57297
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57298
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readEncryptedHistory;->max_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
