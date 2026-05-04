.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEventActionToggleSlowMode"
.end annotation


# instance fields
.field public new_value:I

.field public prev_value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41844
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 41851
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;->prev_value:I

    .line 41852
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;->new_value:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x53909779

    .line 41856
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41857
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;->prev_value:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41858
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleSlowMode;->new_value:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
