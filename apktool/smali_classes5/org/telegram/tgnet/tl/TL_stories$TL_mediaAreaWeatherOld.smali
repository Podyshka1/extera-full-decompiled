.class public Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeatherOld;
.super Lorg/telegram/tgnet/tl/TL_stories$MediaArea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_mediaAreaWeatherOld"
.end annotation


# static fields
.field public static final constructor:I = 0x4386f849


# instance fields
.field public emoji:Ljava/lang/String;

.field public temperature_c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2580
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2588
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2589
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    .line 2590
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    .line 2591
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeatherOld;->emoji:Ljava/lang/String;

    .line 2592
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeatherOld;->temperature_c:D

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4386f849

    .line 2597
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2598
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    .line 2599
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2600
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2601
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeatherOld;->emoji:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2602
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeatherOld;->temperature_c:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    return-void
.end method
