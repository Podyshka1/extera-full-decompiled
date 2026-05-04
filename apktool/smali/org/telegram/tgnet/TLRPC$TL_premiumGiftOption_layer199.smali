.class public Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption_layer199;
.super Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_premiumGiftOption_layer199"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1214
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 1218
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    .line 1219
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    .line 1220
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    .line 1221
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    .line 1222
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    .line 1223
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1224
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->store_product:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x74c34319

    .line 1229
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1230
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1231
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->months:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 1232
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1233
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 1234
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->bot_url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 1235
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;->store_product:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
