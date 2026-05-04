.class public abstract Lorg/telegram/tgnet/TLRPC$InputReplyTo;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputReplyTo"
.end annotation


# instance fields
.field public flags:I

.field public monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public quote_entities:Ljava/util/ArrayList;

.field public quote_offset:I

.field public quote_text:Ljava/lang/String;

.field public reply_to_msg_id:I

.field public reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public story_id:I

.field public todo_item_id:I

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->quote_entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputReplyTo;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer203;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer203;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory_layer173;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToStory_layer173;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer166;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer166;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer207;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage_layer207;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMessage;-><init>()V

    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x796041f0 -> :sswitch_6
        -0x4f8fc750 -> :sswitch_5
        0x73ec805 -> :sswitch_4
        0x15b0f283 -> :sswitch_3
        0x22c0f6d5 -> :sswitch_2
        0x5881323a -> :sswitch_1
        0x69d66c45 -> :sswitch_0
    .end sparse-switch
.end method
