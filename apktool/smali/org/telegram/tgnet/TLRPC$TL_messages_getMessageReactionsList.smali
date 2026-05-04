.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getMessageReactionsList"
.end annotation


# instance fields
.field public flags:I

.field public id:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reaction:Lorg/telegram/tgnet/TLRPC$Reaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59263
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59274
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x461b3f48

    .line 59278
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59279
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59280
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59281
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59282
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59283
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59285
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59286
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59288
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
