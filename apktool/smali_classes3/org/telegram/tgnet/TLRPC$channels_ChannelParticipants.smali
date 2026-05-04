.class public abstract Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "channels_ChannelParticipants"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;

.field public count:I

.field public participants:Ljava/util/ArrayList;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39890
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 39892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    .line 39893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    .line 39894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
    .locals 2

    const v0, -0x654f0151

    if-eq p1, v0, :cond_1

    const v0, -0xfe8c017

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 39903
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipantsNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipantsNotModified;-><init>()V

    goto :goto_0

    .line 39900
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;-><init>()V

    .line 39906
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;

    return-object p0
.end method
