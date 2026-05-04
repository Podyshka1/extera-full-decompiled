.class public Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;
.super Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_giveawayInfoResults"
.end annotation


# instance fields
.field public activated_count:I

.field public finish_date:I

.field public flags:I

.field public gift_code_slug:Ljava/lang/String;

.field public refunded:Z

.field public stars_prize:J

.field public start_date:I

.field public winner:Z

.field public winners_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->winner:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->refunded:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->start_date:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->gift_code_slug:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->stars_prize:J

    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->finish_date:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->winners_count:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->activated_count:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1e8a1991

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->winner:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->refunded:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->start_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->gift_code_slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->stars_prize:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->finish_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->winners_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_giveawayInfoResults;->activated_count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
