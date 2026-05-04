.class public Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;
.super Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputStorePaymentStarsGiveaway"
.end annotation


# instance fields
.field public additional_peers:Ljava/util/ArrayList;

.field public amount:J

.field public boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public countries_iso2:Ljava/util/ArrayList;

.field public currency:Ljava/lang/String;

.field public flags:I

.field public only_new_subscribers:Z

.field public prize_description:Ljava/lang/String;

.field public random_id:J

.field public stars:J

.field public until_date:I

.field public users:I

.field public winners_are_visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->only_new_subscribers:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->winners_are_visible:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->stars:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialogFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->prize_description:Ljava/lang/String;

    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->random_id:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->until_date:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->currency:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->amount:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->users:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x751f08fa

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->only_new_subscribers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->winners_are_visible:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->boost_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->additional_peers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->countries_iso2:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->prize_description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentStarsGiveaway;->users:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
