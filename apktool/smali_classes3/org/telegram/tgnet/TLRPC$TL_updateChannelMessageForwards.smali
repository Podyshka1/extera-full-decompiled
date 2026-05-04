.class public Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateChannelMessageForwards"
.end annotation


# instance fields
.field public channel_id:J

.field public forwards:I

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34491
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 34499
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->channel_id:J

    .line 34500
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->id:I

    .line 34501
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->forwards:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2d65d80c

    .line 34505
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34506
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->channel_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 34507
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34508
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageForwards;->forwards:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
