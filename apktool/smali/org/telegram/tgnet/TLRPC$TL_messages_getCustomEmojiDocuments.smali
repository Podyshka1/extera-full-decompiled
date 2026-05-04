.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getCustomEmojiDocuments"
.end annotation


# instance fields
.field public document_id:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;->document_id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2654f0ac

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;->document_id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
