.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessages;
.super Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sponsoredMessages"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10174
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 10178
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10180
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->posts_between:I

    .line 10182
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10183
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->start_delay:I

    .line 10185
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 10186
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->between_delay:I

    .line 10188
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessages$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_sponsoredMessages$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->messages:Ljava/util/ArrayList;

    .line 10189
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->chats:Ljava/util/ArrayList;

    .line 10190
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x259a93

    .line 10194
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10195
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10196
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10197
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->posts_between:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10199
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10200
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->start_delay:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10202
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 10203
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->between_delay:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10205
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->messages:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 10206
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 10207
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SponsoredMessages;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
