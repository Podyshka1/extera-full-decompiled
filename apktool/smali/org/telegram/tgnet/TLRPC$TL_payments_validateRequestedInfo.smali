.class public Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_validateRequestedInfo"
.end annotation


# instance fields
.field public flags:I

.field public info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

.field public invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

.field public save:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61257
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61266
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x49370ed5

    .line 61270
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61271
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->flags:I

    .line 61272
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61273
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->invoice:Lorg/telegram/tgnet/TLRPC$InputInvoice;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 61274
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
