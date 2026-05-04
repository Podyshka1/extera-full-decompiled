.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getChannels"
.end annotation


# instance fields
.field public id:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60430
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 60433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60436
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Chats;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Chats;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0xa7f6bbb

    .line 60440
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60441
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getChannels;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
