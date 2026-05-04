.class public Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;
.super Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_emojiGroups"
.end annotation


# instance fields
.field public groups:Ljava/util/ArrayList;

.field public hash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40908
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$messages_EmojiGroups;-><init>()V

    .line 40912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->groups:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 40915
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->hash:I

    .line 40916
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->groups:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x77e046b5

    .line 40920
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40921
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->hash:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 40922
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_emojiGroups;->groups:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
