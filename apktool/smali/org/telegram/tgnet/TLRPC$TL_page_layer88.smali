.class public Lorg/telegram/tgnet/TLRPC$TL_page_layer88;
.super Lorg/telegram/tgnet/TLRPC$TL_page;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_page_layer88"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18464
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_page;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 18468
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 18469
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Page;->part:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 18470
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Page;->rtl:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    .line 18471
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Page;->v2:Z

    .line 18472
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    .line 18473
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    .line 18474
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0xe665f58

    .line 18478
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18479
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->part:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    .line 18480
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Page;->rtl:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    .line 18481
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Page;->v2:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    .line 18482
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18483
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 18484
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 18485
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
