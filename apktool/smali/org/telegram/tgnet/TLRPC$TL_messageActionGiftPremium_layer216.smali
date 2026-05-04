.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium_layer216;
.super Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionGiftPremium_layer216"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26863
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 26867
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    .line 26868
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    .line 26869
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    .line 26870
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->months:I

    mul-int/lit8 v0, v0, 0x1e

    .line 26871
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->days:I

    .line 26872
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 26873
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoCurrency:Ljava/lang/String;

    .line 26874
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoAmount:J

    .line 26876
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 26877
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x6c6274fa

    .line 26882
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26883
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26884
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 26885
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 26886
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->days:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 26887
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 26888
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoCurrency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 26889
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->cryptoAmount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 26891
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 26892
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGiftPremium;->message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
