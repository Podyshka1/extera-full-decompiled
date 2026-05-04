.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setTyping"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56272
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56281
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x58943ee2

    .line 56285
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56286
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56287
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56288
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 56289
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56291
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
