.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getMessagesViews"
.end annotation


# instance fields
.field public id:Ljava/util/ArrayList;

.field public increment:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57678
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57686
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageViews;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_messageViews;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x5784d3e1

    .line 57690
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57691
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 57692
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->id:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 57693
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessagesViews;->increment:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    return-void
.end method
