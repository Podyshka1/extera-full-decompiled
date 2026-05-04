.class public Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_getBroadcastStats"
.end annotation


# static fields
.field public static final constructor:I = -0x54bdbbe6


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public dark:Z

.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 383
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stats$TL_broadcastStats;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x54bdbbe6

    .line 387
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 388
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->dark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->flags:I

    .line 389
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 390
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stats$TL_getBroadcastStats;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
