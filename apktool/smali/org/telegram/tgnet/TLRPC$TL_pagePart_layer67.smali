.class public Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer67;
.super Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pagePart_layer67"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18338
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 18342
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    .line 18343
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_page$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    .line 18344
    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x721193bc

    .line 18348
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 18349
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 18350
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 18351
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Page;->documents:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
