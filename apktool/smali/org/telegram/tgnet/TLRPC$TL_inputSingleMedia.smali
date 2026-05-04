.class public Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputSingleMedia"
.end annotation


# instance fields
.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public message:Ljava/lang/String;

.field public random_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38824
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 38831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 38839
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    .line 38840
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputMedia;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 38841
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->random_id:J

    .line 38842
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->message:Ljava/lang/String;

    .line 38843
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 38844
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->entities:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x1cc6e91f

    .line 38849
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38850
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 38851
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 38852
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 38853
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 38854
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 38855
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
