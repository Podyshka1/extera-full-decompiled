.class public Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;
.super Lorg/telegram/tgnet/TLRPC$auth_SentCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_sentCodePaymentRequired"
.end annotation


# instance fields
.field public amount:J

.field public currency:Ljava/lang/String;

.field public phone_code_hash:Ljava/lang/String;

.field public store_product:Ljava/lang/String;

.field public support_email_address:Ljava/lang/String;

.field public support_email_subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8562
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$auth_SentCode;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 8573
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->store_product:Ljava/lang/String;

    .line 8574
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->phone_code_hash:Ljava/lang/String;

    .line 8575
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->support_email_address:Ljava/lang/String;

    .line 8576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->support_email_subject:Ljava/lang/String;

    .line 8577
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->currency:Ljava/lang/String;

    .line 8578
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->amount:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1f6aa5c4

    .line 8582
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 8583
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->store_product:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8584
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->phone_code_hash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8585
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->support_email_address:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8586
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->support_email_subject:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8587
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 8588
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodePaymentRequired;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
