.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;
.super Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaPaidMedia_layer186"
.end annotation


# instance fields
.field public extended_media:Ljava/util/ArrayList;

.field public stars_amount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31280
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;-><init>()V

    .line 31284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;->extended_media:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 31287
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;->stars_amount:J

    .line 31288
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;->extended_media:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5599e03d

    .line 31292
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31293
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;->stars_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 31294
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia_layer186;->extended_media:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
