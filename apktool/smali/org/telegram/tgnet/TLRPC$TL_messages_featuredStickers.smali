.class public Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;
.super Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_featuredStickers"
.end annotation


# instance fields
.field public count:I

.field public flags:I

.field public hash:J

.field public premium:Z

.field public sets:Ljava/util/ArrayList;

.field public unread:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20820
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_FeaturedStickers;-><init>()V

    .line 20827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    .line 20828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 20831
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 20832
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->premium:Z

    .line 20833
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->hash:J

    .line 20834
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->count:I

    .line 20835
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_archivedStickers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    .line 20836
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x41c7d6fa

    .line 20840
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 20841
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->premium:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->flags:I

    .line 20842
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 20843
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 20844
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->count:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 20845
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->sets:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 20846
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_featuredStickers;->unread:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
