.class public Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_markDialogUnread"
.end annotation


# instance fields
.field public flags:I

.field public parentPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputDialogPeer;

.field public unread:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60110
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60119
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x73aff908

    .line 60123
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60124
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->unread:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->flags:I

    .line 60125
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->parentPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->flags:I

    .line 60126
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 60128
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->parentPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60130
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_markDialogUnread;->peer:Lorg/telegram/tgnet/TLRPC$InputDialogPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
