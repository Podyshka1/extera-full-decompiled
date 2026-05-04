.class public Lcom/exteragram/messenger/export/api/ExportRequests$TL_contacts_getSaved;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 243
    new-instance p2, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p2, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    .line 244
    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7d0e1c61

    .line 250
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
