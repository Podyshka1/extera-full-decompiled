.class public abstract Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPageAttribute"
.end annotation


# instance fields
.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10405
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
    .locals 2

    .line 10424
    const-class v0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    invoke-static {p1}, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->fromConstructor(I)Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    move-result-object v1

    invoke-static {v0, v1, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;

    return-object p0
.end method

.method private static fromConstructor(I)Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 10410
    :sswitch_0
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;-><init>()V

    return-object p0

    .line 10413
    :sswitch_1
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;-><init>()V

    return-object p0

    .line 10415
    :sswitch_2
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftCollection;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftCollection;-><init>()V

    return-object p0

    .line 10412
    :sswitch_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;-><init>()V

    return-object p0

    .line 10418
    :sswitch_4
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction_layer219;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction_layer219;-><init>()V

    return-object p0

    .line 10416
    :sswitch_5
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStarGiftAuction;-><init>()V

    return-object p0

    .line 10414
    :sswitch_6
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeUniqueStarGift;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeUniqueStarGift;-><init>()V

    return-object p0

    .line 10411
    :sswitch_7
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory_layer162;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory_layer162;-><init>()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c65b98f -> :sswitch_7
        -0x30909248 -> :sswitch_6
        0x1c641c2 -> :sswitch_5
        0x34986ab -> :sswitch_4
        0x2e94c3e7 -> :sswitch_3
        0x31cad303 -> :sswitch_2
        0x50cc03d3 -> :sswitch_1
        0x54b56617 -> :sswitch_0
    .end sparse-switch
.end method
