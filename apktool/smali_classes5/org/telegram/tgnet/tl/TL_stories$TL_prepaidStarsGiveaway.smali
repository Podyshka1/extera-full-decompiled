.class public Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;
.super Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_prepaidStarsGiveaway"
.end annotation


# static fields
.field public static final constructor:I = -0x65628820


# instance fields
.field public stars:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2768
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2774
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    .line 2775
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    .line 2776
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    .line 2777
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->boosts:I

    .line 2778
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x65628820

    .line 2782
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2783
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2784
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidStarsGiveaway;->stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2785
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2786
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->boosts:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2787
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
