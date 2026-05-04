.class public Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop_layer202;
.super Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "starGiftAttributeBackdrop_layer202"
.end annotation


# static fields
.field public static final constructor:I = -0x6bd8e89e


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4362
    invoke-direct {p0}, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 4382
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    .line 4383
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    .line 4384
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    .line 4385
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    .line 4386
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    .line 4387
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    .line 4388
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;->permille:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6bd8e89e

    .line 4367
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4368
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 4369
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->center_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4370
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->edge_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4371
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->pattern_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4372
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;->text_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 4373
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;->rarity:Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttributeRarity;

    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    if-eqz v1, :cond_0

    .line 4374
    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftAttributeRarity;->permille:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4376
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
