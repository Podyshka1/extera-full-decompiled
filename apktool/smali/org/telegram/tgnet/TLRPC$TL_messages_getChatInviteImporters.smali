.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getChatInviteImporters"
.end annotation


# instance fields
.field public flags:I

.field public limit:I

.field public link:Ljava/lang/String;

.field public offset_date:I

.field public offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public q:Ljava/lang/String;

.field public requested:Z

.field public subscription_expired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59738
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59752
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x20fb22b2

    .line 59756
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59757
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->requested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    .line 59758
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->subscription_expired:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    .line 59759
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59760
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59761
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 59762
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59764
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 59765
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59767
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59768
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59769
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
