.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentFormStars;
.super Lorg/telegram/tgnet/TLRPC$PaymentForm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_paymentFormStars"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3629
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PaymentForm;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 3633
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    .line 3634
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    .line 3635
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    .line 3636
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    .line 3637
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->description:Ljava/lang/String;

    .line 3638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 3639
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WebDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    .line 3641
    :cond_0
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 3642
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x7bf6b15c

    .line 3646
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3647
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

    .line 3648
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->password_missing:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    .line 3649
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3650
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->form_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3651
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->bot_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 3652
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3653
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->description:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3654
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 3655
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3657
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3658
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PaymentForm;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
