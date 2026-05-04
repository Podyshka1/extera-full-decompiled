.class public Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;
.super Lorg/telegram/tgnet/TLRPC$EmojiStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_emojiStatusCollectible"
.end annotation


# instance fields
.field public center_color:I

.field public collectible_id:J

.field public document_id:J

.field public edge_color:I

.field public flags:I

.field public pattern_color:I

.field public pattern_document_id:J

.field public slug:Ljava/lang/String;

.field public text_color:I

.field public title:Ljava/lang/String;

.field public until:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53623
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$EmojiStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 53639
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    .line 53640
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    .line 53641
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->document_id:J

    .line 53642
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->title:Ljava/lang/String;

    .line 53643
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->slug:Ljava/lang/String;

    .line 53644
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    .line 53645
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->center_color:I

    .line 53646
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->edge_color:I

    .line 53647
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_color:I

    .line 53648
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->text_color:I

    .line 53649
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53650
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7184603b

    .line 53655
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53656
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53657
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53658
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->document_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53659
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 53660
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 53661
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_document_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53662
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->center_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53663
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->edge_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53664
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->pattern_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53665
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->text_color:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53666
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53667
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->until:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
