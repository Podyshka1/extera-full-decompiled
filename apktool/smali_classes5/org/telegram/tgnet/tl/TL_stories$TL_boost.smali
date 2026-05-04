.class public Lorg/telegram/tgnet/tl/TL_stories$TL_boost;
.super Lorg/telegram/tgnet/tl/TL_stories$Boost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_boost"
.end annotation


# static fields
.field public static final constructor:I = 0x4b3e14d6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1340
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$Boost;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 1344
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

    .line 1345
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->gift:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1346
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    move v2, v3

    .line 1347
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    .line 1348
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    .line 1349
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 1350
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    .line 1352
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1353
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    .line 1355
    :cond_4
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    .line 1356
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    .line 1357
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1358
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    .line 1360
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1361
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    .line 1363
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 1364
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4b3e14d6    # 1.2457174E7f

    .line 1369
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1370
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

    .line 1371
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    .line 1372
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->unclaimed:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    .line 1373
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1375
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1376
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1378
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1379
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->giveaway_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1381
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1382
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->expires:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1383
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1384
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->used_gift_slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1386
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 1387
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->multiplier:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1389
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 1390
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_7
    return-void
.end method
