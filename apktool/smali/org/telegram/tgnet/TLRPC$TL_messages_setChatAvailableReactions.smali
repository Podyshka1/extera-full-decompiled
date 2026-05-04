.class public Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_setChatAvailableReactions"
.end annotation


# instance fields
.field public available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field public flags:I

.field public paid_enabled:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reactions_limit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59292
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59302
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x79b4da7f

    .line 59306
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59307
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59308
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59309
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59310
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59311
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->reactions_limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59313
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59314
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_setChatAvailableReactions;->paid_enabled:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_1
    return-void
.end method
