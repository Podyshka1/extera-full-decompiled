.class public Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_getStarsRevenueWithdrawalUrl"
.end annotation


# instance fields
.field public amount:J

.field public flags:I

.field public password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public ton:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueWithdrawalUrl;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2433dc92

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->ton:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->amount:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_getStarsRevenueWithdrawalUrl;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
