.class public Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateStickerSetsOrder"
.end annotation


# instance fields
.field public emojis:Z

.field public flags:I

.field public masks:Z

.field public order:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34714
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 34720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 34723
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 34724
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->masks:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 34725
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->emojis:Z

    .line 34726
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0xbb2d201

    .line 34730
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34731
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->masks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    .line 34732
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->emojis:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->flags:I

    .line 34733
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34734
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;->order:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
