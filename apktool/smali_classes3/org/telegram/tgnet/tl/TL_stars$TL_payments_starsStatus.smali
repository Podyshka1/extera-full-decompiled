.class public Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus;
.super Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_starsStatus"
.end annotation


# static fields
.field public static final constructor:I = 0x6c9ce8ed


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3613
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 3617
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    .line 3618
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 3619
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3620
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    .line 3622
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3623
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    .line 3625
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 3626
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_missing_balance:J

    .line 3628
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3629
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_payments_starsStatus$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    .line 3631
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3632
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    .line 3634
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    .line 3635
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x6c9ce8ed

    .line 3639
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3640
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3641
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3642
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3643
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3645
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3646
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3648
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 3649
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->subscriptions_missing_balance:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3651
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 3652
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->history:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3654
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3655
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->next_offset:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3657
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3658
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsStatus;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
