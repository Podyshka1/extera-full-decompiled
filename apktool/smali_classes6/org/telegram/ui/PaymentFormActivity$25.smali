.class Lorg/telegram/ui/PaymentFormActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
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

    .line 3484
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentPasswordUpdated(Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 1

    .line 3503
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputcurrentPassword(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    return-void
.end method

.method public synthetic didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$didSelectNewAddress(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V

    return-void
.end method

.method public didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z
    .locals 7

    .line 3487
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3488
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z

    .line 3490
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetisWebView(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3491
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 3493
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onFragmentDestroyed()V
    .locals 2

    .line 3498
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$25;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->-$$Nest$fputpasswordFragment(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity;)V

    return-void
.end method
