.class public Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;
.super Lorg/telegram/tgnet/TLRPC$WebPageAttribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPageAttributeStickerSet"
.end annotation


# instance fields
.field public emojis:Z

.field public stickers:Ljava/util/ArrayList;

.field public text_color:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10513
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;-><init>()V

    .line 10519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->stickers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 10522
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 10523
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->emojis:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 10524
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->text_color:Z

    .line 10525
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->stickers:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x50cc03d3

    .line 10529
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10530
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->emojis:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    .line 10531
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->text_color:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPageAttribute;->flags:I

    .line 10532
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10533
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStickerSet;->stickers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
