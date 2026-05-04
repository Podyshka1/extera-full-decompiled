.class public Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197;
.super Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageMediaDocument_layer197"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7803
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 7807
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

    .line 7808
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->nopremium:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 7809
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 7810
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 7811
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v2, v3

    .line 7812
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 7814
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7816
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7817
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    .line 7819
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 7820
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x22a8f42b

    .line 7825
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7826
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

    .line 7827
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7828
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7829
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->round:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x81

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7830
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->voice:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x101

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 7831
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 7832
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 7833
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 7835
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7836
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 7838
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 7839
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_7
    return-void
.end method
