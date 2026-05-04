.class public Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;
.super Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_replyInlineMarkup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10392
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 10396
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x48a30254    # 333842.62f

    .line 10400
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 10401
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
