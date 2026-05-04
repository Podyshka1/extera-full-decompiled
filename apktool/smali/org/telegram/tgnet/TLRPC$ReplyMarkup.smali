.class public abstract Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ReplyMarkup"
.end annotation


# instance fields
.field public flags:I

.field public is_persistent:Z

.field public placeholder:Ljava/lang/String;

.field public resize:Z

.field public rows:Ljava/util/ArrayList;

.field public selective:Z

.field public single_use:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10252
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 10259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10280
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;-><init>()V

    goto :goto_0

    .line 10274
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup_layer129;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup_layer129;-><init>()V

    goto :goto_0

    .line 10277
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply_layer129;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply_layer129;-><init>()V

    goto :goto_0

    .line 10268
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    goto :goto_0

    .line 10271
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardForceReply;-><init>()V

    goto :goto_0

    .line 10265
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;-><init>()V

    .line 10283
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a22662f -> :sswitch_5
        -0x794bf4f8 -> :sswitch_4
        -0x5fc1a47b -> :sswitch_3
        -0xbef7560 -> :sswitch_2
        0x3502758c -> :sswitch_1
        0x48a30254 -> :sswitch_0
    .end sparse-switch
.end method
