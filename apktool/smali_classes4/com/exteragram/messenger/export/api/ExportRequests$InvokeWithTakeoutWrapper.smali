.class public Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public query:Lorg/telegram/tgnet/TLObject;

.field public takeout_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 2

    sparse-switch p2, :sswitch_data_0

    .line 206
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot deserialize response with constructor: 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :sswitch_0
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    move-result-object p1

    return-object p1

    .line 201
    :sswitch_1
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$authorizations;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$authorizations;

    move-result-object p1

    return-object p1

    .line 195
    :sswitch_2
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_users_userFull;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_users_userFull;

    move-result-object p1

    return-object p1

    .line 162
    :sswitch_3
    iget-object p2, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;->query:Lorg/telegram/tgnet/TLObject;

    instance-of v0, p2, Lcom/exteragram/messenger/export/api/ExportRequests$getSplitRanges;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    new-instance p2, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p2, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p2, Lcom/exteragram/messenger/export/api/ExportRequests$TL_contacts_getSaved;

    if-eqz v0, :cond_1

    .line 165
    new-instance p2, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p2, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    goto :goto_0

    .line 166
    :cond_1
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;

    if-eqz p2, :cond_2

    .line 167
    new-instance p2, Lorg/telegram/tgnet/Vector;

    new-instance v0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p2, v0}, Lorg/telegram/tgnet/Vector;-><init>(Lorg/telegram/tgnet/Vector$TLDeserializer;)V

    goto :goto_0

    :cond_2
    move-object p2, v1

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;->query:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    :cond_3
    if-nez p2, :cond_5

    .line 173
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez p1, :cond_4

    return-object v1

    .line 174
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unable to deserialize vector with query: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;->query:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_5
    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/Vector;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p2

    .line 183
    :sswitch_4
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    move-result-object p1

    return-object p1

    .line 189
    :sswitch_5
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$upload_File;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$upload_File;

    move-result-object p1

    return-object p1

    .line 203
    :sswitch_6
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$webAuthorizations;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$webAuthorizations;

    move-result-object p1

    return-object p1

    .line 199
    :sswitch_7
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;

    move-result-object p1

    return-object p1

    .line 187
    :sswitch_8
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Chats;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Chats;

    move-result-object p1

    return-object p1

    .line 197
    :sswitch_9
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1

    .line 191
    :sswitch_a
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$photos_Photos;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$photos_Photos;

    move-result-object p1

    return-object p1

    .line 185
    :sswitch_b
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x738e7179 -> :sswitch_b
        -0x7235955b -> :sswitch_a
        -0x668d8a4b -> :sswitch_9
        -0x6327eebc -> :sswitch_8
        -0x4ad36c63 -> :sswitch_7
        -0x438668c9 -> :sswitch_9
        -0x388945b2 -> :sswitch_b
        -0x21d9910b -> :sswitch_7
        -0x12a93604 -> :sswitch_6
        0x96a18d5 -> :sswitch_5
        0x15051f54 -> :sswitch_a
        0x15ba6c40 -> :sswitch_4
        0x1cb5c415 -> :sswitch_3
        0x3b6d152e -> :sswitch_2
        0x4bff8ea0 -> :sswitch_1
        0x5f206716 -> :sswitch_b
        0x63c3dd0a -> :sswitch_0
        0x64ff9fd5 -> :sswitch_8
        0x70b772a8 -> :sswitch_7
        0x71e094f3 -> :sswitch_4
    .end sparse-switch
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x535602d2

    .line 212
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 214
    iget-wide v0, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;->takeout_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 216
    iget-object v0, p0, Lcom/exteragram/messenger/export/api/ExportRequests$InvokeWithTakeoutWrapper;->query:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lcom/exteragram/messenger/export/api/ExportRequests$TL_contacts_getSaved;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/exteragram/messenger/export/api/ExportRequests$getSplitRanges;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCustomEmojiDocuments;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 222
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLObject;->disableFree:Z

    .line 225
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
