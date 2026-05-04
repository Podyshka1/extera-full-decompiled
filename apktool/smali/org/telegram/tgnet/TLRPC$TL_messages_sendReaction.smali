.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendReaction"
.end annotation


# instance fields
.field public add_to_recent:Z

.field public big:Z

.field public flags:I

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reaction:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59036
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 59044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->reaction:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59047
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2cf2872c

    .line 59051
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59052
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->big:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    .line 59053
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->add_to_recent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    .line 59054
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59055
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 59058
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendReaction;->reaction:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
