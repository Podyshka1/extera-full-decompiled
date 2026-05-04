.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
.super Lorg/telegram/tgnet/TLRPC$PaymentForm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_paymentForm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3560
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PaymentForm;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 3564
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3565
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v2, v3

    .line 3566
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    .line 3567
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    .line 3568
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    .line 3569
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    .line 3570
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->description:Ljava/lang/String;

    .line 3571
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 3572
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3574
    :cond_2
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 3575
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->provider_id:J

    .line 3576
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->url:Ljava/lang/String;

    .line 3577
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 3578
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    .line 3580
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3581
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 3583
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 3584
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    .line 3586
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 3587
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 3589
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 3590
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    .line 3592
    :cond_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5ffa78af

    .line 3596
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3597
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->can_save_credentials:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    .line 3598
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    .line 3599
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3600
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3601
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3602
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3603
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3604
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 3605
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3607
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3608
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->provider_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3609
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3610
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 3611
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_provider:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3613
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 3614
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3616
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 3617
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->additional_methods:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3619
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 3620
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3622
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 3623
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->saved_credentials:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 3625
    :cond_7
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
