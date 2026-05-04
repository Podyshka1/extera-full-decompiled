.class interface abstract Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PaymentFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PaymentFormActivityDelegate"
.end annotation


# virtual methods
.method public abstract currentPasswordUpdated(Lorg/telegram/tgnet/tl/TL_account$Password;)V
.end method

.method public abstract didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V
.end method

.method public abstract didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z
.end method

.method public abstract onFragmentDestroyed()V
.end method
