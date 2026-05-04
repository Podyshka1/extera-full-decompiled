.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;
.super Lorg/telegram/tgnet/TLRPC$PaymentReceipt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_paymentReceipt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 825
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 829
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    .line 830
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->date:I

    .line 831
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    .line 832
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->provider_id:J

    .line 833
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->title:Ljava/lang/String;

    .line 834
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->description:Ljava/lang/String;

    .line 835
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 836
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 838
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 839
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 840
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 842
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 843
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 845
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 846
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->tip_amount:J

    .line 848
    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->currency:Ljava/lang/String;

    .line 849
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->total_amount:J

    .line 850
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->credentials_title:Ljava/lang/String;

    .line 851
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x70c4fe03

    .line 855
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 856
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 857
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 858
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 859
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->provider_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 860
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 862
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 866
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 869
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 872
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 873
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->tip_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 875
    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->currency:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 876
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->total_amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 877
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->credentials_title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentReceipt;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
