.class public Lorg/telegram/tgnet/tl/TL_stories$TL_boost_layer186;
.super Lorg/telegram/tgnet/tl/TL_stories$TL_boost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_boost_layer186"
.end annotation


# static fields
.field public static final constructor:I = 0x2a1c8c71


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1395
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1399
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1400
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1401
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v2, v3

    .line 1402
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    .line 1403
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    .line 1404
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 1405
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    .line 1407
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1408
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    .line 1410
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    .line 1411
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    .line 1412
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1413
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    .line 1415
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1416
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2a1c8c71

    .line 1421
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1422
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    .line 1423
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    .line 1424
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    .line 1425
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1426
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1427
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1428
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1430
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1431
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1433
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1434
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1435
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1436
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1438
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1439
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_6
    return-void
.end method
