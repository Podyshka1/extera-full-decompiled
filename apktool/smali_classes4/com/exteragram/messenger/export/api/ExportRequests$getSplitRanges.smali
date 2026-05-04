.class public Lcom/exteragram/messenger/export/api/ExportRequests$getSplitRanges;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 109
    new-instance p2, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p2, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    .line 110
    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x1cff7e08

    .line 116
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
