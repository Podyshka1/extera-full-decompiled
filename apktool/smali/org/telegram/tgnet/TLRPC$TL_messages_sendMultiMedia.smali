.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendMultiMedia"
.end annotation


# instance fields
.field public allow_paid_stars:J

.field public background:Z

.field public clear_draft:Z

.field public effect:J

.field public flags:I

.field public invert_media:Z

.field public multi_media:Ljava/util/ArrayList;

.field public noforwards:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public schedule_date:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public update_stickersets_order:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58512
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 58524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58532
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1bf89d74

    .line 58536
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58537
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58538
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58539
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->clear_draft:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58540
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->noforwards:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x4000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x4001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58541
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->update_stickersets_order:Z

    if-eqz v1, :cond_4

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_4

    :cond_4
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58542
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->invert_media:Z

    if-eqz v1, :cond_5

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    .line 58543
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58544
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58545
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 58546
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58548
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 58549
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 58550
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58552
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    .line 58553
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58555
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 58556
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 58558
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 58559
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->effect:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 58561
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 58562
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->allow_paid_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_b
    return-void
.end method
