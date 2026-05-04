.class public Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather2;
.super Lorg/telegram/tgnet/tl/TL_stories$MediaArea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_mediaAreaWeather2"
.end annotation


# static fields
.field public static final constructor:I = -0x7aa0ddc2


# instance fields
.field public emoji:Ljava/lang/String;

.field public temperature_c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2529
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2537
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2538
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    .line 2539
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    .line 2540
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather2;->emoji:Ljava/lang/String;

    .line 2541
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather2;->temperature_c:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7aa0ddc2

    .line 2546
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2547
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

    .line 2548
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2549
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2550
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather2;->emoji:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 2551
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather2;->temperature_c:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
