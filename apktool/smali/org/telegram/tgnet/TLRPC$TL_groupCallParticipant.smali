.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;
.super Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_groupCallParticipant"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54598
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 54602
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 54603
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 54604
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->left:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 54605
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 54606
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->just_joined:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 54607
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->versioned:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 54608
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->min:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 54609
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 54610
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume_by_admin:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 54611
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    move v2, v3

    .line 54612
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video_joined:Z

    .line 54613
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 54614
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    .line 54615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 54616
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    .line 54618
    :cond_a
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    .line 54619
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 54620
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    .line 54622
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 54623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->about:Ljava/lang/String;

    .line 54625
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 54626
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    .line 54628
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 54629
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 54631
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 54632
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 54634
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54635
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->paid_stars_total:J

    :cond_10
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2a3dc7ac

    .line 54640
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54641
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54642
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->left:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54643
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54644
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->just_joined:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54645
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->versioned:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54646
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->min:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x101

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54647
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x200

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x201

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54648
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume_by_admin:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x400

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x401

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54649
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x1000

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x1001

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54650
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video_joined:Z

    if-eqz v1, :cond_9

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    .line 54651
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54652
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 54653
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54654
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 54655
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->active_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54657
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54658
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 54659
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->volume:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54661
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 54662
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->about:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 54664
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 54665
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->raise_hand_rating:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 54667
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 54668
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 54670
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 54671
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 54673
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->flags:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54674
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->paid_stars_total:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_10
    return-void
.end method
