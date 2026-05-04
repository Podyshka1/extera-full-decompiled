.class public Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus_layer194;
.super Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_starsStatus_layer194"
.end annotation


# static fields
.field public static final constructor:I = -0x4405ce94


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3662
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 3667
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    .line 3668
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3669
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3670
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    .line 3672
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3673
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    .line 3675
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 3676
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_missing_balance:J

    .line 3678
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3679
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    .line 3681
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3682
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    .line 3684
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    .line 3685
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4405ce94

    .line 3689
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3690
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3691
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3692
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3693
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3695
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3696
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3698
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 3699
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_missing_balance:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3701
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3702
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3704
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3705
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3707
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3708
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
