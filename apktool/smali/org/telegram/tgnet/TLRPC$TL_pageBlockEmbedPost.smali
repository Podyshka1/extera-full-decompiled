.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockEmbedPost"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public author_photo_id:J

.field public blocks:Ljava/util/ArrayList;

.field public caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

.field public date:I

.field public url:Ljava/lang/String;

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29850
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    .line 29858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 29862
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->url:Ljava/lang/String;

    .line 29863
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->webpage_id:J

    .line 29864
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    .line 29865
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    .line 29866
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    .line 29867
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    .line 29868
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xda657f5

    .line 29872
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29873
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 29874
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->webpage_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 29875
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author_photo_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 29876
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 29877
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29878
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 29879
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
