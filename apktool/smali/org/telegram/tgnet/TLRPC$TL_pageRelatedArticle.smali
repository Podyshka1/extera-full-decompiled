.class public Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageRelatedArticle"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public flags:I

.field public photo_id:J

.field public published_date:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public webpage_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54035
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;
    .locals 2

    const v0, -0x4c6f23f8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 54048
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;-><init>()V

    .line 54049
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 54053
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    .line 54054
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    .line 54055
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->webpage_id:J

    .line 54056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54057
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    .line 54059
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 54060
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    .line 54062
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 54063
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->photo_id:J

    .line 54065
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 54066
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    .line 54068
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 54069
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4c6f23f8

    .line 54074
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54075
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54076
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 54077
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->webpage_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 54078
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54079
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 54081
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 54082
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 54084
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 54085
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->photo_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 54087
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 54088
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->author:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 54090
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 54091
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->published_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    return-void
.end method
