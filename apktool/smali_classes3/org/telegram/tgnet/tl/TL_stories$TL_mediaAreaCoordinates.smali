.class public Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;
.super Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_mediaAreaCoordinates"
.end annotation


# static fields
.field public static final constructor:I = -0x30361ffe


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2310
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2315
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    .line 2316
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    .line 2317
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    .line 2318
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    .line 2319
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    .line 2320
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    .line 2321
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2322
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->radius:D

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x30361ffe

    .line 2328
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2329
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2330
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 2331
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 2332
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 2333
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 2334
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 2335
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2336
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->radius:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    :cond_0
    return-void
.end method
