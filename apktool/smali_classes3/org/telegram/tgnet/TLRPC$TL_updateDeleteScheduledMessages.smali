.class public Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateDeleteScheduledMessages"
.end annotation


# instance fields
.field public flags:I

.field public messages:Ljava/util/ArrayList;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public sent_messages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34442
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    .line 34447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->messages:Ljava/util/ArrayList;

    .line 34448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->sent_messages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 34451
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->flags:I

    .line 34452
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34453
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->messages:Ljava/util/ArrayList;

    .line 34454
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34455
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeInt(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->sent_messages:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0xd58e67d

    .line 34460
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34461
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 34462
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 34463
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 34464
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34465
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteScheduledMessages;->sent_messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
