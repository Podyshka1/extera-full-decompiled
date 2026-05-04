.class public abstract Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NotifyPeer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 925
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyForumTopic;-><init>()V

    goto :goto_0

    .line 928
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyBroadcasts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyBroadcasts;-><init>()V

    goto :goto_0

    .line 931
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;-><init>()V

    goto :goto_0

    .line 934
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;-><init>()V

    goto :goto_0

    .line 937
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;-><init>()V

    .line 940
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x602bf428 -> :sswitch_4
        -0x4b37c4b4 -> :sswitch_3
        -0x3ff8313d -> :sswitch_2
        -0x29ed1711 -> :sswitch_1
        0x226e6308 -> :sswitch_0
    .end sparse-switch
.end method
