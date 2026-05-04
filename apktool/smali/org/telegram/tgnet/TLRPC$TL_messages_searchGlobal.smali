.class public Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_searchGlobal"
.end annotation


# instance fields
.field public broadcasts_only:Z

.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public flags:I

.field public folder_id:I

.field public groups_only:Z

.field public limit:I

.field public max_date:I

.field public min_date:I

.field public offset_id:I

.field public offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public offset_rate:I

.field public q:Ljava/lang/String;

.field public users_only:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56184
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56202
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4bc6589a    # 2.599762E7f

    .line 56206
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56207
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->broadcasts_only:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 56208
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->groups_only:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 56209
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->users_only:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 56210
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56211
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 56212
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56214
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 56215
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    if-eqz v0, :cond_4

    .line 56216
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56218
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56219
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->max_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56220
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56221
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56222
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56223
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
