.class public abstract Lorg/telegram/tgnet/TLRPC$DraftMessage;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DraftMessage"
.end annotation


# instance fields
.field public date:I

.field public effect:J

.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public invert_media:Z

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 341
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DraftMessage;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer181;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer181;-><init>()V

    goto :goto_0

    .line 370
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer205;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer205;-><init>()V

    goto :goto_0

    .line 358
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty;-><init>()V

    goto :goto_0

    .line 364
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer165;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage_layer165;-><init>()V

    goto :goto_0

    .line 361
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty_layer81;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessageEmpty_layer81;-><init>()V

    goto :goto_0

    .line 373
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;-><init>()V

    .line 376
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$DraftMessage;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69155a15 -> :sswitch_5
        -0x45b4513b -> :sswitch_4
        -0x2718ee1 -> :sswitch_3
        0x1b0c841a -> :sswitch_2
        0x2d65321f -> :sswitch_1
        0x3fccf7ef -> :sswitch_0
    .end sparse-switch
.end method
