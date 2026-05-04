.class public Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_deleteMessages"
.end annotation


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public id:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60308
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 60312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;
    .locals 2

    const v0, -0x7b3e02b2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60315
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;-><init>()V

    .line 60316
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;

    return-object p0
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60320
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedMessages;

    move-result-object p1

    return-object p1
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 60324
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputChannel;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 60325
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x7b3e02b2

    .line 60329
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60330
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_deleteMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
