.class public Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_forwardMessages"
.end annotation


# instance fields
.field public allow_paid_stars:J

.field public background:Z

.field public drop_author:Z

.field public drop_media_captions:Z

.field public flags:I

.field public from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public id:Ljava/util/ArrayList;

.field public noforwards:Z

.field public quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

.field public random_id:Ljava/util/ArrayList;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public schedule_date:I

.field public schedule_repeat_period:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

.field public to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I

.field public video_timestamp:I

.field public with_my_score:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56535
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 56546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 56547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56560
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, 0x41d41ade

    .line 56564
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56565
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56566
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56567
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x101

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56568
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->drop_author:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x800

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x801

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56569
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->drop_media_captions:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x1001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56570
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->noforwards:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x4000

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x4001

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56571
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    const/high16 v4, 0x400000

    invoke-static {v0, v4, v1}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56572
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    const/high16 v1, 0x800000

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    .line 56573
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56574
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56575
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 56576
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 56577
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56578
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    .line 56579
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->top_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56581
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56582
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56584
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 56585
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56587
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    const/high16 v2, 0x1000000

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56588
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->schedule_repeat_period:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56590
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    .line 56591
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56593
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    .line 56594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 56596
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 56597
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->video_timestamp:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 56599
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    .line 56600
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->allow_paid_stars:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 56602
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56603
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_10
    return-void
.end method
