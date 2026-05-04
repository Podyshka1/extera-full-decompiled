.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channels_getMessages"
.end annotation


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public id:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60371
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 60375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60378
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x6c284cb9

    .line 60382
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 60383
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 60384
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
