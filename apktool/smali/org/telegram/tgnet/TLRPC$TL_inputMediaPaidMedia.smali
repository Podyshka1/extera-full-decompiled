.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaPaidMedia"
.end annotation


# instance fields
.field public extended_media:Ljava/util/ArrayList;

.field public flags:I

.field public payload:Ljava/lang/String;

.field public stars_amount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31235
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    .line 31240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 31244
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->flags:I

    .line 31245
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->stars_amount:J

    .line 31246
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    .line 31247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31248
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->payload:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x3befcc7a

    .line 31253
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31254
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31255
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->stars_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 31256
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 31257
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31258
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->payload:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
