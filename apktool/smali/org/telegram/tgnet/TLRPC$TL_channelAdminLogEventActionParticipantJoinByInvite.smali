.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEventActionParticipantJoinByInvite"
.end annotation


# instance fields
.field public flags:I

.field public invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field public via_chatlist:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41862
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 41870
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41871
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->via_chatlist:Z

    .line 41872
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x1603ea8

    .line 41876
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41877
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->via_chatlist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->flags:I

    .line 41878
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 41879
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
