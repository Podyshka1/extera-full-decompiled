.class public Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithMessagesRange;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public query:Lorg/telegram/tgnet/TLObject;

.field public range:Lorg/telegram/tgnet/TLRPC$TL_messageRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    const v0, 0x15ba6c40

    if-eq p2, v0, :cond_2

    const v0, 0x4423e6c5

    if-eq p2, v0, :cond_1

    const v0, 0x71e094f3

    if-ne p2, v0, :cond_0

    .line 130
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogsSlice;-><init>()V

    goto :goto_0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown constructor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_1
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;-><init>()V

    goto :goto_0

    .line 131
    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    .line 134
    :goto_0
    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p2
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x365275f2

    .line 140
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 142
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithMessagesRange;->range:Lorg/telegram/tgnet/TLRPC$TL_messageRange;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_messageRange;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 143
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithMessagesRange;->query:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
