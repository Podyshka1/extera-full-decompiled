.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
.super Lorg/telegram/tgnet/TLRPC$MessageMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaDocument"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7703
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 7707
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7708
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->nopremium:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 7709
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 7710
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 7711
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v2, v3

    .line 7712
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 7714
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7716
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7717
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    .line 7719
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 7720
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7722
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 7723
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_timestamp:I

    .line 7725
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 7726
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    :cond_9
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x52d8ccd9

    .line 7731
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7732
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->nopremium:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, -0x9

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7733
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7734
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7735
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7736
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7737
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7738
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 7739
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7741
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7742
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 7744
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 7745
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7747
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    .line 7748
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_timestamp:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7750
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 7751
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_9
    return-void
.end method
