.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEventActionParticipantEditRank"
.end annotation


# instance fields
.field public new_rank:Ljava/lang/String;

.field public prev_rank:Ljava/lang/String;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42161
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 42170
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->user_id:J

    .line 42171
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->prev_rank:Ljava/lang/String;

    .line 42172
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->new_rank:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x5806b4ec

    .line 42177
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 42178
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->user_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 42179
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->prev_rank:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 42180
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantEditRank;->new_rank:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
