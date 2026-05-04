.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelAdminLogEventActionChangeUsernames"
.end annotation


# instance fields
.field public new_value:Ljava/util/ArrayList;

.field public prev_value:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42408
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    .line 42411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->prev_value:Ljava/util/ArrayList;

    .line 42412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->new_value:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 42415
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->prev_value:Ljava/util/ArrayList;

    .line 42416
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeString(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->new_value:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0xfb04c57

    .line 42420
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 42421
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->prev_value:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 42422
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeUsernames;->new_value:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeString(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
