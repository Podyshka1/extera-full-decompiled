.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift_layer211;
.super Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionStarGift_layer211"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->name_hidden:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgraded:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->transferred:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->refunded:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7

    move v2, v3

    :cond_7
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->prepaid_upgrade:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_msg_id:I

    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved_id:J

    :cond_d
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4717e8a4

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->name_hidden:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->converted:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgraded:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x21

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->transferred:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x41

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->can_upgrade:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x400

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x401

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->refunded:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x200

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x201

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->prepaid_upgrade:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->convert_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->upgrade_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionStarGift;->saved_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_d
    return-void
.end method
