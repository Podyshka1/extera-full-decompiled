.class public Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateChatUserTyping"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public chat_id:J

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33613
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 33621
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->chat_id:J

    .line 33622
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 33623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x7cb78510

    .line 33627
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 33628
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->chat_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 33629
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 33630
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
