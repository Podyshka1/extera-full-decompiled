.class public Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;
.super Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputStorePaymentPremiumSubscription"
.end annotation


# instance fields
.field public flags:I

.field public restore:Z

.field public upgrade:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61442
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputStorePaymentPurpose;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 61450
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 61451
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->restore:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v0, v1

    .line 61452
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x598ae19a

    .line 61456
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 61457
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->restore:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->flags:I

    .line 61458
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->upgrade:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumSubscription;->flags:I

    .line 61459
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
