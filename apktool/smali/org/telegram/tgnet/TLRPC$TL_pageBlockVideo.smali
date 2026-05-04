.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockVideo"
.end annotation


# instance fields
.field public autoplay:Z

.field public caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

.field public flags:I

.field public loop:Z

.field public video_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30270
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 30280
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

    .line 30281
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->autoplay:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v3

    .line 30282
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->loop:Z

    .line 30283
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    .line 30284
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7c8fe7b6

    .line 30288
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30289
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

    .line 30290
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->loop:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->flags:I

    .line 30291
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30292
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 30293
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
