.class public Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;
.super Lorg/telegram/tgnet/tl/TL_stories$MediaArea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_mediaAreaSuggestedReaction"
.end annotation


# static fields
.field public static final constructor:I = 0x14455871


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2415
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2419
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2420
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->dark:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 2421
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    .line 2422
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    .line 2423
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Reaction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x14455871

    .line 2427
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2428
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

    .line 2429
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flipped:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->flags:I

    .line 2430
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2431
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 2432
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
