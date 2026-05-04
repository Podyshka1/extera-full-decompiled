.class public abstract Lorg/telegram/tgnet/TLRPC$InputStickerSet;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputStickerSet"
.end annotation


# instance fields
.field public access_hash:J

.field public id:J

.field public short_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31518
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 31543
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice_layer111;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice_layer111;-><init>()V

    goto :goto_0

    .line 31558
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiChannelDefaultStatuses;-><init>()V

    goto :goto_0

    .line 31555
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultTopicIcons;-><init>()V

    goto :goto_0

    .line 31549
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    goto :goto_0

    .line 31561
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetTonGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetTonGifts;-><init>()V

    goto :goto_0

    .line 31552
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiGenericAnimations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiGenericAnimations;-><init>()V

    goto :goto_0

    .line 31537
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetAnimatedEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetAnimatedEmoji;-><init>()V

    goto :goto_0

    .line 31528
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    goto :goto_0

    .line 31540
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetDice;-><init>()V

    goto :goto_0

    .line 31546
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetPremiumGifts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetPremiumGifts;-><init>()V

    goto :goto_0

    .line 31531
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    goto :goto_0

    .line 31534
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 31564
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79e33760 -> :sswitch_b
        -0x62185d97 -> :sswitch_a
        -0x3774c4fe -> :sswitch_9
        -0x1980adf2 -> :sswitch_8
        -0x49d46b -> :sswitch_7
        0x28703c8 -> :sswitch_6
        0x4c4d4ce -> :sswitch_5
        0x1cf671a0 -> :sswitch_4
        0x29d0f5ee -> :sswitch_3
        0x44c1f8e9 -> :sswitch_2
        0x49748553 -> :sswitch_1
        0x79e21a53 -> :sswitch_0
    .end sparse-switch
.end method
