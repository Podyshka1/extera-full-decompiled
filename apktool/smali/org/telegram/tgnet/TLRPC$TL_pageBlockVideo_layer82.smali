.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo_layer82;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockVideo_layer82"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62181
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 62185
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 62186
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->autoplay:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 62187
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->loop:Z

    .line 62188
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    .line 62189
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 62190
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 62191
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x2628e79a

    .line 62195
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 62196
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->autoplay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    .line 62197
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->loop:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    .line 62198
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 62199
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 62200
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
