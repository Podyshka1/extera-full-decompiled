.class Lorg/telegram/ui/PaymentFormActivity$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0

    .line 2269
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic currentPasswordUpdated(Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$currentPasswordUpdated(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    return-void
.end method

.method public didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V
    .locals 1

    .line 2272
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputvalidateRequest(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V

    .line 2273
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetvalidateRequest(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-static {p1, v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$msetAddressFields(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;)V

    return-void
.end method

.method public synthetic didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$didSelectNewCard(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    move-result p1

    return p1
.end method

.method public synthetic onFragmentDestroyed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$onFragmentDestroyed(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    return-void
.end method
