.class public abstract Lorg/telegram/tgnet/TLRPC$InputPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputPeer"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:J

.field public chat_id:J

.field public msg_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public user_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54158
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 54189
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_0

    .line 54171
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerSelf;-><init>()V

    goto :goto_0

    .line 54186
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser_layer131;-><init>()V

    goto :goto_0

    .line 54195
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    goto :goto_0

    .line 54183
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    goto :goto_0

    .line 54198
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel_layer131;-><init>()V

    goto :goto_0

    .line 54204
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUserFromMessage_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUserFromMessage_layer131;-><init>()V

    goto :goto_0

    .line 54180
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat_layer131;-><init>()V

    goto :goto_0

    .line 54177
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    goto :goto_0

    .line 54192
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage;-><init>()V

    goto :goto_0

    .line 54174
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUserFromMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUserFromMessage;-><init>()V

    goto :goto_0

    .line 54201
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage_layer131;-><init>()V

    .line 54207
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x636a0845 -> :sswitch_b
        -0x5784f5e4 -> :sswitch_a
        -0x42d5f7c0 -> :sswitch_9
        -0x22175ab4 -> :sswitch_8
        0x179be863 -> :sswitch_7
        0x17bae2e6 -> :sswitch_6
        0x20adaef8 -> :sswitch_5
        0x27bcbbfc -> :sswitch_4
        0x35a95cb9 -> :sswitch_3
        0x7b8e7de6 -> :sswitch_2
        0x7da07ec9 -> :sswitch_1
        0x7f3b18ea -> :sswitch_0
    .end sparse-switch
.end method
