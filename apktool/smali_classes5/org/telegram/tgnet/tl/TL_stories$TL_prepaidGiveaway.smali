.class public Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;
.super Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_prepaidGiveaway"
.end annotation


# static fields
.field public static final constructor:I = -0x4dac62ac


# instance fields
.field public months:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2791
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 2797
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    .line 2798
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->months:I

    .line 2799
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    .line 2800
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4dac62ac

    .line 2804
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2805
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 2806
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_prepaidGiveaway;->months:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2807
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->quantity:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2808
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
