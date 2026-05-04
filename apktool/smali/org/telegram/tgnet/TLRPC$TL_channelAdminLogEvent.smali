.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEvent"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

.field public date:I

.field public id:J

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5595
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;
    .locals 2

    const v0, 0x1fad68cd

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5604
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;-><init>()V

    .line 5605
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 5609
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    .line 5610
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    .line 5611
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    .line 5612
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1fad68cd

    .line 5616
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5617
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5618
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5619
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 5620
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
