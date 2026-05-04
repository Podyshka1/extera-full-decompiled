.class public Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_peerDialogs"
.end annotation


# instance fields
.field public chats:Ljava/util/ArrayList;

.field public dialogs:Ljava/util/ArrayList;

.field public messages:Ljava/util/ArrayList;

.field public state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54780
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 54783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    .line 54784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    .line 54785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    .line 54786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;
    .locals 2

    const v0, 0x3371c354

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 54790
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;-><init>()V

    .line 54791
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 54795
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    .line 54796
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    .line 54797
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    .line 54798
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    .line 54799
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x3371c354

    .line 54803
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 54804
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54805
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54806
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54807
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 54808
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
