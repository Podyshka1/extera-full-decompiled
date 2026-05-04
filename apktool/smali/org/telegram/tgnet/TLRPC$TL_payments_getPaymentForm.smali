.class public Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_getPaymentForm"
.end annotation


# instance fields
.field public flags:I

.field public invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field public theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61219
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61219
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PaymentForm;
    .locals 0

    .line 61227
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$PaymentForm;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PaymentForm;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x37148dbb

    .line 61231
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61232
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61233
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 61234
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 61235
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_0
    return-void
.end method
