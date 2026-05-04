.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197_2;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaDocument_layer197_2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7756
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 7760
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

    .line 7761
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->nopremium:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 7762
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 7763
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 7764
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v2, v3

    .line 7765
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 7767
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7769
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7770
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    .line 7772
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 7773
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7775
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 7776
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x244209ec

    .line 7781
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7782
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

    .line 7783
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7784
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7785
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7786
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7787
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7788
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 7789
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7791
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7792
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 7794
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    .line 7795
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7797
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 7798
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_8
    return-void
.end method
